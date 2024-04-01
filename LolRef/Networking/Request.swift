//
//  Request.swift
//  LolRef
//
//  Created by hopechings on 4/1/24.
//

import Foundation

enum API {
    case champions
    
    fileprivate var requestURL: URLRequest {
        switch self {
        case .champions: return URLRequest(url: URL(string: "")!)
        }
    }
}

class Request {
    func api<T>(_ type: API, model: T.Type, _ completionHandler: @escaping (T?) -> Void) {
        URLSession.shared.dataTask(with: type.requestURL) { data, response, error in
            do {
                let object = try JSONSerialization.jsonObject(with: data!) as? T
                completionHandler(object!)
            } catch {
                completionHandler(nil)
            }
        }
    }
}
