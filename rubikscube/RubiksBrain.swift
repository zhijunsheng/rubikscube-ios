import Foundation

struct RubiksBrain {
    
    var frontFace: [CubeColor] = [.green, .green, .green, .green, .green, .green, .green, .green, .green]
    var rightFace: [CubeColor] = [.yellow, .yellow, .yellow, .yellow, .yellow, .yellow, .yellow, .yellow, .yellow]
    var topFace: [CubeColor] = [.red, .red, .red, .red, .red, .red, .red, .red, .red]
    var backFace: [CubeColor] = [.blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue]
    var leftFace: [CubeColor] = [.white, .white, .white, .white, .white, .white, .white, .white, .white]
    var bottomface: [CubeColor] = [.orange, .orange, .orange, .orange, .orange, .orange, .orange, .orange, .orange]
    
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
        
        leftFace[2] = bottomface[0]
        leftFace[5] = bottomface[1]
        leftFace[8] = bottomface[2]
        
        bottomface[0] = rightFace6
        bottomface[1] = rightFace3
        bottomface[2] = rightFace0
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
    
    
    
    
    
}
