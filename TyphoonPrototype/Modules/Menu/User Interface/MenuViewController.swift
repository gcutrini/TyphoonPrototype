//
//  MenuViewController.swift
//  TyphoonPrototype
//
//  Created by Gabriel Horacio Cutrini on 1/29/16.
//  Copyright © 2016 PlayMobile. All rights reserved.
//

import UIKit

class MenuViewController: UITableViewController {
    var presenter: IMenuPresenter!
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        if indexPath.row == 1 {
            presenter.pushFrontModule2()
        }
    }
}
