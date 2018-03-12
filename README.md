# Buble

Ruby wrapper for the Bublé ES2015 compiler

## Usage

```ruby
Buble.transform('class Foo {}')
  => "var Foo = function Foo () {};"
```
