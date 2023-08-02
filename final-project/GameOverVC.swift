import UIKit

class GameOverVC: UIViewController {

    @IBOutlet var ImageView3: UIImageView!
    
    @IBOutlet var currentGameScore: UILabel!
    
    @IBOutlet var personalBestLabel: UILabel!
    
    var takeCurrentScore = ""
    var currentScoreVar: Int = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let Background = UIImage.gifImageWithName("Background")
        ImageView3.image = Background
        
        currentGameScore.text = "\(takeCurrentScore)"
        
    }

}
