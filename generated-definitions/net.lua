---@meta

net = {}

---[SHARED] Receive a stream message, usually for data that can be longer than the 64kb limit of a single net message. This will register a callback for a specific messageId and execute it when the stream was received and the data is reconstructed from all fragments. 
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/ttt2/extensions/net.lua#L73)
---
---@param messageId string a unique message id similar to the network strings
---@param callback function This is the function that is called after the data was received.
function net.ReceiveStream(messageId, callback) end

---[SHARED] Initiates a stream message, usually for data that can be longer than the 64kb limit of a single net message. This will split up the data and send them in smaller fragments. The data will be converted (with sPON) to an encoded string during this process. 
---
---[(View on GitHub)](https://github.com/TTT-2/TTT2/tree/master/lua/ttt2/extensions/net.lua#L38)
---
---@param messageId string A unique message id similar to the network strings
---@param data table The data table to send, this will be reconstructed at the client.
---@param client table, player SERVERSIDE only! Optional, use it to send a stream to a single client or a group of clients.
function net.SendStream(messageId, data, client) end
