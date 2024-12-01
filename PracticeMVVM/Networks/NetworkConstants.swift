//
//  NetworkConstants.swift
//  PracticeMVVM
//
//  Created by Sudeepa Pal on 02/12/24.
//

import Foundation



class NetworkConstants {
    public static var shared: NetworkConstants = NetworkConstants()
    
    
    private init() {
        
    }
    
    public var serverAddress: String {
        get {
            return "https://fakestoreapi.com/products"
        }
    }
}
