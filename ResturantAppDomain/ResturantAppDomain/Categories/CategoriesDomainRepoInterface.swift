//
//  CategoriesDomainRepoInterface.swift
//  ResturantAppDomain
//
//  Created by Mohammed Abd El-Aty on 25/01/2021.
//

import Foundation

public protocol CategoriesDomainRepoInterface {
    func getCategoriesList(handler: @escaping ((Result<CategoriesResultEntity,Error>)) -> (Void))
}
