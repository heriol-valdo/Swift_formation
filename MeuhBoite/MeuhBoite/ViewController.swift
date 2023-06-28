//
//  ViewController.swift
//  MeuhBoite
//
//  Created by Utilisateur invité on 08/06/2023.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    
    @IBOutlet weak var ImageView: UIImageView!
    @IBOutlet weak var ImageChat: UIImageView!
    @IBOutlet weak var ImageLoup: UIImageView!
    @IBOutlet weak var ImageRat: UIImageView!
    @IBOutlet weak var ImageSouris: UIImageView!
    @IBOutlet weak var ImageLion: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        becomeFirstResponder()
        
        let imageRat = "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR2Kwr_ENuWMtu1v8uFEcimUjT0V3rMP5IUIA&usqp=CAU"
        
        let imageSouris = "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTKb7lWxaJ65x1WBFaqPNiu2GW4aLsL7G-hLA&usqp=CAU"
        
        let imageLion =  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ7DdGbsvM_sQd40npyO2bNqONdg57IDExvlQ&usqp=CAU"
        
        let imageloup = "https://st2.depositphotos.com/1008660/46566/i/1600/depositphotos_465663794-stock-photo-hand-drawn-wolf-sketch-graphics.jpg"
         
        let imagechat = "https://img.freepik.com/photos-gratuite/chat-rouge-blanc-je-studio-blanc_155003-13189.jpg"
        
        let imageView = "https://assets.stickpng.com/images/58a0507e5583a1291368eeb5.png"
        
        if let imageUrl = URL(string: imageView){
            DispatchQueue.global().async {
                if let imageData = try? Data(contentsOf: imageUrl){
                    DispatchQueue.main.async {
                        self.ImageView.image = UIImage(data: imageData)
                    }
                }
            }
        }
        
        
        if let imageUrl = URL(string: imageRat){
            DispatchQueue.global().async {
                if let imageData = try? Data(contentsOf: imageUrl){
                    DispatchQueue.main.async {
                        self.ImageRat.image = UIImage(data: imageData)
                    }
                }
            }
        }
        
        if let imageUrl = URL(string: imageSouris){
            DispatchQueue.global().async {
                if let imageData = try? Data(contentsOf: imageUrl){
                    DispatchQueue.main.async {
                        self.ImageSouris.image = UIImage(data: imageData)
                    }
                }
            }
        }

        
        if let imageUrl = URL(string: imageLion){
            DispatchQueue.global().async {
                if let imageData = try? Data(contentsOf: imageUrl){
                    DispatchQueue.main.async {
                        self.ImageLion.image = UIImage(data: imageData)
                    }
                }
            }
        }
        
        if let imageUrlchat = URL(string: imagechat){
            DispatchQueue.global().async {
                if let imageData = try? Data(contentsOf: imageUrlchat){
                    DispatchQueue.main.async {
                        self.ImageChat.image = UIImage(data: imageData)
                    }
                }
            }
        }
        if let imageLoup = URL(string: imageloup){
            DispatchQueue.global().async {
                if let imageData = try? Data(contentsOf: imageLoup){
                    DispatchQueue.main.async {
                        self.ImageLoup.image = UIImage(data: imageData)
                    }
                }
            }
        }

        
    }

    @IBAction func click_chien(_ sender: Any) {
        jouedog()
    }
    
    
    @IBAction func click_chat(_ sender: Any) {
        jouecat()
        
    }
    
    
   
    
    
    
    @IBAction func click_loup(_ sender: Any) {
        joueloup()
        
        
    }
    
    var player: AVAudioPlayer?
    let songs = ["miaule", "woof", "loup","lion","rat","souris"]

   

    override var canBecomeFirstResponder: Bool {
        return true
    }

    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        if motion == .motionShake {
            if let event = event {
                if event.type == .motion {
                    playRandomAnimalSound()
                }
            }
        }
    }
    func playRandomAnimalSound() {
        let randomIndex = Int.random(in: 0..<songs.count)
        let soundName = songs[randomIndex]

        if let soundURL = Bundle.main.url(forResource: soundName, withExtension: "mp3") {
            do {
                player = try AVAudioPlayer(contentsOf: soundURL)
                player?.play()
            } catch {
                print("Error playing sound: \(error.localizedDescription)")
            }
        } else {
            print("Sound file not found.")
        }
    }
    func jouedog() {
        let soundName = songs[1]

        if let soundURL = Bundle.main.url(forResource: soundName, withExtension: "mp3") {
            do {
                player = try AVAudioPlayer(contentsOf: soundURL)
                player?.play()
            } catch {
                print("Error playing sound: \(error.localizedDescription)")
            }
        } else {
            print("Sound file not found.")
        }
    }
    func jouecat() {
        let soundName = songs[0]

        if let soundURL = Bundle.main.url(forResource: soundName, withExtension: "mp3") {
            do {
                player = try AVAudioPlayer(contentsOf: soundURL)
                player?.play()
            } catch {
                print("Error playing sound: \(error.localizedDescription)")
            }
        } else {
            print("Sound file not found.")
        }
    }
    func joueloup() {
        let soundName = songs[2]

        if let soundURL = Bundle.main.url(forResource: soundName, withExtension: "mp3") {
            do {
                player = try AVAudioPlayer(contentsOf: soundURL)
                player?.play()
            } catch {
                print("Error playing sound: \(error.localizedDescription)")
            }
        } else {
            print("Sound file not found.")
        }
    }
    
    
    
    @IBAction func JouLion(_ sender: Any) {
        let soundName = songs[3]

        if let soundURL = Bundle.main.url(forResource: soundName, withExtension: "mp3") {
            do {
                player = try AVAudioPlayer(contentsOf: soundURL)
                player?.play()
            } catch {
                print("Error playing sound: \(error.localizedDescription)")
            }
        } else {
            print("Sound file not found.")
        }
        
    }
    
    
    
    @IBAction func JoueRat(_ sender: Any) {
        
        let soundName = songs[4]

        if let soundURL = Bundle.main.url(forResource: soundName, withExtension: "mp3") {
            do {
                player = try AVAudioPlayer(contentsOf: soundURL)
                player?.play()
            } catch {
                print("Error playing sound: \(error.localizedDescription)")
            }
        } else {
            print("Sound file not found.")
        }
    }
    
    
    @IBAction func JouerSouris(_ sender: Any) {
        let soundName = songs[5]

        if let soundURL = Bundle.main.url(forResource: soundName, withExtension: "mp3") {
            do {
                player = try AVAudioPlayer(contentsOf: soundURL)
                player?.play()
            } catch {
                print("Error playing sound: \(error.localizedDescription)")
            }
        } else {
            print("Sound file not found.")
        }
        
    }
    
    
}

