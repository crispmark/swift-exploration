// Calculation of Euler's number

import Darwin

func euler(n: Double) -> Float64 {
    return pow(1+(1/n), n)
}

print(euler(n: 100000000))
