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
        print(simbadRequest.getUrl().absoluteString)
        let configuration = URLSessionConfiguration.ephemeral
        let queue = OperationQueue.main
        let session = URLSession(configuration: configuration, delegate: self, delegateQueue: queue)
        
        var request = URLRequest(url: selectQuery != nil ? simbadRequest.getUrl(selectQuery) : simbadRequest.getUrl())
        request.httpMethod = "POST"
        if token != nil {
            request.addValue("Bearer \(token!)", forHTTPHeaderField: "Authorization")
        }
        
        let task = session.dataTask(with: request) { [weak self] data, response, error in
            
            var result = SimbadResponse()
            if self!.requestIsValid(error: error, response: response) {
                print(String(data: data!, encoding: .utf8))
                switch table {
                case .allfluxes:
                result.setAllfluxes(try! JSONDecoder().decode(AllfluxesResponse.self, from: data!))
                case .alltypes:
                result.setAlltypes(try! JSONDecoder().decode(AlltypesResponse.self, from: data!))
                case .author:
                result.setAuthor(try! JSONDecoder().decode(AuthorResponse.self, from: data!))
                case .basic:
                result.setBasic(try! JSONDecoder().decode(BasicResponse.self, from: data!))
                case .biblio:
                result.setBiblio(try! JSONDecoder().decode(BiblioResponse.self, from: data!))
                case .cat:
                result.setCat(try! JSONDecoder().decode(CatResponse.self, from: data!))
                case .filter:
                result.setFilter(try! JSONDecoder().decode(FilterResponse.self, from: data!))
                case .flux:
                result.setFlux(try! JSONDecoder().decode(FluxResponse.self, from: data!))
                case .h_link:
                result.setH_link(try! JSONDecoder().decode(H_linkResponse.self, from: data!))
                case .has_ref:
                result.setHas_ref(try! JSONDecoder().decode(Has_refResponse.self, from: data!))
                case .ident:
                result.setIdent(try! JSONDecoder().decode(IdentResponse.self, from: data!))
                case .ids:
                result.setIds(try! JSONDecoder().decode(IdsResponse.self, from: data!))
                case .journals:
                result.setJournals(try! JSONDecoder().decode(JournalsResponse.self, from: data!))
                case .keywords:
                result.setKeywords(try! JSONDecoder().decode(KeywordsResponse.self, from: data!))
                case .mesDiameter:
                result.setMesDiameter(try! JSONDecoder().decode(MesDiameterResponse.self, from: data!))
                case .mesDistance:
                result.setMesDistance(try! JSONDecoder().decode(MesDistanceResponse.self, from: data!))
                case .mesFe_h:
                result.setMesFe_h(try! JSONDecoder().decode(MesFe_hResponse.self, from: data!))
                case .mesHerschel:
                result.setMesHerschel(try! JSONDecoder().decode(MesHerschelResponse.self, from: data!))
                case .mesISO:
                result.setMesISO(try! JSONDecoder().decode(MesISOResponse.self, from: data!))
                case .mesIUE:
                result.setMesIUE(try! JSONDecoder().decode(MesIUEResponse.self, from: data!))
                case .mesPLX:
                result.setMesPLX(try! JSONDecoder().decode(MesPLXResponse.self, from: data!))
                case .mesPM:
                result.setMesPM(try! JSONDecoder().decode(MesPMResponse.self, from: data!))
                case .mesRot:
                result.setMesRot(try! JSONDecoder().decode(MesRotResponse.self, from: data!))
                case .mesSpT:
                result.setMesSpT(try! JSONDecoder().decode(MesSpTResponse.self, from: data!))
                case .mesVar:
                result.setMesVar(try! JSONDecoder().decode(MesVarResponse.self, from: data!))
                case .mesVelocities:
                result.setMesVelocities(try! JSONDecoder().decode(MesVelocitiesResponse.self, from: data!))
                case .mesXmm:
                result.setMesXmm(try! JSONDecoder().decode(MesXmmResponse.self, from: data!))
                case .mes_otype:
                result.setMes_otype(try! JSONDecoder().decode(Mes_otypeResponse.self, from: data!))
                case .otypedef:
                result.setOtypedef(try! JSONDecoder().decode(OtypedefResponse.self, from: data!))
                case .otypes:
                result.setOtypes(try! JSONDecoder().decode(OtypesResponse.self, from: data!))
                case .ref:
                result.setRef(try! JSONDecoder().decode(RefResponse.self, from: data!))
                }
                
                self?.sysLog.append(SimbadSyslog(log: .OK, message: "query \(simbadRequest.getSelectQuery()) result downloaded"))
            }
            closure(result)
            return
        }
        task.resume()
    }

    
}

