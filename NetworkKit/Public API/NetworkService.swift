import Foundation
import Combine

public final class NetworkService {
    private let client: NetworkClient

    public static let `default` = NetworkService(using: .urlSession)
    
    // MARK: - App-configurable shared instance
    private static var _instance: NetworkService?
    
    public static var instance: NetworkService {
        guard let instance = _instance else {
            fatalError("NetworkService.instance is not configured. Call NetworkService.configure(using:) first.")
        }
        return instance
    }
    
    // MARK: - Configure instance singleton
    public static func configure(using transport: NetworkTransport) {
        _instance = NetworkService(using: transport)
    }

    public init(using transport: NetworkTransport) {
        self.client = NetworkClientAdapter.client(for: transport)
    }

    
        // 1. Async/Await
    func request<U: NetworkResponse>(
        endpoint:  NetworkEndPoint
    ) async throws -> U {
        
    }
    
        // 2. Delegate-based
    func request<U: NetworkResponse, D: NetworkResponseDelegate> (
        endpoint: NetworkEndPoint,
        delegate: D
    ) where D.ResponseType == U {
        
    }
    
        // 3. Callback/Closure
    func request<U: NetworkResponse>(
        endpoint: NetworkEndPoint,
        completion: @escaping (Result<U, NetworkError>) -> Void) {
            
        }
    
        // 4. Combine Publisher
    func request<U: NetworkResponse>(
        endpoint: NetworkEndPoint
    ) async  -> AnyPublisher<U, NetworkError> {
        
    }
    
        // 5. Result-only (sync wrapper)
    func request<U: NetworkEndPoint>(
        endpoint: NetworkEndPoint
    ) -> Result<U, NetworkError> {
        
    }
}
