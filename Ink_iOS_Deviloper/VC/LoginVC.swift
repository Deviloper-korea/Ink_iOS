import UIKit



extension UITextField {
    func addBorderBottom(height: CGFloat, color: UIColor) {
        let border = CALayer()
        border.frame = CGRect(x: 0, y: self.frame.height-height, width: self.frame.width, height: height)
        border.backgroundColor = color.cgColor
        self.layer.addSublayer(border)
    }
}


class LoginVC: UIViewController {
    
    
    @IBAction func nextpage(_ sender: Any) {
        
        let nextView = self.storyboard!.instantiateViewController(withIdentifier: "tapbarVC")
            self.present(nextView, animated: true)
    }
    
    @IBAction func joinpage(_ sender: Any) {
        let joinView = self.storyboard!.instantiateViewController(withIdentifier: "joinVC")
        self.present(joinView, animated: true)
    }
    
    
    @IBOutlet weak var Id: UITextField!
    @IBOutlet weak var Pw: UITextField!
    
   
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Id.placeholder = "이름"
        Id.addBorderBottom(height: 1.0, color: UIColor.brown)
        Pw.addBorderBottom(height: 1.0, color: UIColor.brown)
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}
