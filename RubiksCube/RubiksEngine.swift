import Foundation

struct RubiksEngine {
    var frontFace : [CubeColor] = [.red, .orange, .red,
                                   .red, .orange, .red,
                                   .red, .orange, .red]
    var topFace : [CubeColor] = [.blue, .blue, .blue,
                                 .blue, .green, .blue,
                                 .blue, .blue, .blue]
    var rightFace : [CubeColor] = [.yellow, .yellow, .yellow,
                                   .yellow, .yellow, .yellow,
                                   .yellow, .yellow, .yellow]
    var backFace : [CubeColor] = [.orange, .red, .orange,
                                  .orange, .red, .orange,
                                  .orange, .red, .orange]
    let bottomFace : [CubeColor] = [.green, .green, .green,
                                    .green, .blue, .green,
                                    .green, .green, .green]
    var leftFace : [CubeColor] = [.white, .white, .white,
                                  .white, .white, .white,
                                  .white, .white, .white]
    
    // top: rotate the top layer clockwise
    // topPrime   T, T'
    // topFace[2] = topFace[0]
    
    mutating func topLayerRotation() {
        let tFTwo = topFace[2]
        topFace[2] = topFace[0]
        topFace[0] = topFace[6]
        topFace[6] = topFace[8]
        topFace[8] = tFTwo
        let tFFive = topFace[5]
        topFace[5] = topFace[1]
        topFace[1] = topFace[3]
        topFace[3] = topFace[7]
        topFace[7] = tFFive
        let rFTwo = rightFace[2]
        rightFace[2] = backFace[2]
        backFace[2] = leftFace[2]
        leftFace[2] = frontFace[2]
        frontFace[2] = rFTwo
        let rFOne = rightFace[1]
        rightFace[1] = backFace[1]
        backFace[1] = leftFace[1]
        leftFace[1] = frontFace[1]
        frontFace[1] = rFOne
        let rFZero = rightFace[0]
        rightFace[0] = backFace[0]
        backFace[0] = leftFace[0]
        leftFace[0] = frontFace[0]
        frontFace[0] = rFZero
    }
    
    mutating func topLayerRotationPrime() {
        let tFSix = topFace[6]
        topFace[6] = topFace[0]
        topFace[0] = topFace[2]
        topFace[2] = topFace[8]
        topFace[8] = tFSix
        let tfThree = topFace[3]
        topFace[3] = topFace[1]
        topFace[1] = topFace[5]
        topFace[5] = topFace[7]
        topFace[7] = tfThree
        let lFTwo = leftFace[2]
        leftFace[2] = backFace[2]
        backFace[2] = rightFace[2]
        rightFace[2] = frontFace[2]
        frontFace[2] = lFTwo
        let lFOne = leftFace[1]
        leftFace[1] = backFace[1]
        backFace[1] = rightFace[1]
        rightFace[1] = frontFace[1]
        frontFace[1] = lFOne
        let lFZero = leftFace[0]
        leftFace[0] = backFace[0]
        backFace[0] = rightFace[0]
        rightFace[0] = frontFace[0]
        frontFace[0] = lFZero
    }
    
}
