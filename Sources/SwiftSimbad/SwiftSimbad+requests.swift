import Foundation

extension SwiftSimbad {
    
    /** request returned data check
     */
    private func requestIsValid(error: Error?, response: URLResponse?, url: URL? = nil) -> Bool {
        var gotError = false
        if error != nil {
            self.sysLog.append(SimbadSyslog(log: .RequestError, message: error!.localizedDescription))
            gotError = true
        }
        if (response as? HTTPURLResponse) == nil {
            self.sysLog.append(SimbadSyslog(log: .RequestError, message: "response timed out"))
            gotError = true
        }
        let urlResponse = (response as! HTTPURLResponse)
        if urlResponse.statusCode != 200 {
            let error = NSError(domain: "com.error", code: urlResponse.statusCode)
            self.sysLog.append(SimbadSyslog(log: .RequestError, message: error.localizedDescription))
            gotError = true
        }
        if !gotError {
            let message = url != nil ? url!.absoluteString : "data"
            self.sysLog.append(SimbadSyslog(log: .OK, message: "\(message) downloaded"))
        }
        return !gotError
    }

    public func querySimbad(selectQuery: String? = nil, table: SimbadTable, fields: [String], parameters: [SimbadParameter], format: SimbadFormat = .json, token: String? = nil, closure: @escaping (SimbadResponse)-> Void) {
        /** Gets a TAP (Table Access protocol) result
         Params:
         table: the table to query
         fields: which fields to use
         params: the WHERe clause elements
         format: what format to return
         token: the ADS API token
         closure: the resulting json data
         */
        var simbadRequest:SimbadRequest
        if let selectQuery = selectQuery {
            simbadRequest = SimbadRequest()
        } else {
            simbadRequest = SimbadRequest(table: table, fields: fields, parameters: parameters, format: format)
        }
        let configuration = URLSessionConfiguration.ephemeral
        let queue = OperationQueue.main
        let session = URLSession(configuration: configuration, delegate: self, delegateQueue: queue)
        var request = URLRequest(url: simbadRequest.getUrl(selectQuery))
        request.httpMethod = "POST"
        if token != nil {
            request.addValue("Bearer \(token!)", forHTTPHeaderField: "Authorization")
        }

//        print(simbadRequest.getUrl(selectQuery).absoluteString)

        let task = session.dataTask(with: request) { [weak self] data, response, error in
            
            if self!.requestIsValid(error: error, response: response) {
//                print(String(data: data!, encoding: .utf8))
                let result = try! JSONDecoder().decode(SimbadResponse.self, from: data!)

                self?.sysLog.append(SimbadSyslog(log: .OK, message: "query \(simbadRequest.getSelectQuery()) result downloaded"))
                closure(result)
                return

            }
        }
        task.resume()
    }

    
}

