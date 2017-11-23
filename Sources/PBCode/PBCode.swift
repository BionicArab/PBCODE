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
    
    
    var resultArray : Array<Array<Int>>? {
        guard self.numbersList != nil else {
            return nil
        }
        var arrayCopy = self.numbersList
        var innerArr = Array<Int>()
        var newArr = Array<Array<Int>>()
        for number1 in arrayCopy! {
            arrayCopy?.remove(at: 0)
            for number2 in arrayCopy!{
                if number1 + number2 == target && number1 != number2{
                    innerArr.append(number1)
                    innerArr.append(number2)
                    newArr.append(innerArr)
                    innerArr = Array<Int>()
                }
            }
        }
        return findDuplicates(array: newArr)
        
    }
    
    
    func findDuplicates(array: Array<Array<Int>>) -> Array<Array<Int>>
    {
        var noDuplicates = Array<Array<Int>>()
        var prevItem = Array<Int>()
        for item in array
        {
            if(!prevItem.contains(item[0]) && !prevItem.contains(item[1]))
            {
                noDuplicates.append(item)
            }
            prevItem = item
        }
        return noDuplicates
    }
    
}

