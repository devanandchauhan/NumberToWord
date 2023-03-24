import Foundation

public struct NumberToWord {
    
    private var one = ["","one ","two ","three ","four ","five ","six ","seven ","eight ","nine ","ten ","eleven ","twelve ","thirteen ","fourteen ","fifteen ","sixteen ","seventeen ","eighteen ","nineteen "]

    private var ten = ["","","twenty ","thirty ","forty ","fifty ","sixty ","seventy ","eighty ","ninety "]
    
    private func convertToWord(num: Int) -> String {
        var output: String = ""
        output =  output + numToWords(num: (num/10000000), s: "crore ")
        output = output + numToWords(num: (num/100000) % 100, s: "lakh ")
        output = output + numToWords(num: (num/1000) % 100, s: "thousand ")
        output = output + numToWords(num: (num/100) % 10, s: "hundred ")
        
        if ((num > 100) && (num % 100 > 0)){
            output = output + "and "
        }
        
        output = output + numToWords(num: num % 100, s: "")
        
        if output == "" {
            output = "Zero"
        }
        
        return output
    }

    private func numToWords(num: Int, s: String) -> String {
        var str = ""
        
        if num > 19 {
            str = str + ten[num/10] + one[num % 10]
        } else {
            str = str + one[num]
        }
        
        if((num) != 0){
            str = str + s
        }
        
        return str
    }
    
    public static func convert(_ num: Int) -> String {
        let converedString = NumberToWord().convertToWord(num: num)
        return converedString.sentenceCase.trimmingCharacters(in: .whitespaces)
    }
}

public extension Int {
    /**
     *  Convert to Indian number system
     */
    func toWord() -> String {
        return NumberToWord.convert(self)
    }
}

fileprivate extension String {
    /**
     *  Capitalise first letter of the sentence.
     */
    var sentenceCase: String {
      return prefix(1).uppercased() + self.lowercased().dropFirst()
    }
}
