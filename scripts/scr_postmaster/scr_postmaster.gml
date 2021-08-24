//Stuff related to the postmaster

/// @desc finds the postmaster and gives an error if does not exist
function findPostmaster()
{
	if !instance_exists(ctrl_postmaster) {
		showError("Trying to use postmaster while none was present", false);
		return noone;
	}
	
	return instance_find(ctrl_postmaster, 0);
}

/// @desc add a listener to a channel on the postmaster
/// @param [_channel] the channel to add a listener to
/// @param [_instance] the object that will listen to messages on a certain channel 
function postMaster_addListener(_channel, _instance) {
	var _postmaster = findPostmaster() 
	
	array_push(_postmaster.listeners, _instance);
}

/// @desc get the current messages for an event,    
/// should only be called during the recieve message event
function postMaster_GetMessages() {
	var _postmaster = findPostmaster()
	
	if _postmaster.currentChannel == Channels.Size {
		showWarning("Trying to get messages whiles messages isn't being given out");
		
		return [];
	}
	
	return _postmaster.messages[_postmaster.currentChannel];
}

function postMaster_addMessage(_channel ,_message) {
	var _postmaster = findPostmaster() 
	
	array_push(_postmaster.messages[_channel], _message)
}