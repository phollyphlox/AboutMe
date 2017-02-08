//
//  detailVC.swift
//  AboutMe
//
//  Created by Phyllis Hollingshead on 3/5/15.
//  Copyright (c) 2015 Phyllis Hollingshead. All rights reserved.
//

import UIKit

class detailVC: UITableViewController {

    override func viewDidLoad() {
        self.title = hobbyName
    }

    var details = ["I love knitting socks", "I love crocheting afghans"]
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Potentially incomplete method implementation.
        // Return the number of sections.
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete method implementation.
        // Return the number of rows in the section.
        return 1
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "aDetail", for: indexPath) as UITableViewCell
        
        let detail = details[row]
        
        cell.textLabel?.text = detail
        
        return cell
    }

}
