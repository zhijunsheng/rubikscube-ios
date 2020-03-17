import Foundation

struct RubiksBrain {
    
    var frontFace: [CubeColor] = [.green, .green, .green, .green, .green, .green, .green, .green, .green]
    var rightFace: [CubeColor] = [.yellow, .yellow, .yellow, .yellow, .yellow, .yellow, .yellow, .yellow, .yellow]
    var topFace: [CubeColor] = [.red, .red, .red, .red, .red, .red, .red, .red, .red]
    var backFace: [CubeColor] = [.blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue]
    var leftFace: [CubeColor] = [.white, .white, .white, .white, .white, .white, .white, .white, .white]
    var bottomface: [CubeColor] = [.orange, .orange, .orange, .orange, .orange, .orange, .orange, .orange, .orange]
    
    mutating func rotateFront() {
        let frontFace2 = frontFace[2]
        let frontFace5 = frontFace[5]
        
        frontFace[2] = frontFace[0]
        frontFace[0] = frontFace[6]
        frontFace[6] = frontFace[8]
        frontFace[8] = frontFace2
        
        frontFace[5] = frontFace[1]
        frontFace[1] = frontFace[3]
        frontFace[3] = frontFace[7]
        frontFace[7] = frontFace5
        
        
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
        
        bottomface[0] = rightFace0
        bottomface[1] = rightFace3
        bottomface[2] = rightFace6
        
       
    }
    
    
    
}
