//
//  TestViewController.swift
//  PracticeMVVM
//
//  Created by Sudeepa Pal on 01/12/24.
//

import UIKit

class TestViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    
    var viewModel: SampleViewModel = SampleViewModel()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.title = "Home"
        view.backgroundColor = .red
        self.tableView.dataSource = self
        self.tableView.delegate = self
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "Cell")
    }

    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated) // Call super to ensure proper lifecycle behavior

        viewModel.getData {
            DispatchQueue.main.async {
                self.tableView.reloadData()
            }
        }
    }


}
