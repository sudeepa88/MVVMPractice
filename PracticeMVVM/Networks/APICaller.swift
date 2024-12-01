//
//  APICaller.swift
//  PracticeMVVM
//
//  Created by Sudeepa Pal on 02/12/24.
//

import Foundation




enum NetworkError: Error {
    case urlError
    case canNotParseData
}


public class APICaller {
    
    static func getAllProducts( completionHandler: @escaping (_ result: Result<Welcome, NetworkError>) -> Void ) {
        
        
        let urlString = NetworkConstants.shared.serverAddress
        //1. Now we need to convert it into an URL
        guard let url = URL(string: urlString) else {
            completionHandler(.failure(.urlError))
            return
        }
        
        print("the Url is ", url)
        
        // 2. if URL Convertion is successfull then we will call URLSession for parsing the data
        URLSession.shared.dataTask(with: url) { dataResponse, urlResponse, error in
            if error == nil ,
               let data = dataResponse, let resultData =  try?
                JSONDecoder().decode(Welcome.self, from: data) {
                
                //print("The result data is", resultData)
                completionHandler(.success(resultData))
                
                
            } else {
                //print("Data is not getting Parsed")
                completionHandler(.failure(.canNotParseData))
            }
            
            //print("Data response is", data)
            
        }.resume()
        
        
        
    }
    
}
