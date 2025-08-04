import Combine
import Foundation

public protocol NetworkClient {
    
    func request<U: NetworkResponse>(
        endpoint:  NetworkEndPoint
    ) async throws -> U
    
    // 2. Delegate-based
    func request<U: NetworkResponse, D: NetworkResponseDelegate> (
        endpoint: NetworkEndPoint,
        delegate: D
    ) where D.ResponseType == U
    
    // 3. Callback/Closure
    func request<U: NetworkResponse>(
        endpoint: NetworkEndPoint,
        completion: @escaping (Result<U, NetworkError>) -> Void)
    
    // 4. Combine Publisher
    func request<U: NetworkResponse>(
        endpoint: NetworkEndPoint
    ) async  -> AnyPublisher<U, NetworkError>
    
    // 5. Result-only (sync wrapper)
    func request<U: NetworkEndPoint>(
        endpoint: NetworkEndPoint
    ) -> Result<U, NetworkError>
}
