
let debug = print

precedencegroup CoutPrecedenceGroup {
    lowerThan: AdditionPrecedence
    associativity: right
}

infix operator << : CoutPrecedenceGroup

func << (left: (Any..., String, String) -> (), right: Any) {
    #if(DEBUG)
    print(right)
    #endif
}
