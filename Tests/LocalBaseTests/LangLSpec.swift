import Quick
import Nimble
@testable import LocalBase


class LangLSpec: QuickSpec {
    override func spec() {
        
        describe("LangL") {
            // see https://unicode-org.github.io/cldr-staging/charts/37/summary/root.html
            
            it("can provide country, lang and currency name in 300 langs") {
                
                LangLID.allForms.forEach { langLID1 in
                    LangLID.allForms.forEach { langLID2 in
                        
                        let langName = langLID1.langName(translatedInto: langLID2)
                    }
                }
            }
            
            //TODO: use LangWord
        }
    }
}


