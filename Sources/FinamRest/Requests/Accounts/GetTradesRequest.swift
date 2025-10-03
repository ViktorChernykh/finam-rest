//
//  GetTradesRequest.swift
//  finam-rest
//
//  Created by Victor Chernykh on 14.06.2025.
//

import Foundation
import RequestModel
import Vapor

/// Getting Account transaction history.
public struct GetTradesRequest: RequestProtocol {
	public let path: String

	public let requestType: HTTPMethod = .GET
	public let contentType: HTTPMediaType = .json
	public let cachePolicy: CachePolicy = .useNoStoreNoCache

	public var headers: [(String, String)] = .init()
	public let queries: [String: String]

	public var decoding: String.Encoding = .utf8
	public var repeatIfBadResponse: UInt8 = 1
	public var timeout: Int64 = 10

	// MARK: - Init
	public init(
		accountId: String,
		limit: Int = 50,
		interval: GoogleInterval,
		token: String
	) {
		path = "\(Constants.accounts)/\(accountId)/trades"
		queries = [
			"limit": "\(limit)",
			"interval.start_time": interval.start.dateFormat,
			"interval.end_time": interval.end.dateFormat
		]
		addHeaders(token: token)
	}
}
