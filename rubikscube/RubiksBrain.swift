import Foundation

struct RubiksBrain {
    
    var frontFace: [CubeColor] = [.green, .green, .green, .green, .green, .green, .green, .green, .green]
    var rightFace: [CubeColor] = [.yellow, .yellow, .yellow, .yellow, .yellow, .yellow, .yellow, .yellow, .yellow]
    var upFace: [CubeColor] = [.red, .red, .red, .red, .red, .red, .red, .red, .red]
    var backFace: [CubeColor] = [.blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue, .blue]
    var leftFace: [CubeColor] = [.white, .white, .white, .white, .white, .white, .white, .white, .white]
    var downFace: [CubeColor] = [.orange, .orange, .orange, .orange, .orange, .orange, .orange, .orange, .orange]
    
    mutating func reset() {
        for i in 0..<9 {
            frontFace[i] = .green
            rightFace[i] = .yellow
            upFace[i] = .red
            backFace[i] = .blue
            leftFace[i] = .white
            downFace[i] = .orange
        }
    }
    
    mutating func shuffle(){
        var n: Int
        for _ in 0..<2400 {
            n = Int(arc4random() % 6)
            switch n {
            case 0:
                rotateFront()
            case 1:
                rotateRight()
            case 2:
                rotateTop()
            case 3:
                rotateBack()
            case 4:
                rotateLeft()
            case 5:
                rotateDown()
            default:
                break
            }
        }
    }
    
    mutating func rotateFront() {
        frontFace = rotateFace(face: frontFace)
        
        
        let rightFace6 = rightFace[6]
        let rightFace3 = rightFace[3]
        let rightFace0 = rightFace[0]
        
        rightFace[0] = upFace[6]
        rightFace[3] = upFace[7]
        rightFace[6] = upFace[8]
        
        upFace[6] = leftFace[8]
        upFace[7] = leftFace[5]
        upFace[8] = leftFace[2]
        
        leftFace[2] = downFace[0]
        leftFace[5] = downFace[1]
        leftFace[8] = downFace[2]
        
        downFace[0] = rightFace6
        downFace[1] = rightFace3
        downFace[2] = rightFace0
    }
    
    mutating func rotateTop() {
        upFace = rotateFace(face: upFace)
        
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
        
        let bottomFace2 = downFace[2]
        let bottomFace5 = downFace[5]
        let bottomFace8 = downFace[8]
        
        downFace[2] = backFace[6]
        downFace[5] = backFace[3]
        downFace[8] = backFace[0]
        
        backFace[6] = upFace[2]
        backFace[3] = upFace[5]
        backFace[0] = upFace[8]
        
        upFace[2] = frontFace[2]
        upFace[5] = frontFace[5]
        upFace[8] = frontFace[8]
        
        frontFace[2] = bottomFace2
        frontFace[5] = bottomFace5
        frontFace[8] = bottomFace8
    }
    
    mutating func rotateLeft() {
        leftFace = rotateFace(face: leftFace)
        let frontFace0 = frontFace[0]
        let frontFace3 = frontFace[3]
        let frontFace6 = frontFace[6]
        
        frontFace[0] = upFace[0]
        frontFace[3] = upFace[3]
        frontFace[6] = upFace[6]
        
        upFace[0] = backFace[8]
        upFace[3] = backFace[5]
        upFace[6] = backFace[2]
        
        backFace[8] = downFace[0]
        backFace[5] = downFace[3]
        backFace[2] = downFace[6]
        
       downFace[0] = frontFace0
       downFace[3] = frontFace3
       downFace[6] = frontFace6
        
        
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
        downFace = rotateFace(face: downFace)
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
    
    mutating func rotateBack() {
        backFace = rotateFace(face: backFace)
        let face0 = upFace[0]
        let face1 = upFace[1]
        let face2 = upFace[2]
        upFace[0] = rightFace[2]
        upFace[1] = rightFace[5]
        upFace[2] = rightFace[8]
        
        rightFace[2] = downFace[8]
        rightFace[5] = downFace[7]
        rightFace[8] = downFace[6]
        
        downFace[8] = leftFace[6]
        downFace[7] = leftFace[3]
        downFace[6] = leftFace[0]
        
        leftFace[0] = face2
        leftFace[3] = face1
        leftFace[6] = face0
    }
}
