//
//  CategoriesModel.swift
//  ResturnatAppData
//
//  Created by Mohammed Abd El-Aty on 25/01/2021.
//

import Foundation
import ResturantAppDomain

public struct CategoriesResultModel: Codable {
    public let data: [CategoryModel]?
    public let links: LinksModel?
    public let meta: MetaDataModel?

    public struct CategoryModel: Codable {
        public let id: UUID?
        public let name: String?
        public let name_localized: String?
        public let refrence: String?
        public let image: String?
        public let created_at: String?
        public let updated_at: String?
        public let deleted_at: String?
        
        func dotCategoriesEntity() -> CategoriesResultEntity.CategoryEntity {
            return CategoriesResultEntity.CategoryEntity(id: id, name: name, nameLocalized: name_localized, refrence: refrence, image: image, createdAt: created_at, updatedAt: updated_at, deletedAt: deleted_at)
        }
    }
    
    func getCategoriesList() -> [CategoriesResultEntity.CategoryEntity] {
        var categoriesResult: [CategoriesResultEntity.CategoryEntity] = []
        
        for category in data ?? [] {
            categoriesResult.append(category.dotCategoriesEntity())
        }
        
        return categoriesResult
    }
    
    func dotCategoriesResultEntity() -> CategoriesResultEntity {
        return CategoriesResultEntity(categories: self.getCategoriesList(), links: links?.dotLinksEntity(), meta: meta?.dotMetaDataEntity())
    }
}
