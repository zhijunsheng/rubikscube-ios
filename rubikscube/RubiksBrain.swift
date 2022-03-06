import Foundation

struct RubiksBrain {
    
    var frontFace: [CubeColor] = [.green, .green, .green, .green, .green, .green, .green, .green, .green]
    var rightFace: [CubeColor] = [.yellow, .yellow, .yellow, .yellow, .yellow, .yellow, .yellow, .yellow, .yellow]
    var topFace: [CubeColor] = [.red, .red, .red, .red, .red, .red, .red, .red, .red]
    var backFace: [CubeColor] = [.blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue]
    var leftFace: [CubeColor] = [.white, .white, .white, .white, .white, .white, .white, .white, .white]
    var bottomFace: [CubeColor] = [.orange, .orange, .orange, .orange, .orange, .orange, .orange, .orange, .orange]
    
    mutating func rotateFront() {
        frontFace = rotateFace(face: frontFace)
        
        
        let rightFace6 = rightFace[6]
        let rightFace3 = rightFace[3]
        let rightFace0 = rightFace[0]
        
        rightFace[0] = topFace[6]
        rightFace[3] = topFace[7]
        rightFace[6] = topFace[8]
        
        topFace[6] = leftFace[8]
        topFace[7] = leftFace[5]
        topFace[8] = leftFace[2]
        
        leftFace[2] = bottomFace[0]
        leftFace[5] = bottomFace[1]
        leftFace[8] = bottomFace[2]
        
        bottomFace[0] = rightFace6
        bottomFace[1] = rightFace3
        bottomFace[2] = rightFace0
    }
    
    mutating func rotateTop() {
        topFace = rotateFace(face: topFace)
        
        let frontFace0 = frontFace[0]
        let frontFace1 = frontFace[1]
        let frontFace2 = frontFace[2]
        
        frontFace[0] = rightFace[0]
        frontFace[1] = rightFace[1]
        frontFace[2] = rightFace[2]
        
        rightFace[0] = backFace[0]
        rightFace[1] = backFace[1]
        rightFace[2] = backFace[2]
        
        backFace[0] = leftFace[0]
        backFace[1] = leftFace[1]
        backFace[2] = leftFace[2]
        
        leftFace[0] = frontFace0
        leftFace[1] = frontFace1
        leftFace[2] = frontFace2
    }
    
    mutating func rotateRight() {
        rightFace = rotateFace(face: rightFace)
        
        let bottomFace2 = bottomFace[2]
        let bottomFace5 = bottomFace[5]
        let bottomFace8 = bottomFace[8]
        
        bottomFace[2] = backFace[0]
        bottomFace[5] = backFace[3]
        bottomFace[8] = backFace[6]
        
        backFace[0] = topFace[2]
        backFace[3] = topFace[5]
        backFace[6] = topFace[8]
        
        topFace[2] = frontFace[2]
        topFace[5] = frontFace[5]
        topFace[8] = frontFace[8]
        
        frontFace[2] = bottomFace2
        frontFace[5] = bottomFace5
        frontFace[8] = bottomFace8
    }
    
    mutating func rotateLeft() {
        leftFace = rotateFace(face: leftFace)
        let frontFace0 = frontFace[0]
        let frontFace3 = frontFace[3]
        let frontFace6 = frontFace[6]
        
        frontFace[0] = topFace[0]
        frontFace[3] = topFace[3]
        frontFace[6] = topFace[6]
        
        topFace[0] = backFace[2]
        topFace[3] = backFace[5]
        topFace[6] = backFace[8]
        
        backFace[2] = bottomFace[6]
        backFace[5] = bottomFace[3]
        backFace[8] = bottomFace[0]
        
       bottomFace[0] = frontFace0
       bottomFace[3] = frontFace3
       bottomFace[6] = frontFace6
        
        
    }
    
    func rotateFace(face: [CubeColor]) -> [CubeColor] {
        var newFace = face
        
        let face2 = newFace[2]
        let face5 = newFace[5]
        
        newFace[2] = newFace[0]
        newFace[0] = newFace[6]
        newFace[6] = newFace[8]
        newFace[8] = face2
        
        newFace[5] = newFace[1]
        newFace[1] = newFace[3]
        newFace[3] = newFace[7]
        newFace[7] = face5
        
        return newFace
    }
    
    mutating func rotateDown() {
        bottomFace = rotateFace(face: bottomFace)
        let face6 = frontFace[6]
        let face7 = frontFace[7]
        let face8 = frontFace[8]
        
        frontFace[6] = leftFace[6]
        frontFace[7] = leftFace[7]
        frontFace[8] = leftFace[8]
        
        leftFace[6] = backFace[6]
        leftFace[7] = backFace[7]
        leftFace[8] = backFace[8]
        
        backFace[6] = rightFace[6]
        backFace[7] = rightFace[7]
        backFace[8] = rightFace[8]
        
        rightFace[6] = face6
        rightFace[7] = face7
        rightFace[8] = face8
        
    }
}
