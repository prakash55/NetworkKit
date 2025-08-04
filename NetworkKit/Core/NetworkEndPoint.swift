public protocol NetworkEndPoint {
    var requestObject : NetworkRequest? { get }
    var baseUrl: String { get }
    var path: String { get }
    var method: HTTPMethod { get }
    var requiresAuth: Bool { get }
    var queryItems : [String : String]? { get }
    var body: NetworkRequest? { get }
    var responseType :  NetworkResponse.Type  { get }
}

extension NetworkEndPoint {
    public func apiUrl(baseURL: String) -> URL? {
        var components = URLComponents(string: baseURL + path)
        components?.queryItems = queryItems?.asQueryItems
        return components?.url
    }
}

public extension Dictionary where Key == String, Value == String {
    var asQueryItems: [URLQueryItem] {
        map { URLQueryItem(name: $0.key, value: $0.value) }
    }
}
