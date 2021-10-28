

import UIKit
import AVFoundation

class ViewController: UIViewController {

    var player: AVAudioPlayer?
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @IBAction func HButton(_ sender: Any) {
        playSound(sound: "A")
        print("A got Clicked")
    }
    
    @IBAction func BButton(_ sender: Any) {
        playSound(sound: "B")
        print("B got Clicked")
    }
    @IBAction func keyPressed(_ sender: Any) {
        print("C got Clicked")
        playSound(sound: "C")
    }
    
    @IBAction func DButton(_ sender: Any) {
        print("D got Clicked")
        playSound(sound: "D")
    }
    
    @IBAction func EButton(_ sender: Any) {
        print("E got Clicked")
        playSound(sound: "E")
    }
    
    @IBAction func FButton(_ sender: Any) {
        print("F got Clicked")
        playSound(sound: "F")
    }
    
    @IBAction func GButton(_ sender: Any) {
        print("G got Clicked")
        playSound(sound: "G")
    }
    
    
    func playSound(sound:String) {
        guard let url = Bundle.main.url(forResource: sound, withExtension: "wav") else { return }

        do {
            try AVAudioSession.sharedInstance().setCategory(.playback, mode: .default)
            try AVAudioSession.sharedInstance().setActive(true)

            player = try AVAudioPlayer(contentsOf: url, fileTypeHint: AVFileType.mp3.rawValue)
                guard let player = player else { return }

            player.play()

        } catch let error {
            print(error.localizedDescription)
        }
    }
    

}

