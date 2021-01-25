//
//  CategoriesModel.swift
//  ResturnatAppData
//
//  Created by Mohammed Abd El-Aty on 25/01/2021.
//

import Foundation
import ResturantAppDomain

public struct CategoriesResultModel: Codable {
    public let categories: [CategoryModel]?
    public let links: LinksModel?
    public let meta: MetaDataModel?

    public struct CategoryModel: Codable {
        public let id: UUID?
        public let name: String?
        public let nameLocalized: String?
        public let refrence: String?
        public let image: String?
        public let createdAt: String?
        public let updatedAt: String?
        public let deletedAt: String?
        
        func dotCategoriesEntity() -> CategoriesResultEntity.CategoryEntity {
            return CategoriesResultEntity.CategoryEntity(id: id, name: name, nameLocalized: nameLocalized, refrence: refrence, image: image, createdAt: createdAt, updatedAt: updatedAt, deletedAt: deletedAt)
        }
    }
    
    func getCategoriesList() -> [CategoriesResultEntity.CategoryEntity] {
        var categoriesResult: [CategoriesResultEntity.CategoryEntity] = []
        
        for category in categories ?? [] {
            categoriesResult.append(category.dotCategoriesEntity())
        }
        
        return categoriesResult
    }
    
    func dotCategoriesResultEntity() -> CategoriesResultEntity {
        return CategoriesResultEntity(categories: self.getCategoriesList(), links: links?.dotLinksEntity(), meta: meta?.dotMetaDataEntity())
    }
}
