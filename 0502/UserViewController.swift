

import UIKit

class UserViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func loginPressd(_ sender: UIButton) {
        let loginVC = UserLoginViewController()
        present(loginVC, animated: true, completion: nil)
    }
    
    
    @IBAction func Login3rdPressd(_ sender: UIButton) {
        let logins3rdVC = User3rdViewController()
        present(logins3rdVC, animated: true, completion: nil)
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
