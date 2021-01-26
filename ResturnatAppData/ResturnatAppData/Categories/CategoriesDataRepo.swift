//
//  CategoriesDataRepo.swift
//  ResturnatAppData
//
//  Created by Mohammed Abd El-Aty on 26/01/2021.
//

import Foundation
import ResturantAppDomain

public class CategoriesDataRepo: CategoriesDomainRepoInterface {
    
    let categoriesRemoteDataSource: CategoriesRemoteDataSourceInterface
    
    public init (categoriesRemoteDataSource: CategoriesRemoteDataSourceInterface) {
        self.categoriesRemoteDataSource = categoriesRemoteDataSource
    }
    
    public func getCategoriesList(handler: @escaping (Result<CategoriesResultEntity,Error>) -> (Void)) {
        
        categoriesRemoteDataSource.getCategoriesList { result in
            switch result {
            case .success(let categoriesModel):
                let categoriesResultModel = CategoriesResultEntity(categories: categoriesModel.getCategoriesList(), links: categoriesModel.links?.dotLinksEntity(), meta: categoriesModel.meta?.dotMetaDataEntity())
                handler(.success(categoriesResultModel))
            case .failure(let error):
                handler(.failure(error))
            }
        }
    }
}
