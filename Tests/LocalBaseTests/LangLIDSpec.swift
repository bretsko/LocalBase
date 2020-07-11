import Quick
import Nimble
@testable import LocalBase


class LangLIDSpec: QuickSpec {
    override func spec() {
        
        describe("LangLID") {
            // see https://unicode-org.github.io/cldr-staging/charts/37/summary/root.html
            
            it("can provide lang name in 300 langs") {
                
                var missingTransls = 0
                LangLID.allForms.forEach { langLID in
                    
                    // count number of missing transls for each lang
                    let r = LangLID.allForms.count {
                        $0.langName(translatedInto: langLID) == nil
                    }
                    missingTransls += r
                }
                expect(missingTransls).to(equal(0))
            }
            
            it("can provide language name in 300 langs") {
                
                let lid = LangLID.ukrainian.lid
                
                //MARK: - totals
                
                let totalLangLIDs = LangLID.allForms.len
                expect(totalLangLIDs).to(equal(289))
                
                //MARK: - LangLID
                
                //translatable
                let langLIDs: [LangLID] = LangLID.allForms.map {
                    lid.langName(translatedInto: $0) != nil ? $0 : nil
                }.compactMap{$0}
                expect(langLIDs.len).to(equal(totalLangLIDs))
                
                let langLIDTransls: [Str] = LangLID.allForms.map {
                    lid.langName(translatedInto: $0)
                }.compactMap{$0}
                expect(langLIDTransls.len).to(equal(totalLangLIDs))
                expect(langLIDTransls.set.len).to(equal(159))
                //print(langLIDTransls.joined)
                
                
                //MARK: - CountryLID
                
                //TODO: check why CountryLID covers less unique cases
                
                //translatable
                let countryLIDs: [LangLID] = LangLID.allForms.map {
                    lid.langName(translatedInto: $0) != nil ? $0 : nil
                }.compactMap{$0}
                expect(countryLIDs.len).to(equal(LangLID.allForms.len))
                
                let countryLIDTransls: [Str] = LangLID.allForms.map {
                    lid.langName(translatedInto: $0)
                }.compactMap{$0}
                //expect(countryLIDTransls.len).to(equal(totalCountryLIDs))
                expect(countryLIDTransls.set.len).to(equal(159))
                
                
                
                //MARK: - compare transl result sets
                
                //TODO: try fix
                let diffLangLIDTransls = langLIDTransls.set.subtracting(countryLIDTransls.set)
                expect(diffLangLIDTransls.len).to(equal(0)) // yi, ccp
                print(diffLangLIDTransls.array.joined)
                
                
                let diffCountryLIDTransls = countryLIDTransls.set.subtracting(langLIDTransls.set)
                expect(diffCountryLIDTransls.len).to(equal(0))
                print(diffCountryLIDTransls.array.joined) // kn
                
                
                //MARK: - compare LIDs
                
                let diffLangLIDs = langLIDs.lidSet.subtracting(countryLIDs.lidSet)
                expect(diffLangLIDs.len).to(equal(0))
                
                
                let diffCountryLIDs = countryLIDs.lidSet.subtracting(langLIDs.lidSet)
                expect(diffCountryLIDs.len).to(equal(0))
            }
        }
    }
}


