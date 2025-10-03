//
//  TokenDetailsRequest.swift
//  finam-rest
//
//  Created by Victor Chernykh on 12.06.2025.
//

import RequestModel
import Vapor

/// Request for token details.
public struct TokenDetailsRequest: Content {
	// MARK: Properties

	/// JWT token to inspect.
	public let token: String

	// MARK: - Init
	public init(token: String) {
		self.token = token
	}
}
