//import FirebaseFirestore
//
//final class FirebaseClient: NetworkClient {
//    private let firestore: Firestore
//
//    init(config: FirebaseConfig) {
//        self.firestore = config.firestoreInstance
//    }
//
//    func send<T: NetworkRequest>(_ request: T, completion: @escaping (Result<T.ResponseType, Error>) -> Void) {
//        firestore.document(request.path).getDocument { snapshot, error in
//            if let error = error {
//                completion(.failure(error))
//            } else if let data = snapshot?.data() {
//                do {
//                    let jsonData = try JSONSerialization.data(withJSONObject: data)
//                    let decoded = try JSONDecoder().decode(T.ResponseType.self, from: jsonData)
//                    completion(.success(decoded))
//                } catch {
//                    completion(.failure(error))
//                }
//            } else {
//                completion(.failure(NSError(domain: "NoData", code: -1)))
//            }
//        }
//    }
//}
