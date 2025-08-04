//
//  NetworkClinetRegistry.swift
//  NetworkKit
//
//  Created by Prakash Eppala(UST,IN) on 04/08/25.
//

public final class NetworkClientRegistry {
    public static let shared = NetworkClientRegistry()
    
    private var clients: [String: NetworkClient] = [:]
    
    private init() {}
    
        /// Register a client under a specific key
    public func register(client: NetworkClient, forKey key: String) {
        clients[key] = client
    }
    
        /// Retrieve a client for a given key
    public func client(forKey key: String) -> NetworkClient? {
        return clients[key]
    }
    
        /// Remove a client
    public func unregisterClient(forKey key: String) {
        clients.removeValue(forKey: key)
    }
    
        /// Clear all registered clients
    public func clear() {
        clients.removeAll()
    }
}
