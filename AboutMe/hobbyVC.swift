//
//  hobbyVC.swift
//  AboutMe
//
//  Created by Phyllis Hollingshead on 3/5/15.
//  Copyright (c) 2015 Phyllis Hollingshead. All rights reserved.
//

import UIKit

var row = 0
var hobbyName = ""

class hobbyVC: UITableViewController {

    var hobbies = ["Knitting", "Crocheting"]

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Potentially incomplete method implementation.
        // Return the number of sections.
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete method implementation.
        // Return the number of rows in the section.
        return hobbies.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "aHobby", for: indexPath) as UITableViewCell
        
        let hobby = hobbies[indexPath.row]
        
        cell.textLabel?.text = hobby
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        row = indexPath.row
        hobbyName = hobbies[row]
    }
   
}
