//
//  CancelOrderRequest.swift
//  finam-rest
//
//  Created by Victor Chernykh on 14.06.2025.
//

import Foundation
import RequestModel
import Vapor

/// Cancellation of the exchange order.
public struct CancelOrderRequest: RequestProtocol {
	public let path: String

	public let requestType: HTTPMethod = .DELETE
	public let contentType: HTTPMediaType = .json
	public let cachePolicy: CachePolicy = .useNoStoreNoCache

	public var headers: [(String, String)] = .init()
	public let queries: [String: String] = [:]

	public var decoding: String.Encoding = .utf8
	public var repeatIfBadResponse: UInt8 = 1
	public var timeout: Int64 = 10

	// MARK: - Init
	public init(accountId: String, orderId: String, token: String) {
		path = "\(Constants.accounts)/\(accountId)/orders/\(orderId)"
		addHeaders(token: token)
	}
}
