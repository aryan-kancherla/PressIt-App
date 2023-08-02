//
//  HomeScreenVC.swift
//  final-project
//
//  Created by DPI Student 030 on 7/20/23.
//

import UIKit

class HomeScreenVC: UIViewController {

    @IBOutlet var ImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        

        let Background = UIImage.gifImageWithName("Background")
        ImageView.image = Background
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
