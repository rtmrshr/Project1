//
//  DetailViewController.swift
//  Project1
//
//  Created by  ratmir on 01.12.2022.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet var imageView: UIImageView!
    
    var selectedImage: String?
    var selectedImageNumber: Int?
    var picturesAmout: Int? // this is a picture to load!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // That fix LARGE text style in DetailVC. It's large because we wrote navigationController?.navigationBar.prefersLargeTitles = true in ViewController, it made all VC titles large
        navigationItem.largeTitleDisplayMode = .never
        
        if selectedImageNumber != nil && picturesAmout != nil {
            title = "Picture \(selectedImageNumber!) of \(picturesAmout!)"
        }
        // Do any additional setup after loading the view.
        if let imageToLoad = selectedImage {
            imageView.image = UIImage(named: imageToLoad)
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.hidesBarsOnTap = true
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.hidesBarsOnTap = false
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
