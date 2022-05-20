//
//  ViewController.swift
//  GifTestMario
//
//  Created by user on 2022/5/20.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var iv: UIImageView!
    
    let gifManager = SwiftyGifManager(memoryLimit:100)

    let images = ["2.gif", "5.gif"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        test()
    }
    
    func test() {
        if let image = try? UIImage(imageName: images[0]) {
            iv.setImage(image, manager: gifManager, loopCount: -1)
        }
        DispatchQueue.main.asyncAfter(deadline: .now() + 5, execute: {
            self.iv.stopAnimatingGif()

//            if let image = try? UIImage(imageName: self.images[1]) {
//                self.iv.setImage(image, manager: self.gifManager, loopCount: 5)
//            }
        })
        
//        DispatchQueue.main.asyncAfter(deadline: .now() + 5, execute: {
//            if let image = try? UIImage(imageName: self.images[1]) {
//                self.iv.stopAnimatingGif()
//            }
//        })
    }
}

