//import XCTest
//import Quick
//import Nimble
//@testable import VariantKit
//
//
//class VariantKitSpec: QuickSpec {
//    
//    override func spec() {
//        
//        describe("VStrEnumT") {
//
//            it("implements Equatable using skey") {
//
//                expect(SVPerson.person).to(equal(SVPerson.man))
//                expect(SVPerson.person).to(equal(SVPerson.person))
//            }
//
//            it("implements Hashable using skey") {
//                let setObj = Set([SVPerson.person, SVPerson.man])
//                expect(setObj.count).to(equal(1))
//            }
//        }
//        
//        describe("VStrT") {
//            
//            it("provides unique skey for stored enum") {
//                
//                let a = VStr.person(SVPerson.person)
//                let b = VStr.person(SVPerson.man)
//                //print(a,b)
//                
//                expect(Set([a,a]).count).to(equal(1))
//                expect(Set([a,b]).count).to(equal(1))
//                
//                expect(a).to(equal(b))
//            }
//            
//            it("provides unique skey for Str") {
//
//                let a = VStr("a")
//                let b = VStr("b")
//                //print(a,b)
//
//                expect(Set([a,a]).count).to(equal(1))
//                expect(Set([a,b]).count).to(equal(2))
//
//                expect(a).notTo(equal(b))
//            }
//
//            it("can store Str and stored enum") {
//                
//                let a = VStr("a")
//                let b = VStr.person(SVPerson.man)
//                //print(a,b)
//                
//                expect(Set([a,a]).count).to(equal(1))
//                expect(Set([a,b]).count).to(equal(2))
//                
//                expect(a).notTo(equal(b))
//            }
//            
////            it("provides unique skey for [Str]") {
////
////                // cannot impl Hashable - bc keys can be different
////                let a = VStr(["a", "b"])
////                let b = VStr(["b", "a"])
////                let c = VStr(["a"])
////                let d = VStr(["b"])
////                
////                expect(a).to(equal(b))
////                expect(b).to(equal(c))
////                expect(c).to(equal(d))
////
////                
////                expect(Set([a,b,c,d]).count).to(equal(1))
////                //print(a,b)
////
////                expect(Set([a,b]).count).to(equal(2))
////                expect(a).notTo(equal(b))
////            }
//           
//        }
//    }
//}
