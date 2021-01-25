//
//  MetaDataModel.swift
//  ResturantAppDomain
//
//  Created by Mohammed Abd El-Aty on 25/01/2021.
//

import Foundation

public struct MetaDataModel: Codable {
    
    public let currentPage: Int?
    public let from: Int?
    public let lastPage: Int?
    public let path: String
    public let perPage: Int?
    public let to: Int?
    public let total: Int?
    
    public init (currentPage: Int?, from: Int?, lastPage: Int?, path: String?, perPage: String?, to: Int?, total: Int?) {
        self.currentPage = currentPage
        self.from = from
        self.lastPage = lastPage
        self.path = path
        self.perPage = perPage
        self.to = to
        self.total = total
    }
}
