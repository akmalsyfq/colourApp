//
//  ColorsDetailVC.swift
//  ColorApp
//
//  Created by AKMAL SYAFIQ BIN MOHD KHAIRUDIN on 18/01/2024.
//

import UIKit

class ColorsDetailVC: UIViewController {

    var color : UIColor?
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = color ?? .systemPink

        // Do any additional setup after loading the view.
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
