import XCTest
class GoldbachTests: XCTestCase {
    
    /*
     Goldbach Conjecture:
     
     For any even number,
     
     26 = prime + prime
     26 = 3 + 23, 7 + 19, 13 + 13, 17
     
     About 26, Fermat 1601 born in France
     25 < 26 < 27
     5*5 < 26 < 3*3*3
     
     A3B4C5
     3*3 + 4*4 = 5*5
    
     A?B?C?
     A^2 + B^2 = C^2
     
     ====
     
     4 = 2 + 2
     6 = 3 + 3
     8 = 5 + 3
     10 = 5 + 5
     12 = 5 + 7
     14 = 7 + 7
     16 = 3 + 13, 5 +  11
     ...
     100000
     
 */
    func testGoldBach() {
        for number in stride(from: 10, to: 100000, by: 2) {
            for i in stride(from: 3, to: number, by: 2) {
                if isPrime(number: i) {
                    let otherNumber = number - i
                    if isPrime(number: otherNumber) {
                        print("\(number) = \(i) + \(otherNumber)")
                        break
                    }
                }
            }
        }
        
        
    }
    
    func isPrime(number: Int) -> Bool {
        for i in 2..<number {
            if number % i == 0 {
                return false
            }
        }
        return true
    }
}
