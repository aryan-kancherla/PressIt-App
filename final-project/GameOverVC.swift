//
//  GameOverVC.swift
//  final-project
//
//  Created by DPI Student 030 on 7/20/23.
//

import UIKit

class GameOverVC: UIViewController {

    @IBOutlet var ImageView3: UIImageView!
    
    @IBOutlet var currentGameScore: UILabel!
    
    @IBOutlet var personalBestLabel: UILabel!
    
    var takeCurrentScore = ""
    //var storeScores: [Int] = []
    var personalBest: Int = 0
    var currentScoreVar: Int = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let Background = UIImage.gifImageWithName("Background")
        ImageView3.image = Background
        
        currentGameScore.text = "\(takeCurrentScore)"
        
        currentScoreVar = (Int)(takeCurrentScore) ?? 0
        
        if currentScoreVar > personalBest {
            personalBest = currentScoreVar
        }
        
        personalBestLabel.text = "\(personalBest)"
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
