// 두 가지 수를 가지고 어떤 연산을 할 거라는 프로토콜 생성
protocol CalculationProtocol {
    func calculate(_ firstNumber: Float, _ secondNumber: Float) -> Float
}

// 가장 상위 클래스에서 프로토콜 채택. 같은 프로토콜을 채택하고 있는 다른 하위 클래스를 사용할 있는 틀
class Calculator {
    private let calculator: CalculationProtocol
    
    init(calculator: CalculationProtocol) {
        self.calculator = calculator
    }
    
    func calculate(_ firstNumber: Float, _ secondNumber: Float) -> Float {
        calculator.calculate(firstNumber, secondNumber)
    }
}

//더하기 연산 하위 클래스
class AddOperation : CalculationProtocol {
    func calculate(_ firstNumber: Float, _ secondNumber: Float) -> Float {
        firstNumber + secondNumber
    }
}

//빼기 연산 하위 클래스
class SubtractOperation : CalculationProtocol {
    func calculate(_ firstNumber: Float, _ secondNumber: Float) -> Float {
        return firstNumber - secondNumber
    }
}

//곱하기 연산 하위 클래스
class MultipleOperation : CalculationProtocol {
    func calculate(_ firstNumber: Float, _ secondNumber: Float) -> Float {
        return firstNumber * secondNumber
    }
}

//나누기 연산 하위 클래스
class DivideOperation : CalculationProtocol {
    func calculate(_ firstNumber: Float, _ secondNumber: Float) -> Float {
        if secondNumber == 0 {
            print("정의되지 않음")
            return 0
            // return값에 0이 아닌 String값을 넣고 싶은데 어떻게 하는 걸까?
        } else {
            return firstNumber / secondNumber
        }
    }
}

//나머지 연산 하위 클래스
class ModuloOperation : CalculationProtocol {
    func calculate(_ firstNumber: Float, _ secondNumber: Float) -> Float {
        if secondNumber == 0 {
            print("정의되지 않음")
            return 0
        } else {
            return firstNumber.truncatingRemainder(dividingBy: secondNumber)
            // Int가 아닌 데이터 타입에서 나머지를 계산할 땐 간단히 %를 사용하지 못 한다. 따라서 ".truncatingRemainder(dividingBy:)를 사용해야 한다!
        }
    }
}

// 인스턴스 생성하여 변수에 할당
let add = Calculator(calculator: AddOperation())
let subtract = Calculator(calculator: SubtractOperation())
let multiple = Calculator(calculator: MultipleOperation())
let divide = Calculator(calculator: DivideOperation())
let modulo = Calculator(calculator: ModuloOperation())

// Todo : calculator 변수를 활용하여 사칙연산을 진행
add.calculate(5, 7)
subtract.calculate(7, 5)
multiple.calculate(9, 3)
divide.calculate(1, 0)
modulo.calculate(9, 2)
modulo.calculate(8, 0)


//MARK: - 새로 알게된 점

//  ** reserved keyword = a term designated by the programming language that cannot be used as an identifier. 즉, 식별자로 사용할 수 없는 프로그래밍 언어에서 지정한 용어이다. 코드의 충돌과 모호성을 방지하기 위해서 그렇다고 하는데 이걸 우회할 수 있는 게 백틱(`)이다. 참고로 한글로 설정되어 있으면 (₩)가 나오고, 영어로 설정되어 있으면 (`)가 나온다. 옵션과 함께 누르면 한글로 설정되어있어도 백틱을 쓸 수 있다.
