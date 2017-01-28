// Calculation of pi using the Nilakantha series

import Darwin

func pi(n: Int) -> Float64 {
    return pi_reduce(n: n, value: 3)
}

func pi_reduce(n: Int, value:Float64) -> Float64 {
    let current_value: Float64 = value + pi_add_value(n: n) - pi_sub_value(n: n)
    if (n == 0) {
        return current_value
    } else {
        return pi_reduce(n: (n-1), value: current_value)
    }
}


func pi_add_value(n: Int) -> Float64 {
    let n_float: Float64 = Float64(n)
    var add_value: Float64 = 4/(2+4*n_float)
    add_value = add_value/(3+4*n_float)
    add_value = add_value/(4+4*n_float)
    return add_value
}

func pi_sub_value(n: Int) -> Float64 {
    let n_float: Float64 = Float64(n)
    var sub_value: Float64 = 4/(4+4*n_float)
    sub_value = sub_value/(5+4*n_float)
    sub_value = sub_value/(6+4*n_float)
    return sub_value
}
print(pi(n: 1000))
