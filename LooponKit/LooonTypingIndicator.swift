//
//  LooonTypingIndicator.swift
//  LooponKit
//
//  Created by Bruno Resende on 22/11/2017.
//  Copyright © 2017 Loopon AB. All rights reserved.
//

import Foundation

/// The TypingIndicator message acts as a notification that someone is currently typing a message. When your guest app
/// is sending a TypingIndicator, you don’t even need to include the typingIndicator field in the LooponEvent message.
///
/// Just keep sending a LooponEvent of type typingIndicator at around 5 second intervals, as long as the guest is still
/// typing a message.
///
/// When you receive a LooponEvent of type typingIndicator you should show a typing indicator, optionally together with
/// the authorName field to signal who at the hotel is typing a message. You should make the indicator automatically
/// disappear after timeout seconds, unless you receive a new typingIndicator LooponEvent before that in which case you
/// should reset the timeout to the new value - don’t add it!
public class LooponTypingIndicator: LooponEvent
{
	public var sessionId: String
	public let created: LooponDate
	public let type: LooponEventType

	/// Number of seconds this typing indicator should max be visible.
	public let timeout: Int

	/// Identifier of who is currently typing a message.
	public let author: LooponComposer

	/// Name of the author currently writing a message.
	public let authorName: String

	/// URL to an avatar of the author currently writing a message.
	public let authorAvatarUrl: URL?
}
