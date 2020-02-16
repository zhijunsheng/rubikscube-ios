import XCTest
class PrimeTests: XCTestCase {
    
    
    
    func testExample() { // 17, 331 ? prime or not?
        
        let x = 331
        for i in 2...x - 1 {
            if x % i == 0 {
                print("prime")
            }else{
                print("notprime")
            }
        }
        
        
        // 17 % 2 != 0 ?
        // 17 % 3 != 0 ?
        // 17 % 4 != 0 ?
        // ...
        // 17 % 16 != 0 ?
        // for ( ... )...( ... ) ( if ( ... )(  ...  ) )
    }
}
