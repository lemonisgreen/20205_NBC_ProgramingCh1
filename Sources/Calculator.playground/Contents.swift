class Calculator {
    // Todo : 내부 구현하기
    
    var a: Int
    var b: Int
    
    init(a: Int, b: Int) {
        self.a = a
        self.b = b
    }
    
    func add() {
        print (a + b)
    }
    
    func subtraction() {
        print(a - b)
    }
    
    func multiple() {
        print(a * b)
    }
    
    func divide() {
        print(a / b)
    }

}

let calculator = Calculator(a: 4, b: 5)// 인스턴스 생성하여 변수에 할당

calculator.add()
calculator.divide()
calculator.multiple()
calculator.subtraction()

// Todo : calculator 변수를 활용하여 사칙연산을 진행
