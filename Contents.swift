/*
 You can change range and get a fibonacci numbers list
*/

import Foundation

func calFibo(min: Int, max: Int) {
    
    var first_index:Int = 0
    var second_index:Int = 1
    let text:String = "Fibonacci numbers here:"
    
    var isFibo:Int = first_index + second_index
    var fibos:[Int] = []
    
    repeat {
        first_index = second_index
        second_index = isFibo
        isFibo = first_index + second_index
    } while isFibo < min

    repeat {
        fibos.append(isFibo)
        first_index = second_index
        second_index = isFibo
        isFibo = first_index + second_index
    } while isFibo < max

    print(text,fibos)
}

calFibo(min: 750, max: 1000)
