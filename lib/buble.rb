require 'buble/version'
require 'buble/source'

require 'execjs'

module Buble
  class << self
    def source_version
      Source::VERSION
    end

    def context
      @context ||= ExecJS.compile("#{Source.code}\nfunction transform_code(src) { return buble.transform(src).code; }")
    end

    def transform(code)
      context.call('transform_code', code)
    end
  end
end

=begin
    var transform = this.transform;


    readStdin().then(string => {
      console.log(transform(string).code);
    }).catch(e => {
      console.log(e.stack);
      process.exit(1);
    });
=end
