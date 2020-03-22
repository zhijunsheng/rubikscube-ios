import Foundation

struct RubiksEngine {
    var frontFace : [CubeColor] = [.blue, .orange, .orange,
                                   .orange, .orange, .orange,
                                   .orange, .orange, .white]
    var topFace : [CubeColor] = [.green, .green, .green,
                                 .green, .green, .green,
                                 .green, .green, .green]
    var rightFace : [CubeColor] = [.yellow, .yellow, .yellow,
                                   .yellow, .yellow, .yellow,
                                   .yellow, .yellow, .yellow]
    var backFace : [CubeColor] = [.red, .red, .red,
                                  .red, .red, .red,
                                  .red, .red, .red]
    var bottomFace : [CubeColor] = [.blue, .blue, .blue,
                                    .blue, .blue, .blue,
                                    .blue, .blue, .blue]
    var leftFace : [CubeColor] = [.white, .white, .white,
                                  .white, .white, .white,
                                  .white, .white, .white]
    mutating func topLayerRotation() {
        topFace = rotateFace(face: topFace)
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
    
    mutating func leftLayerRotation() {
        leftFace = rotateFace(face: leftFace)
        let tFZero = topFace[0]
        topFace[0] = backFace[8]
        backFace[8] = bottomFace[0]
        bottomFace[0] = frontFace[0]
        frontFace[0] = tFZero
        let tFThree = topFace[3]
        topFace[3] = backFace[5]
        backFace[5] = bottomFace[3]
        bottomFace[3] = frontFace[3]
        frontFace[3] = tFThree
        let tFSix = topFace[6]
        topFace[6] = backFace[2]
        backFace[2] = bottomFace[6]
        bottomFace[6] = frontFace[6]
        frontFace[6] = tFSix
    }
    
    mutating func frontLayerRotation() {
        frontFace = rotateFace(face: frontFace)
        let rFZero = rightFace[0]
        rightFace[0] = topFace[6]
        topFace[6] = leftFace[8]
        leftFace[8] = bottomFace[2]
        bottomFace[2] = rFZero
        let rFThree = rightFace[3]
        rightFace[3] = topFace[7]
        topFace[7] = leftFace[5]
        leftFace[5] = bottomFace[1]
        bottomFace[1] = rFThree
        let rFSix = rightFace[6]
        rightFace[6] = topFace[8]
        topFace[8] = leftFace[2]
        leftFace[2] = bottomFace[0]
        bottomFace[0] = rFSix
    }
 
    func rotateFace(face: [CubeColor]) -> [CubeColor] {
           var newFace = face
           
           let lFTwo = newFace[2]
           newFace[2] = newFace[0]
           newFace[0] = newFace[6]
           newFace[6] = newFace[8]
           newFace[8] = lFTwo
           let lFFive = newFace[5]
           newFace[5] = newFace[1]
           newFace[1] = newFace[3]
           newFace[3] = newFace[7]
           newFace[7] = lFFive
           
           return newFace
           
       }
    
}
