
import UIKit

class UserLoginViewController: UIViewController
{
var txtUser:UITextField!
var txtPwd:UITextField!
var btnLogin:UIButton!
    override func viewDidLoad(){
        super.viewDidLoad()
        // get the screen size
        let mainSize = UIScreen.main.bounds.size
        // login box background
        let vLogin = UIView(frame:CGRect(x: 30, y: 200, width: mainSize.width - 30, height: 250))
        vLogin.layer.borderWidth = 0.5
        vLogin.layer.borderColor = UIColor.lightGray.cgColor
        vLogin.backgroundColor = UIColor.white
        self.view.addSubview (vLogin)
        // user name input box
        txtUser = UITextField(frame:CGRect(x: 30, y: 30, width: vLogin.frame.size.width - 60, height: 44))
        //txtUser. delegate = self
        txtUser.layer.cornerRadius = 5
        txtUser.layer.borderColor = UIColor.lightGray.cgColor
        txtUser.layer.borderWidth = 0.5
        txtUser.autocapitalizationType = .none
        txtUser.leftView = UIView(frame:CGRect (x: 8, y: 0, width: 44, height: 44))
        txtUser.leftViewMode = UITextField.ViewMode.always
        // the icon to the left of the user name input box
        let imgUser = UIImageView (frame :CGRect(x: 11, y: 11, width: 22, height: 22))
        imgUser.image = UIImage (named: "iconfont-user")
        txtUser.leftView!.addSubview (imgUser)
        vLogin.addSubview (txtUser)
        // password entry box
        txtPwd = UITextField(frame:CGRect(x: 30, y: 98, width: vLogin.frame.size.width - 60, height: 44))
            //txtPwd.delegate =self
        txtPwd.layer.cornerRadius = 5
        txtPwd.layer.borderColor = UIColor.lightGray.cgColor
        txtPwd.layer.borderWidth = 0.5
        txtPwd.isSecureTextEntry = true
        txtPwd.leftView = UIView(frame:CGRect(x: 0, y: 8, width: 44, height: 44))
        txtPwd.leftViewMode = UITextField.ViewMode.always
        // icon to the left of password entry box
        let imgPwd = UIImageView(frame: CGRect(x: 11, y: 11, width: 22, height: 22))
        imgPwd.image = UIImage (named: "Iconfont-Password")
        txtPwd.leftView!.addSubview (imgPwd)
        vLogin.addSubview (txtPwd)
        // add the login button
       // btnLogin = UIButton(frame: CGRect(x: mainSize.width/2-120/2, у: 150, width: 120, height: 50))
        btnLogin  = UIButton(frame: CGRect(x: mainSize.width/2-120/2, y: 150, width: 120, height: 50))
        btnLogin.setTitle (" 登陆 ", for:.normal)
        btnLogin.backgroundColor = UIColor.gray
        vLogin.addSubview(btnLogin)

        // add the action
        btnLogin.addTarget (self, action: #selector(loginEvent),
                            for: .touchUpInside)
        
    }
    @objc func loginEvent (){
        
        let Usercode = txtUser.text!
        let password = txtPwd.text!
        txtUser.resignFirstResponder()
        txtPwd.resignFirstResponder()
        
        if Usercode == "gih" && password == "123"
        {
        let mainBoard:UIStoryboard!  = UIStoryboard(name:
        "Main", bundle: nil)
            let VCMain = mainBoard!
                .instantiateViewController(withIdentifier: "vcMain")
        UIApplication.shared.windows[0].rootViewController = VCMain
        }
        else
        {
        //self.dismiss (animated: true, completion: nil)
        let p = UIAlertController(title: "l登陆失败 ",message:" 登录名或者密码错误 ", preferredStyle:.alert)
            p.addAction (UIAlertAction(title:" ok ", style:.default,handler:{( _:UIAlertAction ) in
                self.txtPwd.text = ""}))
       
        present(p, animated: false, completion: nil)
            
        }
    }
    
}
