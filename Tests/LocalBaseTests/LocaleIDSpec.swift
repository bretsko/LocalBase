import Quick
import Nimble
@testable import LocalBase


class LIDSpec: QuickSpec {
    
    override func spec() {
        
        describe("LID") {
            
            it("can init with any locale identifier") {
                
                var missingIDs = Set<Str>()
                
                // allForms
                //.map { Locale(identifier:$0) }.set
                Locale.availableIDs.forEach { id in
                    if LID(id) == nil {
                        missingIDs.insert(id)
                    }
                }
                expect(missingIDs.len).to(equal(0))
                
                if missingIDs.hasSth {
                    print("------ missing locale ids -------")
                    print(missingIDs.array.joined)
                }
            }
            
            //            it("can convert to Locale and back") {
            //
            //                //let fmtr = NumberFormatter()
            //                var missingIDs = Set<Str>()
            //                var badConversions = Set<LangLID>()
            //
            //                LangLID.allForms.forEach { langLID in
            //
            //                    let locale = Locale(identifier: langLID.s)
            //                    //fmtr.locale = locale
            //
            //                    // try convert back
            //                    if let localeLID = LID(rawValue: locale.identifier) {
            //
            //                        // ok
            //                        //expect(localeLID.s).to(equal(langLID.s))
            //
            //                        if localeLID.s != langLID.s {
            //                            badConversions.insert(langLID)
            //
            //                            //if let a = locale.languageCode {
            //                            //    print("languageCode: " + a)
            //                            //}
            //                            //if let a = locale.variantCode {
            //                            //    print("variantCode: " + a)
            //                            //}
            //                            //if let a = locale.regionCode {
            //                            //    print("regionCode: " + a)
            //                            //}
            //                            //if let a = locale.scriptCode {
            //                            //    print("scriptCode: " + a)
            //                            //}
            //                        }
            //
            //                    } else {
            //                        //failed
            //                        missingIDs.insert(locale.identifier)
            //                    }
            //                }
            //
            //                expect(badConversions.len).to(equal(0))
            //                if badConversions.hasSth {
            //                    print("------ bad conversions -------")
            //                    print(badConversions.strs.joined)
            //                }
            //                // ! when Locale inits with id - it removes Cyrl / Latn / Guru
            //                //ms-Latn mn-Cyrl ky-Cyrl uz-Latn tk-Latn pa-Guru tg-Cyrl ha-Latn az-Latn shi-Latn bs-Latn bm-Latn tzm-Latn sr-Cyrl kk-Cyrl
            //
            //                expect(missingIDs.len).to(equal(0))
            //                if missingIDs.hasSth {
            //                    print("------ missing locale ids -------")
            //                    print(missingIDs.array.joined)
            //                }
            //            }
            
            //            it("can provide lang name for 300 locales") {
            //
            //                var missingTransls = 0
            //                LangLID.allForms.forEach { langLID in
            //
            //                    // count number of missing transls for each locale
            //                    let r = LID.allForms.count {
            //                        $0.langName(translatedInto: langLID) == nil
            //                    }
            //                    missingTransls += r
            //                }
            //                expect(missingTransls).to(equal(0))
            //            }
            
            //            it("can provide country, lang and currency name in 300 langs") {
            //
            //                LID.allForms.forEach { localeID in
            //                    LangLID.allForms.forEach { langLID in
            //
            ////                        let countryName = localeID.countryName(translatedInto: langLID)
            ////                        let currencyName = localeID.currencyName(translatedInto: langLID)
            //                        let langName = localeID.langName(translatedInto: langLID)
            //                    }
            //                }
            //            }
            //
            
            
            it("has no duplicates in sub enums") {
                
                let strs1 = CountryLID.allForms.strs.set
                let strs2 = LangLID.allForms.strs.set
                let strs3 = RegionLID.allForms.strs.set
                
                let total1 = strs1.union(strs2).union(strs3).len
                let total2 = strs1.len + strs2.len + strs3.len
                expect(total1).to(equal(total2))
                
                let strs = LID.allIdentifiers
                expect(strs.len).to(equal(total2 + 2))
            }
            
            //            it("count hwo many translations per case are present, approx") {
            //
            //                // let langs = LangLID.allForms.filter {
            //                // //allLocales.forEach { locale2 in
            //                // $0.countryName(in: LangLID.russian.localeID) != nil
            //                // }
            //                // print(langs.map{$0.s}.joined(separator: " "))
            //            }
            //
            //            it("can  ") {
            //                //arabic.langName // CountryLID.ukrainian.localizedString(forRegionCode: )!
            //                //print("------------------")
            //                //print(r)
            //            }
            
            // it("can provide transl in any locale ") {
            //
            //                let allLocales = LangLID.allForms
            //                allLocales.forEach { locale1 in
            //                    allLocales.forEach { locale2 in
            //
            //                        let a = locale1.countryName(in: locale2.localeID)
            //                        //let b = locale1.currencyName(in: locale2.localeID)
            //                        //let c = locale1.langName(in: locale2)
            //                        if  a == nil { //a != nil && b != nil &&
            //                            return
            //                        }
            //                        //print("------------------")
            //                        print(a) // == nil ? "Empty country transl of \(locale1.s) into \(locale2.s)" : "")
            //                        // print(b == nil ? "Empty currency" : "")
            //                        //print(c == nil ? "Empty lang transl of \(locale1.s) into \(locale2.s)" : "")
            //                    }
            //                }
            //            }
            
            // it("as") {
            //            let allLocales = CountryLID.allForms
            //
            //            //let hasAllTranslations
            //            //let hasSomeTranslations
            //
            //            allLocales.forEach { locale1 in
            //
            //                if allLocales.contains (where: { locale2 in
            //
            //                    let a = locale1.countryName(in: locale2.localeID)
            //                    let b = locale1.currencyName(in: locale2.localeID)
            //                    let c = locale1.languageCode//langName(in: locale2)
            //                    if a != nil && b != nil && c != nil {
            //                        return
            //                    }
            //
            //                }) {
            //                    print("------------------")
            //                    print(locale1.s)
            //                    print(locale2.s)
            //                    print(a == nil ? "Empty country" : "")
            //                    print(b == nil ? "Empty currency" : "")
            //                    print(c == nil ? "Empty langCode" : "")
            //                }
            //            }
            
            //            it("has only unique String values ") {
            //
            //                let array = LangLID.localeIDs.array + CountryLID.localeIDs.array + RegionLID.localeIDs.array
            //                expect(array.len).to(equal(array.set.len))
            //            }
        }
        
        
        describe("RegionLID") {
            
            it("can provide language, country and currency name in 300 langs") {
                
                //                let langs = LangLID.allForms.filter {
                //                    //allLocales.forEach { locale2 in
                //                    $0.countryName(in: LangLID.russian.localeID) != nil
                //                }
                //                print(langs.map{$0.s}.joined)
                //                expect(langs.len).to(equal(0))
            }
        }
        
        
        // it("can init with all ids") {
        //
        //                let someIDs = ["en_US", "vi_VN", "en_CA", "pt_BR", "it_IT", "hu_HU", "ko_KR", "cs_CZ", "nb_NO", "de_DE", "en_GB", "sv_SE", "ars", "en_AU", "ar", "en_SG", "el_GR", "es_MX", "pt_PT", "en_IN", "fr_FR", "es_ES", "nl_NL", "tr_TR", "hi", "fi_FI", "pl_PL", "ru_RU", "da_DK"]
        //
        //                let localeIDs = someIDs.map{_ in LID.init}
        //                print(localeIDs)
        //                //expect().to(equal(""))
        //            }
        //
        //            it("can make Locale ") {
        //
        //                let locales = LID.allCases.map{$0.locale}
        //                print(locales)
        //                //expect().to(equal(""))
        //            }
    }
}


