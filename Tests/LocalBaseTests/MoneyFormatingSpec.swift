import Quick
import Nimble
@testable import LocalBase


class MoneyFormatingSpec: QuickSpec {
    
    override func spec() {
        
        describe("NumFormatter") {
            //https://themathpage.com/Arith/decimals.htm
            
            //TODO:
            it("can provide currency name in diff languages") {
                //
                // let str1 = NumberFormatter.currencyWords(from: 4, currencyCode: "USD", currencySymbol: "US$", .russianUkraine)
                // expect(str1).to(equal("украинской гривны"))
                //
                // let str2 = NumberFormatter.currencyWords(from: 6, currencyCode: "USD", currencySymbol: "US$", .russianUkraine)
                // expect(str2).to(equal("украинских гривен")) // украинской гривны
            }
            
            //            
            //            it("can provide currency name in diff languages") {
            //                
            //                let str1 = NumberFormatter.currencyName(currencyCode: "USD", currencySymbol: "US$", .singular, .englishUnitedStates)
            //                expect(str1).to(equal("US Dollar"))
            //                
            //                let str2 = NumberFormatter.currencyName(currencyCode: "USD", currencySymbol: "US$", .plural, .englishUnitedStates)
            //                expect(str2).to(equal("US Dollars"))
            //                
            //                
            //                let str3 = NumberFormatter.currencyName(currencyCode: "USD", currencySymbol: "US$", .singular, .russianUkraine)
            //                expect(str3).to(equal("доллар США"))
            //                
            //                
            //                let str4 = NumberFormatter.currencyName(currencyCode: "USD", currencySymbol: "US$", .plural, .russianUkraine)
            //                expect(str4).to(equal("долларов США")) //доллар СШАs
            //            }
            //            
            //            it("can ") {
            
            //                var money = Money(1.0, .USD, format)
            //
            //                money.amount = 1
            //                money.setLocale()
            //                expect(money.str).to(equal("один доллар США"))
            //
            //                money.setLocale(.ukrainianUkraine)
            //                expect(money.str).to(equal("один долар США"))
            //
            //                money.amount = 2
            //                money.setLocale(.russianUkraine)
            //                //TODO: двe
            //                // make (украинской) optional or remove
            //                expect(money.str).to(equal("два доллара США")) //два украинской гривны
            //}
        }
    }
}





