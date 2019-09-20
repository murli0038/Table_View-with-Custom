//
//  ViewController.swift
//  Table_View
//
//  Created by COE-029 on 20/09/19.
//  Copyright © 2019 COE-029. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDataSource,UITableViewDelegate
{
    let Studentdetail = [   ["Name":"Murli","Grade":"A+"],                                          //Array
                            ["Name":"Yogesh","Grade":"B+"],
                            ["Name":"Daivat","Grade":"A+"],
                            ["Name":"Dhruv","Grade":"C+"]
                        ]
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        let details = Studentdetail[indexPath.row]
                                                                                                    //cellForRowat
        cell.textLabel?.text = details["Name"]
        cell.detailTextLabel?.text = details ["Grade"]

        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return Studentdetail.count
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

