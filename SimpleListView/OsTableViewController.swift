//
//  OsTableViewController.swift
//  SimpleListView
//
//  Created by Raja on 9/23/16.
//  Copyright © 2016 Sedin Technologies. All rights reserved.
//

import UIKit

class OsTableViewController: UITableViewController {
    
    
    var oslist = [OS]()

    override func viewDidLoad() {
        super.viewDidLoad()
        loadSamples()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func loadSamples(){
        
        let os1 = OS(name: "Android")
        let os2 = OS(name: "iOS")
        let os3 = OS(name: "Windows")
        oslist += [os1, os2, os3]
    
    }

    

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return oslist.count
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
    
        
        let cellIdentifier = "OSTableViewCell"
        let cell = tableView.dequeueReusableCellWithIdentifier(cellIdentifier, forIndexPath: indexPath) as! MobileTestTableViewCell
        
        // Fetches the appropriate meal for the data source layout.
        let ostext = oslist[indexPath.row]
        
        cell.osname.text = ostext.name
         

        return cell
    }


   
}
