//
//  LooponAuthorization.swift
//  LooponKit
//
//  Created by Bruno Resende on 20/11/2017.
//  Copyright © 2017 Loopon AB. All rights reserved.
//

import Foundation

/// Represents an Oauth2 authorization object.
public struct LooponAuthorization: Codable
{
	/// Date when this object was created. Used in conjunction with `expiresIn` to calculate the expiration date.
	private let created = Date()

	/// The token type. Usually "Bearer".
	public let tokenType: String

	/// The expiration delta time after creation.
	public let expiresIn: TimeInterval

	/// The access token.
	public let accessToken: String

	/// The exact date when the authorization expires.
	public var expiration: Date
	{
		return created.addingTimeInterval(expiresIn)
	}

	enum CodingKeys: String, CodingKey
	{
		case tokenType = "token_type"
		case expiresIn = "expires_in"
		case accessToken = "access_token"
	}

	/// A HTTP Header value based on the contents of this authorization.
	public var httpHeaderValue: String
	{
		return "\(tokenType) \(accessToken)"
	}
}
