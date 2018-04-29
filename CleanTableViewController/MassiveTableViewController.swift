//
//  MassiveTableViewController.swift
//  TableViewControllerExample
//
//  Created by Matthias Danner on 29.04.18.
//  Copyright © 2018 Matthias Danner. All rights reserved.
//

import UIKit

class MassiveTableViewController: UITableViewController {
    
    private var userName: String? = nil
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.userName = "Mr X" // load userName
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 {
            if self.userName != nil {
                // show username cell
                return 1
            } else {
                // show login cells
                return 2
            }
        } else if section == 1 {
            return 2
        }
        return 0
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellIdentifier", for: indexPath))
        if indexPath.section == 0 {
            if indexPath.row == 0 {
                if self.userName != nil {
                    // show username cell
                } else {
                    // show usename input cell
                }
            } else if indexPath.row == 1 {
                // show passwordInput input cell
            }
        } else if indexPath.section == 1 {
            if indexPath.row == 0 {
                // show version info cell
            } else  if indexPath.row == 1 {
                // show terms and conditions cell
            }
        }
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        if indexPath.section == 0 {
            if indexPath.row == 0 && self.userName != nil {
                // go to user settings
            }
        } else if indexPath.section == 1 {
            if indexPath.row == 0 {
                // go to version info
            } else if indexPath.row == 1 {
                // go to terms and conditions
            }
        }
    }
}

