//
//  Links.swift
//  ResturantAppDomain
//
//  Created by Mohammed Abd El-Aty on 25/01/2021.
//

import Foundation

struct LinksEntity: Codable {
    
    public let first: String?
    public let last: String?
    public let prev: String?
    public let next: String?
    
    public init (first: String?, last: String?, prev: String?, next: String?) {
        self.first = first
        self.last = last
        self.prev = prev
        self.next = next
    }
}
