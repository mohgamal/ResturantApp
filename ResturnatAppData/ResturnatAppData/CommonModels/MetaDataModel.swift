//
//  MetaDataModel.swift
//  ResturnatAppData
//
//  Created by Mohammed Abd El-Aty on 25/01/2021.
//

import Foundation
import ResturantAppDomain

public struct MetaDataModel: Codable {
    
    public let currentPage: Int?
    public let from: Int?
    public let lastPage: Int?
    public let path: String?
    public let perPage: Int?
    public let to: Int?
    public let total: Int?
    
    func dotMetaDataEntity() -> MetaDataEntity {
        return MetaDataEntity(currentPage: currentPage, from: from, lastPage: lastPage, path: path, perPage: perPage, to: to, total: total)
    }
}
