//
//  CategoriesInteractor.swift
//  ResturantAppDomain
//
//  Created by Mohammed Abd El-Aty on 26/01/2021.
//

import Foundation

public protocol CategoriesInteractorInterface {
    func getCategoriesList(handler: @escaping (Result<CategoriesResultEntity,Error>) -> (Void))
}

public class CategoriesInteractor: CategoriesInteractorInterface {
    
    let categoriesDomainRepo: CategoriesDomainRepoInterface
    
    public init (categoriesDomainRepo: CategoriesDomainRepoInterface) {
        self.categoriesDomainRepo = categoriesDomainRepo
    }
    
    public func getCategoriesList(handler: @escaping (Result<CategoriesResultEntity,Error>) -> (Void)) {
        categoriesDomainRepo.getCategoriesList { (categoriesDomainModel) in
            handler(categoriesDomainModel)
        }
    }
}
