//
//  SimbadRequest.swift
//  SwiftSimbad
//
//  Created by Yuma decaux on 4/1/2025.
//


import Foundation


public struct SimbadRequest {
    /** simbad request formatter
     Creates a request Url from the API and configured parameters, with TAP sql like queries
     */
private let APIUrl = "https://simbad.cds.unistra.fr/simbad/sim-tap/sync"
    private let table:SimbadTable
    private let fields:[String]
    private(set) var parameters:[SimbadParameter]
    private let format:SimbadFormat
    
    public init(table: SimbadTable, fields: [String], parameters: [SimbadParameter], format: SimbadFormat = .json) {
        self.table = table
        self.fields = fields
        self.parameters = parameters
        self.format = format
    }
    
    
    public func getSelectQuery() -> String {
        let selectFields = fields.joined(separator: ",")
        let conditions = parameters.map{$0.getPredicate()}.joined(separator: " ")
        return "select \(selectFields) from \(table) where \(conditions)"
        }
    
    
    public func getUrl() -> URL {
        var url = URLComponents(string: APIUrl)
        url!.queryItems = [
            URLQueryItem(name: "query", value: self.getSelectQuery()),
            URLQueryItem(name: "request", value: "doQuery"),
            URLQueryItem(name: "lang", value: "request"),
            URLQueryItem(name: "format", value: self.format.id)
        ]
        return url!.url!
    }

}

