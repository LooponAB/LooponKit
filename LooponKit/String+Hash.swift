//
//  String+Hash.swift
//  LooponKit
//
//  Created by Bruno Resende on 17/11/2017.
//  Copyright © 2017 Loopon AB. All rights reserved.
//

import Foundation
import CommonCrypto

extension String
{
	/// SHA-256 hash of the receiver string.
	var sha256Hash: String
	{
		let str = cString(using: .utf8)
		let strLen = CC_LONG(lengthOfBytes(using: .utf8))
		let digestLen = Int(CC_SHA256_DIGEST_LENGTH)
		let result = UnsafeMutablePointer<CUnsignedChar>.allocate(capacity: digestLen)

		CC_SHA256(str!, strLen, result)

		let hash = NSMutableString()
		for i in 0..<digestLen
		{
			hash.appendFormat("%02x", result[i])
		}

		result.deallocate(capacity: digestLen)

		return String(format: hash as String)
	}

	/// The base64 representation of the receiver string when serialized using UTF-8.
	var base64Encoded: String
	{
		let utf8Data = data(using: .utf8)
		return utf8Data!.base64EncodedString(options: [])
	}
}
