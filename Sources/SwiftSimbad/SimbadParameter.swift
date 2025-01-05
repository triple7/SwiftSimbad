//
//  SimbadParameter.swift
//  SwiftSimbad
//
//  Created by Yuma decaux on 4/1/2025.
//

import Foundation

public struct SimbadParameter:Codable {
    let variable:String
    let operation:SimbadOperator
    let value:String
    var postOperator:SimbadOperator?

    
    public init(variable: String, operation: SimbadOperator, value: String) {
        self.variable = variable
        self.operation = operation
        self.value = value
    }
    
    
    public mutating func setPostOperator(postOperator: SimbadOperator) {
        self.postOperator = postOperator
    }
    
    
    public func getPredicate() -> String {
        var output = "\(variable) \(operation.id)"
        output = operation == .like ? "\(output) '\(value)'" : "\(output) \(value)"
        return postOperator == nil ? output : "\(output) \(postOperator!)"
    }
    
}


