//
//  NetworkReponseDelegate.swift
//  NetworkKit
//
//  Created by Prakash Eppala(UST,IN) on 04/08/25.
//

public protocol NetworkResponseDelegate: AnyObject {
    associatedtype ResponseType: NetworkResponse
    func didReceive(response: ResponseType)
    func didReceiveError(error: NetworkError)
    func willSendRequest(to url: String)
}
