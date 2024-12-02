//
//  SampleViewModel.swift
//  PracticeMVVM
//
//  Created by Sudeepa Pal on 02/12/24.
//

import Foundation
import UIKit



class SampleViewModel {
    
    
    private var products: [WelcomeElement] = []
    
    func numberOfRows(in section: Int) -> Int {
        print("Products array:", products)
        return products.count
    }
    
    func getData(completion: @escaping () -> Void) {
        
        APICaller.getAllProducts {  [weak self]  result in
            switch result {
            case .success(let data ):
                print("Counts Are",data.count)
                self?.products = data
                
                completion()
            case .failure(let error):
                print("Error eee", error)
                completion()
            }
        }
    }
    
    
}
