## Range Splitter

Splits a range into multiple ranges.

## Usage

Splits are made as evenly as possible. The larger ranges are placed at the beginning of the array.

```ruby
require 'range_splitter'

(1..10).split
#=> [1..5, 6..10]

(1..9).split
#=> [1..5, 6..9]

(1..10).split(:into => 3)
#=> [1..4, 5..7, 8..10]

(1..9).split(:into => 3)
#=> [1..3, 4..6, 7..9]

(-5..5).split(:into => 5)
#=> [-5..-3, -2..-1, 0..1, 2..3, 4..5]

(1..3).split(:into => 100)
#=> [1..1, 2..2, 3..3]

(1..1).split
#=> [1..1]

(1..3).split(:into => 1)
#=> [1..3]

(1..3).split(:into => 0)
# ArgumentError: Cannot split 1..3 into 0 ranges.

(1..3).split(:into => -3)
# ArgumentError: Cannot split 1..3 into -3 ranges.
```

## Contribution

Feel free to contribute. No commit is too small.

You should follow me: [@cpatuzzo](https://twitter.com/cpatuzzo)
