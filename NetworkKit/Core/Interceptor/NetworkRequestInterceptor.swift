//
//  APIRequestInterceptor.swift
//  Testmodularapikit
//
//  Created by Prakash Eppala(UST,IN) on 02/08/25.
//

public protocol NetworkRequestInterceptor {
    func intercept(_ request: URLRequest, for endpoint: NetworkEndPoint) -> URLRequest
    func shouldRetry(_ error: NetworkError, attempt: Int, for endpoint: NetworkEndPoint) -> Bool
}
