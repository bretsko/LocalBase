import Quick
import Nimble
@testable import LocalBase


class NumFormatterSpec: QuickSpec {
    override func spec() {
        
        describe("NumFormatter") {
            
            it("can handle integers") {
                
                let format = NumberFormat(numFormat: .none)
                let fmtr = NumFormatter.shared(format)
                
                let str = fmtr.str(from: 5)
                expect(str).to(equal("5"))
                
                let num = fmtr.number(from: str)
                expect(num).to(equal(5))
            }
            
            it("can handle Doubles") {
                
                let format = NumberFormat(numFormat:.none)
                let fmtr = NumFormatter.shared(format)
                fmtr.minFractionDigits = 1
                
                let str = fmtr.str(from: 5.0)
                expect(str).to(equal("5.0"))
                
                let num = fmtr.number(from: str)
                expect(num).to(equal(5.0))
            }
            
            
            it("can handle spellOut format") {
                
                let format = NumberFormat(numFormat:.spellOut,
                                          .english)
                let fmtr = NumFormatter.shared(format)
                
                let str1 = "five point five"
                let num = fmtr.double(from: str1)!
                expect(num).to(equal(5.5))
                
                let str2 = fmtr.str(from: num)
                expect(str1).to(equal(str2))
            }
            
            it("can handle Ukrainian language") {
                
                let format = NumberFormat(numFormat:.spellOut,
                                          .ukrainian)
                let fmtr = NumFormatter.shared(format)
                
                let str = fmtr.str(from: 5.0)
                expect(str).to(equal("пʼять"))
                
                let num = fmtr.number(from: str)
                expect(num).to(equal(5.0))
            }
            
            
            it("can handle Russian") {
                
                let fmtr = NumFormatter.shared(numFormat: .spellOut,
                                               LangLID.russian)
                
                let str = fmtr.str(from: 5.5)
                expect(str).to(equal("пять целых пять десятых"))
            }
        }
    }
}





