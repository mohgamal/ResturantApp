//
//  CategoriesRemoteDataSource.swift
//  ResturnatAppData
//
//  Created by Mohammed Abd El-Aty on 26/01/2021.
//

import Foundation
import ResturantAppDomain

public protocol CategoriesRemoteDataSourceInterface {
    init(urlString: String)
    
    func getCategoriesList(handler: @escaping (Result<CategoriesResultModel,Error>) -> (Void))
}

public class ClassifiedsRemoteDataSource: CategoriesRemoteDataSourceInterface {

    let urlString: String
    
    required public init(urlString: String ) {
        self.urlString = urlString
    }
    
    public func getCategoriesList(handler: @escaping (Result<CategoriesResultModel,Error>)  -> (Void)) {
        guard let url = URL(string: urlString) else {
            fatalError("Service URL is nil")
        }
        
        let task  = URLSession.shared.dataTask(with: url) { (data, response, error) in
            guard let data = data else {
              if let error = error {
                handler(.failure(error))
              }

              fatalError("Data and error should never both be nil")
            }

            let decoder = JSONDecoder()

            let result = Result(catching: {
              try decoder.decode(CategoriesResultModel.self, from: data)
            })

            handler(result)
        }
        task.resume()
    }
}
