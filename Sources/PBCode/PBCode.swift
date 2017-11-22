public struct Pairer {
    let numbersList : Array<Int>?
    let target : Int
    
    
    public init(numbersList: Array<Int>?, target: Int){
        self.numbersList = numbersList
        self.target = target
        
        
    }
    
    var result : Array<Int>? {
        if self.numbersList != nil {
            var newArr = Array<Int>()
            for number1 in numbersList! {
                for number2 in numbersList!{
                    if number1 + number2 == target && number1 != number2 {
                        let number3 = Int("\(number1)\(number2)")
                        newArr.append(number3!)
                    }
                }
            }
            return Array(Set(newArr))
        }else{
            return nil
        }
        
    }
    
    
    
}
