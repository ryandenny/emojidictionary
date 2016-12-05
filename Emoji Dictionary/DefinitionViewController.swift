//
//  DefinitionViewController.swift
//  Emoji Dictionary
//
//  Created by Ryan Denny on 12/4/16.
//  Copyright © 2016 Ryan Denny. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {
    
    @IBOutlet weak var definitionLabel: UILabel!
    @IBOutlet weak var emojiLabel: UILabel!
    
    var emoji = "NO EMOJI YET"
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //print(emoji)
        emojiLabel.text = emoji
        
        //definitionLabel.text = "Hello"
        
        if emoji == "👊" {
            definitionLabel.text = "FIST BUMP!"
            
        }
        else {
            definitionLabel.text = "Emoji description here"
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
