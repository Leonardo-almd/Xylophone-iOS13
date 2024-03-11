import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player: AVAudioPlayer!

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func keyPressed(_ sender: UIButton) {
        sender.alpha = 0.5
        playSound((sender.titleLabel?.text!)!)
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
              
              sender.alpha = 1.0
          }
    }
    
    func playSound(_ resource: String) {
        let url = Bundle.main.url(forResource: resource, withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
                
    }
}
