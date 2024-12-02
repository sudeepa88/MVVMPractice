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
        
        viewModel.getData { [weak self] in
                DispatchQueue.main.async {
                    print("View Model count is", self?.viewModel.numberOfRows(in: 0) ?? 0)
                    self?.tableView.reloadData()
                }
            }
        
    }
}
