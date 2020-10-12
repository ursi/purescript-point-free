This package provides binary operators which allow for easy and more readable point-free function composition.

# Operator Overview

## `<.` and `.>`

These are nearly identical to `<<<` and `>>>`, the only difference being `.>` is left-associative whereas `>>>` is right-associative.

## `<..` and `..>`

These operators let you compose a function of two arguments with a function of one argument.
```
f <.. g = \x y -> f (g x y)
```
Operators of this type exist up to `<....`.

## `<~.` and `~.>`

Here we encounter a new convention. While the `.` has represented an argument that will be put through both functions, the `~` represents an argument that goes straight to the outer function.
```
f <~. g = \x y -> f x (g y)`
```
All permutations of up to 4 `~`s and `.`s where the symbols don't mix, the `~`s are ahead of the `.`s, with at least one `.`  exist as operators.

## `~$` and `~#`

Using the convention we just introduced above, you might be able to guess what these operators do. They allow you to apply an argument to the second position in a function.
```
f ~$ y = \x -> f x y
```
`~$` is actually the familiar `flip` function in operator form! These operators exist up to `~~~~$`.

# Composability

Not only do these operators allow you to compose functions nicely, they also compose well with each other! Say I wanted to write
```
\x y -> f (g x) (h y)
```
point-free. No single operator can do that for you, but by combining them we can achieve this!
```
f <. g <~. h
```
