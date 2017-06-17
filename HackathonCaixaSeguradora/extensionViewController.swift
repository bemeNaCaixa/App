import UIKit

extension ViewController {
    
    func assignBackground(color: UIColor) {
        
        
        var imageView : UIImageView!
        
        imageView = UIImageView(frame: view.bounds)
        imageView.contentMode =  UIViewContentMode.scaleAspectFill
        imageView.clipsToBounds = true
        imageView.backgroundColor = color
        imageView.center = view.center
        
        view.addSubview(imageView)
        self.view.sendSubview(toBack: imageView)
    }


}
