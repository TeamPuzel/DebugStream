# DebugStream

Debug print, only compiles in `DEBUG` mode.
Useful for printing out api replies etc.

```swift
// works with:
debug << "..."
// or with:
debug << debugInfo

// It's just shorter syntax for
#if(DEBUG)
print(error)
#endif
```

To use, you just add the file to your project or package,
or copy this:

```swift
let debug = print

precedencegroup CoutPrecedenceGroup {
    lowerThan: AdditionPrecedence
    associativity: right
}

infix operator << : CoutPrecedenceGroup

@inline(__always)
func << (left: (Any..., String, String) -> (), right: Any) {
    #if(DEBUG)
    print(right)
    #endif
}
```
