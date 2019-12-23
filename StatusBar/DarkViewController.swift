import UIKit

class DarkViewController: UIViewController {
    
    var isDarkStatusBar = false {
        didSet {
            UIView.animate(withDuration: 0.4) {
                self.setNeedsStatusBarAppearanceUpdate()
            }
        }
    }
    
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return isDarkStatusBar ? .default : .lightContent
    }
    
    
    @IBAction func updateStatusBarButtonTapped(_ sender: UIButton) {
        isDarkStatusBar.toggle()
    }


    @IBAction func dismissButtonTapped(_ sender: UIButton) {
        dismiss(animated: true)
    }
}
