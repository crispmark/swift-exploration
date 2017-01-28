//  Fibonacci Sequence calculation

import Foundation

class Fibonacci {
    func calculate(n: CLong) -> [CLong] {
        func calculateRecursion(n: CLong, sequence: [CLong]) -> [CLong] {
            let count = sequence.count
            var secLastNum: CLong = 0
            var lastNum: CLong = 1
            if (count >= 2) {
                secLastNum = sequence[count-2]
                lastNum = sequence[count-1]
            }
            var mutableSequence = sequence
            mutableSequence.append(secLastNum+lastNum)
            if (n < CLong(count)) {
                return mutableSequence
            } else {
                return calculateRecursion(n: n, sequence: mutableSequence)
            }
        }
        return calculateRecursion(n: n, sequence: [CLong]())
    }
}
