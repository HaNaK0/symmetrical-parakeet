/// @desc Handle messages

for (currentChannel = 0; currentChannel < Channels.Size; ++currentChannel) {
	// Check that we have meesages on a channel
	if array_length(messages[currentChannel]) > 0 {
		// Tell the listener that they have messages waiting
		for (var i = 0; i < array_length(listeners[currentChannel]); ++i) {
			listeners[currentChannel][i].event_user(Events.RecieveMessages);
		}
		
		//clear the messages
		messages[currentChannel] = [];
	}
}

