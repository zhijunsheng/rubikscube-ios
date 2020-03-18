import UIKit

class ViewController: UIViewController {
    var rubiksEngine : RubiksEngine = RubiksEngine()
    
    @IBOutlet weak var rubiksView: RubiksView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        rubiksView.frontFace = rubiksEngine.frontFace
        rubiksView.topFace = rubiksEngine.topFace
        rubiksView.rightFace = rubiksEngine.rightFace
        rubiksView.setNeedsDisplay()
    }
    @IBAction func topLayer(_ sender: Any) {
        rubiksEngine.topLayerRotation()
        update()
    }
    @IBAction func topLayerPrime(_ sender: Any) {
        rubiksEngine.topLayerRotation()
        rubiksEngine.topLayerRotation()
        rubiksEngine.topLayerRotation()
        update()
    }
    
    @IBAction func leftLayer(_ sender: Any) {
        rubiksEngine.leftLayerRotation()
        update()
    }
    @IBAction func leftLayerPrime(_ sender: Any) {
        rubiksEngine.leftLayerRotation()
        rubiksEngine.leftLayerRotation()
        rubiksEngine.leftLayerRotation()
        update()
    }
    @IBAction func frontLayer(_ sender: Any) {
        rubiksEngine.frontLayerRotation()
        update()
    }
    @IBAction func frontLayerPrime(_ sender: Any) {
        rubiksEngine.frontLayerRotation()
        rubiksEngine.frontLayerRotation()
        rubiksEngine.frontLayerRotation()
        update()
    }
    func update() {
        rubiksView.frontFace = rubiksEngine.frontFace
        rubiksView.topFace = rubiksEngine.topFace
        rubiksView.rightFace = rubiksEngine.rightFace
        rubiksView.setNeedsDisplay()
    }
}

