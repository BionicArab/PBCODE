public struct Pairer {
    let numbersList : Array<Int>?
    let target : Int
    
    
    public init(numbersList: Array<Int>?, target: Int){
        self.numbersList = numbersList
        self.target = target
        
        
    }
    
    var resultInt : Array<Int>? {
        guard self.numbersList != nil else {
            return nil
        }
        
        var arrayCopy = self.numbersList
        var newArr = Array<Int>()
        for number1 in arrayCopy! {
            arrayCopy?.remove(at: 0)
            for number2 in arrayCopy!{
                if number1 + number2 == target && number1 != number2 {
                    let number3 = Int("\(number1)\(number2)")
                    newArr.append(number3!)
                }
            }
        }
        return Array(Set(newArr))
        
        
    }
    
    var resultString : Array<String>? {
        guard self.numbersList != nil else {
            return nil
        }
        
        var arrayCopy = self.numbersList
        var newArr = Array<String>()
        for number1 in arrayCopy! {
            arrayCopy?.remove(at: 0)
            for number2 in arrayCopy!{
                if number1 + number2 == target && number1 != number2{
                    newArr.append("\(number1):\(number2)")
                }
            }
        }
        return Array(Set(newArr))
        
    }
    
    var resultDictionary : Array<[Int: Int]>? {
        guard self.numbersList != nil else {
            return nil
        }
        var arrayCopy = self.numbersList
        
        var newArr = [Int:Int]()
        var newArr1 = Array<[Int: Int]>()
        for number1 in arrayCopy! {
            arrayCopy?.remove(at: 0)
            for number2 in arrayCopy!{
                if number1 + number2 == target && number1 != number2 {
                    newArr[0] = number1
                    newArr[1] = number2
                    newArr1.append(newArr)
                }
            }
        }
        return newArr1
        
    }
    
    
    
}

