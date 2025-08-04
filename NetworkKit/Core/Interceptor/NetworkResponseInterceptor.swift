//
//  ResponseInterceptor.swift
//  Testmodularapikit
//
//  Created by Prakash Eppala(UST,IN) on 02/08/25.
//

public protocol NetworkResponseInterceptor {
    /// Intercept successful or failed responses
    func intercept(
        response: URLResponse?,
        data: Data?,
        for endpoint: NetworkEndPoint
    ) -> Result<(URLResponse, Data), NetworkError>
}

