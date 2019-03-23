//
//  ColorPickerViewController.swift
//  ColorPicker
//
//  Created by Boao Huang on 3/22/19.
//  Copyright © 2019 Boao Huang. All rights reserved.
//

import UIKit

class ColorPickerViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {

    @IBOutlet weak var Label: UILabel!
    @IBOutlet weak var pickerView: UIPickerView!
    
    
    let colors = ["Red", "Orange", "Yellow", "Green", "Blue", "Purple"]
    
    var allBackgroundColors = [UIColor.red, UIColor.orange, UIColor.yellow, UIColor.green, UIColor.blue, UIColor.purple]
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return colors[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return colors.count
    }
    
   
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        
        Label.text = colors[row]
        
        if(row == 0)
        {
            view.backgroundColor = UIColor.red
        }
        else if(row == 1)
        {
            view.backgroundColor = UIColor.orange
        }
        else if(row == 2)
        {
            view.backgroundColor = UIColor.yellow
        }
        else if(row == 3)
        {
            view.backgroundColor = UIColor.green
        }
        else if(row == 4)
        {
            view.backgroundColor = UIColor.blue
        }
        else if(row == 5)
        {
            view.backgroundColor = UIColor.purple
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor.red
        
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
