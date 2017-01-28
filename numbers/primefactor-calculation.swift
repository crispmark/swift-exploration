// Calculates the prime factors of a provided integer

import Foundation

class PrimeFactor {
    
    func calculate(n: Int) -> [Int] {
        var primeFactors = [Int]()
        let halfN: Int = n/2
        for i in 1...halfN {
            if (((n%i) == 0) && prime(n: i)) {
                primeFactors.append(i)
            }
        }
        if (prime(n: n)) {
            primeFactors.append(n)
        }
        return primeFactors
    }
    
    func nextPrime(n: Int) -> Int {
        var x = n + 1
        while (!prime(n: x)) {
            x = x+1
        }
        return x
    }
}

func prime(n: Int) -> Bool {
    return factors(n: n).count <= 2
}

func factors(n: Int) -> [Int] {
    var factors = [Int]()
    factors.append(1)
    let halfN: Int = n/2
    if (halfN >= 2) {
        for i in 2...halfN {
            if ((n%i) == 0) {
                factors.append(i)
            }
        }
    }
    if (n != 1) {
        factors.append(n)
    }
    return factors
}
