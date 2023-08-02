import UIKit

class HomeScreenVC: UIViewController {

    @IBOutlet var ImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        

        let Background = UIImage.gifImageWithName("Background")
        ImageView.image = Background
    }
    
}
