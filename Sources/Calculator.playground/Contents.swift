class Calculator {

    func calculate(operator: String, firstNumber: Float, secoundNumber: Float) -> Float {
        //-> 함수 안에 있을 땐 파라미터(매개변수)
        switch `operator` {
        case "+":
            return firstNumber + secoundNumber
            
        case "-":
            return firstNumber - secoundNumber
            
        case "*":
            return firstNumber * secoundNumber
            
        case "/":
            return firstNumber / secoundNumber
            
        case "%":
            return firstNumber.truncatingRemainder(dividingBy: secoundNumber)
            // Int가 아닌 데이터 타입에서 나머지를 계산할 땐 간단히 %를 사용하지 못 한다. 따라서 ".truncatingRemainder(dividingBy:)를 사용해야 한다!
        default:
            return 0 //"'+', '-', '*', '/' 중 한 가지를 입력해 주세요."
        }
    }
}

let calculator = Calculator() // 인스턴스 생성하여 변수에 할당
let addResult = calculator.calculate(operator: "+", firstNumber: 10, secoundNumber: 20)
//밖에 있으면 전달인자

// Todo : calculator 변수를 활용하여 사칙연산을 진행


//MARK: - 새로 알게된 점

//  ** reserved keyword = a term designated by the programming language that cannot be used as an identifier. 즉, 식별자로 사용할 수 없는 프로그래밍 언어에서 지정한 용어이다. 코드의 충돌과 모호성을 방지하기 위해서 그렇다고 하는데 이걸 우회할 수 있는 게 백틱(`)이다. 참고로 한글로 설정되어 있으면 (₩)가 나오고, 영어로 설정되어 있으면 (`)가 나온다. 옵션과 함께 누르면 한글로 설정되어있어도 백틱을 쓸 수 있다.


//MARK: - 궁금한 점

//init 값을 self로 두었을 때, 클래스를 호출 시 전달인자(아규먼트)에서 값을 지정한다. -> init이 하는 일 아닌가? 왜 또 함?
//init 값을 지정했을 때, 클래스 호출 시 전달인자(아규먼트) 생략 가능 -> 왜,..?

//class에 매개변수를 선언하면 init 이 꼭 존재해야 한다고 했는데 static을 사용하면 init 이 없어도 class 오류가 뜨지 않는다. 왤까? static은 class에 관여받지 않고 독립적으로 존재하는 거라서 그렇다고 하는데 그럼 왜 class 안에다 생성하는 거지? class안에서 쓸 거라?


