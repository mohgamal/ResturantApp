//
//  CategoriesEntity.swift
//  ResturantAppDomain
//
//  Created by Mohammed Abd El-Aty on 25/01/2021.
//

import Foundation

public struct CategoriesResultEntity: Codable {
    
    public let categories: [CategoryEntity]?
    public let links: LinksEntity?
    public let meta: MetaDataEntity?

    public struct CategoryEntity: Codable {
        public let id: UUID?
        public let name: String?
        public let nameLocalized: String?
        public let refrence: String?
        public let image: String?
        public let createdAt: String?
        public let updatedAt: String?
        public let deletedAt: String?
        
        public init (id: UUID?, name: String?, nameLocalized: String?, refrence: String?, image: String?, createdAt: String?, updatedAt: String?, deletedAt: String?) {
            self.id = id
            self.name = name
            self.nameLocalized = nameLocalized
            self.refrence = refrence
            self.image = image
            self.createdAt = createdAt
            self.updatedAt = updatedAt
            self.deletedAt = deletedAt
        }
    }
    
    public init (categories: [CategoryEntity]?, links: LinksEntity?, meta: MetaDataEntity?) {
        self.categories = categories
        self.links = links
        self.meta = meta
    }
}
