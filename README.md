---
tags: logic, cs, monkey patching, todo, custom methods
languages: ruby
resources: 1
---

# My Transpose

## Objective

You will be building out Ruby's `#transpose` method. You'll be monkey patching the Array class to do this.

## About Transpose

Ruby's `transpose` method takes no arguments. It assumes that the array it is called on is an array of arrays and transposes the rows and columns.

```ruby
array_of_arrays = [[1,2], [3,4], [5,6]]
array_of_arrays.my_transpose
#=> [[1, 3, 5], [2, 4, 6]]
```

## Notes

You may not call on Ruby's `#transpose` method to accomplish this task.

## Resources

* [Ruby's Transpose Method](http://ruby-doc.org/core-2.2.0/Array.html#method-i-transpose)
