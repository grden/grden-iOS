//
//  ViewController.swift
//  TestApp
//
//  Created by 김정원 on 2024/04/06.
//

import UIKit

extension UISearchBar {
    func setTextFieldColor(_ color: UIColor) {
        for subView in self.subviews {
            for subSubView in subView.subviews {
                let view = subSubView as? UITextInputTraits
                if view != nil {
                    let textField = view as? UITextField
                    textField?.backgroundColor = color
                    break
                }
            }
        }
    }
}

class ViewController: UIViewController {
    @IBOutlet weak var TabBar: UITabBar!
    @IBOutlet weak var SearchBar: UISearchBar!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        TabBar.layer.cornerRadius = 16
        
        SearchBar.placeholder = "찾는 맛집 이름이 뭐예요?"
//        SearchBar.setTextFieldColor(UIColor.white)
//        SearchBar.searchTextField.layer.cornerRadius = 0
    }


}

