//
//  SimbadResponse.swift
//  SwiftSimbad
//
//  Created by Yuma decaux on 5/1/2025.
//

import Foundation


public struct SimbadResponse: Codable {
    public var metadata:[[String: String]]
    public var data: [[String]]
}

