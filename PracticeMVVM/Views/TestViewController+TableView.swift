//
//  TestViewController+TableView.swift
//  PracticeMVVM
//
//  Created by Sudeepa Pal on 02/12/24.
//

import Foundation
import UIKit


extension TestViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        print("No of rows in section", viewModel.numberOfRows(in: section))
        return viewModel.numberOfRows(in: section)
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        cell.textLabel?.text = "Sample"
        return cell
    }
    
    
}
