//
//  CleanTableViewController.swift
//  TableViewControllerExample
//
//  Created by Matthias Danner on 29.04.18.
//  Copyright © 2018 Matthias Danner. All rights reserved.
//

import UIKit

class CleanTableViewController: UITableViewController {
    
    private enum CellType {
        case userName,
        userNameInput,
        passwordInput,
        versionInfo,
        termsAndConditions
    }
    
    private var rows: [[CellType]] = []
    
    private var userName: String? = nil
    

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.userName = "John Doe" // load userName
        self.initTableView()
    }
    
    private func initTableView() {
        self.rows = []
        if self.userName == nil {
            self.rows.append([.userNameInput, .passwordInput])
        } else {
            self.rows.append([.userName])
        }
        self.rows.append([.versionInfo, .termsAndConditions])
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return self.rows.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.rows[section].count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellIdentifier", for: indexPath)
        let cellType = self.rows[indexPath.section][indexPath.row]
        switch cellType {
        case .userName:
            // show username cell
            break; // the break statement is only for demonstration purpose, to get rid of the compile time error, when there is no statement
        case .userNameInput:
            // show usename input cell
            break;
        case .passwordInput:
            // show passwordInput input cell
            break;
        case .versionInfo:
            // show version info cell
            break;
        case .termsAndConditions:
            // show terms and conditions cell
            break;
        }
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let cellType = self.rows[indexPath.section][indexPath.row]
        if cellType == .userName {
            // go to user settings
        } else if cellType == .versionInfo  {
            // go to version info
        } else if cellType == .termsAndConditions {
            // go to terms and conditions
        }
    }

}
