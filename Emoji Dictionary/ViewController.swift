//
//  ViewController.swift
//  Emoji Dictionary
//
//  Created by Ryan Denny on 12/4/16.
//  Copyright © 2016 Ryan Denny. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var emojiListTableView: UITableView!
    
    //new array of emojis
    var emojis = ["😎","😇","😍","👻","👳","👠","😡","😳","🤓","💩","🙏","👊"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        emojiListTableView.dataSource = self
        emojiListTableView.delegate = self
    
        
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return emojis.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        //cell.textLabel?.text = "😎"
        cell.textLabel?.text = emojis[indexPath.row]
        return cell
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

