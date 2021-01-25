//
//  LinksModel.swift
//  ResturnatAppData
//
//  Created by Mohammed Abd El-Aty on 25/01/2021.
//

import ResturantAppDomain

public struct LinksModel: Codable {
    
    public let first: String?
    public let last: String?
    public let prev: String?
    public let next: String?
    
    func dotLinksEntity() -> LinksEntity {
        return LinksEntity(first: first, last: last, prev: prev, next: next)
    }
}
