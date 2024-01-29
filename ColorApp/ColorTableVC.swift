//
//  ColorTableVC.swift
//  ColorApp
//
//  Created by AKMAL SYAFIQ BIN MOHD KHAIRUDIN on 18/01/2024.
//

import UIKit

class ColorTableVC: UIViewController {
    
    //table view and collection view needs an array
    var colors:[UIColor]=[]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        createrandomcolor()
    }
    
    func createrandomcolor(){
        for _ in 0...49{
            colors.append(randcolor())
        }//append each random color to array
    }
    
    func randcolor()-> UIColor{
        let randomcolor = UIColor(red: CGFloat.random(in: 0...1),
                                  green: CGFloat.random(in: 0...1),
                                  blue: CGFloat.random(in: 0...1),
                                  alpha: 1)
        return randomcolor
    }//randomize color created and return rgb number
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let gotoVC = segue.destination as! ColorsDetailVC
        gotoVC.color = sender as? UIColor
    }
}



extension ColorTableVC: UITableViewDelegate, UITableViewDataSource {
      
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return colors.count
    }//tell num of rows
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier:"ColorCell" ) else {return UITableViewCell()}
        let color = colors[indexPath.row]
        cell.backgroundColor = color
        return cell
    }//shows back the rows
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let color = colors[indexPath.row]
        performSegue(withIdentifier: "ToColorDetailsVC", sender: color)
    }//send to next screen
    
}
