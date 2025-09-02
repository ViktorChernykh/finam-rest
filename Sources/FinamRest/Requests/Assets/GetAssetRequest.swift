//
//  GetAssetRequest.swift
//  finam-rest
//
//  Created by Victor Chernykh on 14.06.2025.
//

import Foundation
import RequestModel

/// Getting information about a specific instrument.
public struct GetAssetRequest: RequestProtocol {
	public let path: String

	public let requestType: RequestMethod = .GET
	public let contentType: ContentType = .json
	public let cachePolicy: CachePolicy = .useNoStoreNoCache

	public var headers: [(String, String)] = .init()
	public let queries: [String: String]

	public var decoding: String.Encoding = .utf8
	public var repeatIfBadResponse: UInt8 = 1
	public var timeout: Int64 = 10

	// MARK: - Init
	public init(accountId: String, symbol: String, token: String) {
		path = "\(Constants.assets)/\(symbol)"
		queries = [
			"account_id": accountId
		]
		addHeaders(token: token)
	}
}
