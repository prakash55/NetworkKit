//import FirebaseFirestore
//
//public struct FirebaseConfig {
//    public let firestoreInstance: Firestore
//
//    public init(
//        firestore: Firestore = Firestore.firestore(),
//        configure: ((Firestore) -> Void)? = nil
//    ) {
//        configure?(firestore)
//        self.firestoreInstance = firestore
//    }
//
//    public static var `default`: FirebaseConfig {
//        return FirebaseConfig()
//    }
//
//    public static func usingEmulator(host: String = "localhost", port: Int = 8080) -> FirebaseConfig {
//        let firestore = Firestore.firestore()
//        firestore.useEmulator(withHost: host, port: port)
//        return FirebaseConfig(firestore: firestore)
//    }
//
//    public static func withSettings(_ settings: FirestoreSettings) -> FirebaseConfig {
//        let firestore = Firestore.firestore()
//        firestore.settings = settings
//        return FirebaseConfig(firestore: firestore)
//    }
//}
