//
//  LooponChatSession.swift
//  LooponKit
//
//  Created by Bruno Resende on 20/11/2017.
//  Copyright © 2017 Loopon AB. All rights reserved.
//

import Foundation

/// Describes all the information you need to pass on to your guest app in order to let it participate in a
/// realtime conversation through the Loopon Chat Server WebSocket.
public class LooponChatSession: Decodable
{
	/// Unique identifier of the chat session.
	public let sessionId: String

	/// Fully qualified URL to the web socket your guest app needs to connect to. Note that this will always point to a
	/// secure WSS URL, and that this URL will stay constant for the duration of the stay, so you can cache it in your
	/// own backend.
	public let wssUrl: String
}
