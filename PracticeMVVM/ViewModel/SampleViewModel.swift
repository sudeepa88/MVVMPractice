//
//  SampleViewModel.swift
//  PracticeMVVM
//
//  Created by Sudeepa Pal on 02/12/24.
//

import Foundation



class SampleViewModel {
    
   
    private var products: Welcome = []
    
    func numberOfRows(in section: Int) -> Int {
        return products.count
    }
    
    func getData(completion: @escaping () -> Void) {
        APICaller.getAllProducts {  [weak self]  result in
            switch result {
            case .success(let data ):
                print("Counts Are",data.count)
                self?.products = data
                
            case .failure(let error):
                print("Error eee")
            }
        }
    }
    
}
