//
//  NetworkClientAdapter.swift
//  NetworkKit
//
//  Created by Prakash Eppala(UST,IN) on 04/08/25.
//

public enum NetworkClientAdapter {
    static func client(for type: NetworkTransport) -> NetworkClient {
        switch type {
            case .urlSession:
                return URLSessionClient()
//            case .firebase(let config):
//                return FirebaseClientAdapter(config: config)
            case .custom(let client):
                return client
            case .clientKey(let key):
                guard let client = NetworkClientRegistry.shared.client(forKey: key) else {
                    fatalError("No client registered for key: \(key)")
                }
                return client
        }
    }
}
