public enum NetworkTransport {
    case urlSession
//    case firebase(FirebaseConfig = .default)
    case custom(NetworkClient)
    case clientKey(String)
}
