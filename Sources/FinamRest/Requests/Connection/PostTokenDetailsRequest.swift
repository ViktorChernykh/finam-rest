//
//  PostTokenDetailsRequest.swift
//  finam-rest
//
//  Created by Victor Chernykh on 14.06.2025.
//

import Foundation
import RequestModel

/// Getting information about the session token.
public struct PostTokenDetailsRequest: RequestProtocol {
	public let path: String

	public let requestType: RequestMethod = .POST
	public let contentType: ContentType = .json
	public let cachePolicy: CachePolicy = .useNoStoreNoCache

	public var headers: [(String, String)] = .init()
	public let queries: [String: String] = [:]
	public let body: (any Codable)?

	public var decoding: String.Encoding = .utf8
	public var repeatIfBadResponse: UInt8 = 1
	public var timeout: Int64 = 10

	// MARK: - Init
	public init(dto: TokenDetailsRequest, token: String) {
		path = "\(Constants.sessions)/details"
		body = dto
		addHeaders(token: token)
	}
}
