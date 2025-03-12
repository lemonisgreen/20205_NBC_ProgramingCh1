class Calculator {
    // Todo : 내부 구현하기
    
    func add(_ a: Int, _ b: Int) -> Int {
        return (a + b)
    }
    
    func subtraction(_ a: Int, _ b: Int) -> Int {
        return(a - b)
    }
    
    func multiple(_ a: Int, _ b: Int) -> Int {
        return(a * b)
    }
    
    func divide(_ a: Int, _ b: Int) -> Int {
        return(a / b)
    }
}

let calculator = Calculator()// 인스턴스 생성하여 변수에 할당

calculator.add(3, 4)
calculator.divide(2, 5)
calculator.multiple(5, 6)
calculator.subtraction(6, 7)

// Todo : calculator 변수를 활용하여 사칙연산을 진행
