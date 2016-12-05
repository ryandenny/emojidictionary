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
    
    //when I tap on a row
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let emoji = emojis[indexPath.row] //send the current emoji selected
        performSegue(withIdentifier: "moveSegue", sender: emoji)
    }
    
    //this is how we send stuff to the new segue
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        //print(sender)
        let defVC = segue.destination as! DefinitionViewController
        defVC.emoji = sender as! String
    }
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

