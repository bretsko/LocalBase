import Quick
import Nimble
@testable import LocalBase


class CountryLIDSpec: QuickSpec {
    
    override func spec() {
        
        describe("CountryLID") {
            // see https://unicode-org.github.io/cldr-staging/charts/37/summary/root.html
            
            
            it("can provide country, lang and currency name in 300 langs") {
                
                var notCountries = Set<Str>()
                CountryLID.allForms.forEach { countryLID in
                    
                    // try to find country with at least 1 missing transl
                    //let r = LangLID.allForms.count { langLID in
                        
                        //let countryName = countryLID.countryName(translatedInto: langLID)
                    // let currencyName = countryLID.currencyName(translatedInto: langLID)
                    // let langName = countryLID.langName(translatedInto: langLID)
                        
                       // return countryName  == nil //|| langName == nil || currencyName == nil
                    //}
                    if countryLID.regionCode == nil {
                        notCountries.insert(countryLID.s)
                    }
                }
                expect(notCountries).to(equal(Set<Str>()))
            }
            
            //TODO: use CountryWord

//            it("can handle ...") {
//
//                //TODO:
//                // based on this example can make conclusion that Locale works differently for diff cases.
//                // Cyrillic is removed, and Latn - not
//                // need to find other cases which work in this strange way and try impl code properly
//
//                let azerAzerbaijan = Locale(identifier: "az_AZ")
//                let azerCyrillicAzerbaijan = Locale(identifier: "az-Cyrl_AZ")
//                let azerLatinAzerbaijan = Locale(identifier: "az-Latn_AZ")
//
//                expect(azerAzerbaijan).to(equal(azerCyrillicAzerbaijan))
//                expect(azerAzerbaijan).to(equal(azerLatinAzerbaijan))
//
//
//                expect(azerAzerbaijan.id).to(equal(azerCyrillicAzerbaijan.id))
//                expect(azerAzerbaijan.id).to(equal(azerLatinAzerbaijan.id))
//
//            }
            
//            it("can convert to Locale and back") {
//
//                //let fmtr = NumberFormatter()
//                var missingIDs = Set<Str>()
//                var badConversions = Set<CountryLID>()
//
//                CountryLID.allForms.forEach { langLID in
//
//                    let locale = Locale(identifier: langLID.s)
//                    //fmtr.locale = locale
//
//                    // try convert back
//                    if let localeLID = LID(rawValue: locale.identifier) {
//
//                        // ok
//                        expect(localeLID.s).to(equal(langLID.s))
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
//                //tk-Latn sr-Cyrl ms-Latn uz-Latn tzm-Latn bs-Latn az-Latn pa-Guru kk-Cyrl shi-Latn mn-Cyrl tg-Cyrl ha-Latn bm-Latn ky-Cyrl
//
//
//                expect(missingIDs.len).to(equal(0))
//                if missingIDs.hasSth {
//                    print("------ missing locale ids -------")
//                    print(missingIDs.array.joined)
//                }
//            }
            
           
//            it("can provide language name in 300 langs") {
//
//                let lid = CountryLID.ukrainianUkraine.lid
//
//                //MARK: - totals
//
//                let totalLangLIDs = LangLID.allForms.len
//                let totalCountryLIDs = CountryLID.allForms.len
//
//                expect(totalLangLIDs).to(equal(214))
//                expect(totalCountryLIDs).to(equal(507))
//
//                //MARK: - LangLID
//
//                //translatable
//                let langLIDs: [LangLID] = LangLID.allForms.map {
//                    lid.langName(translatedInto: $0.lid) != nil ? $0 : nil
//                }.compactMap{$0}
//                expect(langLIDs.len).to(equal(totalLangLIDs))
//
//                let langLIDTransls: [Str] = LangLID.allForms.map {
//                    lid.langName(translatedInto: $0.lid)
//                }.compactMap{$0}
//                expect(langLIDTransls.len).to(equal(totalLangLIDs))
//                expect(langLIDTransls.set.len).to(equal(148))
//                //print(langLIDTransls.joined)
//
//
//                //MARK: - CountryLID
//
//                //TODO: check why CountryLID covers less unique cases
//
//                //translatable
//                let countryLIDs: [CountryLID] = CountryLID.allForms.map {
//                    lid.langName(translatedInto: $0.lid) != nil ? $0 : nil
//                }.compactMap{$0}
//                expect(countryLIDs.len).to(equal(CountryLID.allForms.len))
//
//                let countryLIDTransls: [Str] = CountryLID.allForms.map {
//                    lid.langName(translatedInto: $0.lid)
//                }.compactMap{$0}
//                expect(countryLIDTransls.len).to(equal(totalCountryLIDs))
//                expect(countryLIDTransls.set.len).to(equal(147))
//
//
//
//                //MARK: - compare transl result sets
//
//                let diffLangLIDTransls = langLIDTransls.set.subtracting(countryLIDTransls.set)
//                expect(diffLangLIDTransls.len).to(equal(2))
//                print(diffLangLIDTransls.joined)
//
//
//                let diffCountryLIDTransls = countryLIDTransls.set.subtracting(langLIDTransls.set)
//                expect(diffCountryLIDTransls.len).to(equal(1))
//                print(diffCountryLIDTransls.joined)
//
//
//                //MARK: - compare LIDs
//
//                let diffLangLIDs = langLIDs.lidSet.subtracting(countryLIDs.lidSet)
//                expect(diffLangLIDs.len).to(equal(214))
//
//
//                let diffCountryLIDs = countryLIDs.lidSet.subtracting(langLIDs.lidSet)
//                expect(diffCountryLIDs.len).to(equal(507))
//            }
//
//            it("can provide language, country and currency name in any lang") {
//
//                let lid = CountryLID.ukrainianUkraine.lid
//                let langs = CountryLID.allForms.filter {
//                    $0.currencyName(translatedInto: lid) == nil || $0.countryName(translatedInto: lid) == nil || $0.langName(translatedInto: lid) == nil
//                }
//                expect(langs.len).to(equal(0))
//            }
            
            it("has currency") {
                // none have everything - Lang AND Country AND Currency
                // only current, currentAutoUpdating - have no lang
                
                //                print("----- No Language -----------")
                //                LID.allForms.forEach {
                //                    if $0.langName == nil {
                //                        print($0.s) // only current
                //                    }
                //                }
                
                //                CountryLID.allForms.forEach {
                //                    print($0.country)
                //                    //print($0.currencyName!)
                //                }
                //
                //                print("----- Languages -----------")
                //                LangLID.allForms.forEach {
                //                    print($0.lang)
                //                    //print($0.currencyName!)
                //                }
                
                //                let hasLang = LangLID.allForms.filter {
                //                    $0.countryName != nil
                //                }
                //                print("----- Has countryName ----------- ")
                //                hasLang.forEach {
                //                    print($0.s)
                //                    print($0.countryName!)
                //                    //print($0.currencyName!)
                //                }
                //
                //                let hasNoLang = LangLID.allForms.filter {
                //                    $0.countryName == nil
                //                }
                //                print("----- Has no countryName ----------- ")
                //                hasNoLang.forEach {
                //                    print($0.s)
                //                    //print($0.countryName!)
                //                    //print($0.currencyName!)
                //                }
                //
                //
                //                let country = CountryLID.allForms.filter {
                //                    $0.countryName != nil &&
                //                        $0.langName == nil &&
                //                        $0.currencyName == nil
                //                }
                //                print("----- Has Country only ----------- ")
                //                country.forEach {
                //                    print($0.s)
                //                    //print($0.countryName!)
                //                    //print($0.currencyName!)
                //                }
                
                
                //                let lang = CountryLID.allForms.filter {
                //                    $0.langName != nil &&
                //                        $0.countryName == nil &&
                //                        $0.currencyName == nil
                //                }
                //                print("----- Has lang only ----------- ")
                //                lang.forEach {
                //                    print($0.s)
                //                    //print($0.countryName!)
                //                    //print($0.currencyName!)
                //                }
                //
                //                let lang1 = CountryLID.allForms.filter {
                //                    $0.langName != nil && (
                //                        $0.countryName == nil &&
                //                            $0.currencyName != nil)
                //                }
                //                print("----- Has lang and currency) ----------- ")
                //                lang1.forEach {
                //                    print($0.s)
                //                    //print($0.countryName!)
                //                    print($0.currencyName!)
                //                }
                
                //                let lang2 = CountryLID.allForms.filter {
                //                    $0.langName != nil && (
                //                        $0.countryName != nil &&
                //                            $0.currencyName == nil)
                //                }
                //                print("----- Has lang and country) ----------- ")
                //                lang2.forEach {
                //                    print($0.s)
                //                    //print($0.countryName!)
                //                    //print($0.currencyName!)
                //                }
                
                
                
                //            it("can make Locale ") {
                ////                let locales: [LID] = [
                ////                .englishUnitedStates,
                ////                    .russianUkraine,
                ////                    .russianRussia,
                ////                    .russian,
                ////                ]
                //               v
                //
                //                        print("---------------- ")
                ////                        ----------------
                ////                        ar_001 (fixed)
                ////                        ----------------
                ////                        en_150 (fixed)
                ////                        ----------------
                ////                        en_001 (fixed)
                ////                        ----------------
                ////                        es_419 (fixed)
                ////                        ----------------
                ////                        yi_001 (fixed)
                //
                //
                //
                //                        print($0.locale)
                //                        print($0.locale.currencyName)
                //                        print($0.locale.langName)
                //                        print($0.locale.countryName)
                //                    }
                //                    //Optional("US Dollar")
                //                    //Optional("English")
                //                    //Optional("United States")
                //
                //                    //----------------
                //                    //Optional("украинская гривна")
                //                    //Optional("русский")
                //                    //Optional("Украина")
                //                    //----------------
                //                    //Optional("российский рубль")
                //                    //Optional("русский")
                //                    //Optional("Россия")
                //
                //                    //Optional("русский")
                //
                ////                    print("---------------- ")
                ////
                ////                    print($0.locale.currencyName)
                ////                    print($0.locale.langName)
                ////                    print($0.locale.countryName)
                //                }
                //            }
                
                //            it("can make Locale ") {
                //                LID.allCurrencyCases.forEach {
                //                    let str = NumberFormatter.shared(numStyle: .currencyPlural, $0).str(from: 1.0)!
                //                    print("---------------- ")
                //                    print($0)
                //                    print(str)
                //                }
                //            }
                
            }
        }
    }
}


