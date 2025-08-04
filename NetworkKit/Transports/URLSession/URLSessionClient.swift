import Foundation
import Combine

internal final class URLSessionClient: NetworkClient {
    
    func request<U>(endpoint: any NetworkEndPoint) async throws -> U where U : NetworkResponse {
        
    }
    
    func request<U, D>(endpoint: any NetworkEndPoint, delegate: D) where U == D.ResponseType, D : NetworkResponseDelegate {
        
    }
    
    func request<U>(endpoint: any NetworkEndPoint, completion: @escaping (Result<U, NetworkError>) -> Void) where U : NetworkResponse {
        
    }
    
    func request<U>(endpoint: any NetworkEndPoint) async -> AnyPublisher<U, NetworkError> where U : NetworkResponse {
        
    }
    
    func request<U>(endpoint: any NetworkEndPoint) -> Result<U, NetworkError> where U : NetworkEndPoint {
        
    }
    
   
}
