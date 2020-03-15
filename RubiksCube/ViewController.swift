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
        rubiksView.frontFace = rubiksEngine.frontFace
        rubiksView.topFace = rubiksEngine.topFace
        rubiksView.rightFace = rubiksEngine.rightFace
        rubiksView.setNeedsDisplay()
    }
    @IBAction func topLayerPrime(_ sender: Any) {
        rubiksEngine.topLayerRotationPrime()
        rubiksView.frontFace = rubiksEngine.frontFace
        rubiksView.topFace = rubiksEngine.topFace
        rubiksView.rightFace = rubiksEngine.rightFace
        rubiksView.setNeedsDisplay()
    }
    
    @IBAction func leftLayer(_ sender: Any) {
    }
    @IBAction func leftLayerPrime(_ sender: Any) {
    }
}

