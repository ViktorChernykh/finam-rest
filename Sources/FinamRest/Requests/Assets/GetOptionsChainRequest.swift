//
//  GetOptionsChainRequest.swift
//  finam-rest
//
//  Created by Victor Chernykh on 14.06.2025.
//

import Foundation
import RequestModel

/// Get a chain of options for the underlying asset.
public struct GetOptionsChainRequest: RequestProtocol {
	public let path: String

	public let requestType: RequestMethod = .GET
	public let contentType: ContentType = .json
	public let cachePolicy: CachePolicy = .useNoStoreNoCache

	public var headers: [(String, String)] = .init()
	public let queries: [String: String] = [:]

	public var decoding: String.Encoding = .utf8
	public var repeatIfBadResponse: UInt8 = 1
	public var timeout: Int64 = 10

	// MARK: - Init
	public init(underlyingSymbol: String, token: String) {
		path = "\(Constants.assets)/\(underlyingSymbol)/options"
		addHeaders(token: token)
	}
}
