//
//  GameScreenVC.swift
//  final-project
//
//  Created by DPI Student 030 on 7/20/23.
//

import UIKit

class GameScreenVC: UIViewController {
    
    

    override func viewDidLoad() {

        super.viewDidLoad()
        
        let Background = UIImage.gifImageWithName("Background")
        ImageView2.image = Background
        
        startTimer()

        // Do any additional setup after loading the view.
    }
    
    
    @IBOutlet var ImageView2: UIImageView!
    
    @IBOutlet var TimerLabel: UILabel!
    
    @IBOutlet var scoreLabel: UILabel!
    
    @IBOutlet var badButton: UIButton!
    
    @IBOutlet var gameOverButton: UIButton!
    
    
    @IBOutlet var targetActualButton: UIButton!
    
    
    var score: Int = 0
    
    
    
    var seconds = 30
    var timer = Timer()
    var isTimerRunning = false
    
    func startTimer() {
        isTimerRunning = true
        gameOverButton.isHidden = true
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: (#selector(GameScreenVC.updateTimer)), userInfo: nil, repeats: true)
    }
    
    @objc func updateTimer() {
        if seconds > 0 {
            seconds -= 1
        } else {
            stopTimer()
        }
        
        TimerLabel.text = "\(seconds)"
    }
    
    func stopTimer() {
        timer.invalidate()
        isTimerRunning = false
        badButton.isHidden = true
        gameOverButton.isHidden = false
        targetActualButton.isHidden = true
    }
    
   // gameOverButton.isHidden = true
    
    @IBAction func targetYay(button: UIButton!) {
        button.isHidden = false
        badButton.isHidden = false
        
        // Find the button's width and height
        let buttonWidth = button.frame.width
        let buttonHeight = button.frame.height
        
        let buttonWidthBad = badButton.frame.width
        let buttonHeightBad = badButton.frame.height
        
        // Find the width and height of the enclosing view
        let viewWidth = button.superview!.bounds.width
        let viewHeight = button.superview!.bounds.height
        
        let viewWidthBad = badButton.superview!.bounds.width
        let viewHeightBad = badButton.superview!.bounds.height

        // Compute width and height of the area to contain the button's center
        let xwidth = viewWidth - buttonWidth
        let yheight = viewHeight - buttonHeight
        
        let xwidthBad = viewWidthBad - buttonWidthBad
        let yheightBad = viewHeightBad - buttonHeightBad

        // Generate a random x and y offset
        let xoffset = CGFloat(arc4random_uniform(UInt32(xwidth)))
        let yoffset = CGFloat(arc4random_uniform(UInt32(yheight)))
        
        let xoffsetBad = CGFloat(arc4random_uniform(UInt32(xwidthBad)))
        let yoffsetBad = CGFloat(arc4random_uniform(UInt32(yheightBad)))
                
        if(badButton.isTouchInside == false) {
            score = score + 1
            scoreLabel.text = "\(score)"
        }
        
        button.center.x = xoffset + buttonWidth / 2
        button.center.y = yoffset + buttonHeight / 2
        
        badButton.center.x = xoffsetBad + buttonWidthBad / 2
        badButton.center.y = yoffsetBad + buttonHeightBad / 2
    
    }
    
    
    @IBAction func badButtonPressed(_ sender: Any) {
        performSegue(withIdentifier: "badButtonSegue", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "badButtonSegue" {
            let destVC = segue.destination as? GameOverVC
            if let gameScore = scoreLabel.text {
                destVC?.takeCurrentScore = gameScore
            }
        } else if segue.identifier == "nextButtonSegue" {
            let destVC = segue.destination as? GameOverVC
            if let gameScore = scoreLabel.text {
                destVC?.takeCurrentScore = gameScore
            }
        }
    }
    
    @IBAction func gameDoneButtonPressed(_ sender: Any) {
        performSegue(withIdentifier: "nextButtonSegue", sender: nil)
    }
    
    

    

    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
