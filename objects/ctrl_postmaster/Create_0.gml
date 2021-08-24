/// @description Setup the posmaster and it's channels

listeners = [];
messages = [];
currentChannel = Channels.Size;

for (var i = 0; i < Channels.Size; i++) {
	listeners[i] = array_create(0, noone);
	messages[i] = array_create(0, noone);	
}

