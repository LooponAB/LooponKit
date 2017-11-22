# LooponKit

## iOS Library for Loopon's Public API

This library contains models, connectors, and helper functions that allow an iOS App to easily communicate with Loopon's Public API.

[**Loopon's Public API Documentation**](https://api.loopon.com/public)

## Contents

* Model classes for API objects.
* LooponSocket: Helper class to connect to the Loopon Chat websocket.

## Examples

### LooponSocket

Your app's backend needs to communicate with Loopon's backend and request the registration of a Guest Stay. When that is performed successfully, you will receive a websocket URL to use with `LooponSocket`. This is represented by `LOOPON_WSS_URL`.

```swift
// This should ideally be a class property, as you only need a single instance.
let chatSocket = LooponSocket()
chatSocket.delegate = self
chatSocket.url = "wss://LOOPON_WSS_URL"

// MARK: Delegate methods:

/// Sent when the socket connects successfully.
func looponSocketDidOpen(_ looponSocket: LooponSocket)
{

}

/// Sent when the socket closes. If this was caused by an error or timeout, `didCloseCleanly` will be `false`, and
/// LooponSocket will automatically attempt to reopen the connection.
/// If this succeeds, another call to `looponSocketDidOpen:` will be made.
func looponSocket(_ looponSocket: LooponSocket, didCloseCleanly: Bool)
{

}

/// Sent when a message is received through the socket.
func looponSocket(_ socket: LooponSocket, received chatMessage: LooponChatMessage)
{

}

```

## License

```
Copyright © 2017 Loopon AB

Redistribution and use in source and binary forms, with or without modification, are permitted provided that the
following conditions are met:

1. Redistributions of source code must retain the above copyright notice, this list of conditions and the following
disclaimer.

2. Redistributions in binary form must reproduce the above copyright notice, this list of conditions and the
following disclaimer in the documentation and/or other materials provided with the distribution.

3. Neither the name of the copyright holder nor the names of its contributors may be used to endorse or promote
products derived from this software without specific prior written permission.

THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES,
INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR
SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY,
WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE
USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
```