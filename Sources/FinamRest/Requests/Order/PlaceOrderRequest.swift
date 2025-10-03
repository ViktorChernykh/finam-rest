//
//  PlaceOrderRequest.swift
//  finam-rest
//
//  Created by Victor Chernykh on 15.06.2025.
//

import Foundation
import Vapor

/// Submitting an exchange order.
public struct PlaceOrderRequest: RequestProtocol {
	public let path: String

	public let requestType: RequestMethod = .POST
	public let contentType: ContentType = .json
	public let cachePolicy: CachePolicy = .useNoStoreNoCache

	public var headers: [(String, String)] = .init()
	public let queries: [String: String] = [:]
	public let body: (any Content)?

	public var decoding: String.Encoding = .utf8
	public var repeatIfBadResponse: UInt8 = 1
	public var timeout: Int64 = 10

	// MARK: - Init
	public init(order: Order, token: String) {
		path = "\(Constants.accounts)/\(order.accountId)/orders"
		body = order
		addHeaders(token: token)
	}
}
