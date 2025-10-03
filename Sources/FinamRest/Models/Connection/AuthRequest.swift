//
//  AuthRequest.swift
//  finam-rest
//
//  Created by Victor Chernykh on 12.06.2025.
//

import RequestModel
import Vapor

/// Request for obtaining JWT token.
public struct AuthRequest: Content {
	// MARK: Properties

	/// API secret key provided by Finam.
	public let secret: String

	// MARK: - Init
	public init(secret: String) {
		self.secret = secret
	}
}
