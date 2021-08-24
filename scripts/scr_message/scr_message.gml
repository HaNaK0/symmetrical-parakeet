enum MessageType {
	None,
	Move
}

function Message() constructor {
	messageType = MessageType.None;
	
	static toString = function() {
		return "Message: empty";
	};
}

function MoveMessage(_path) : Message() constructor {
	messageType = MessageType.Move;
	path = _path;
	
	static toString = function() {
		var _string = "Movement message: path {";
	
		for (i = 0; i < array_length(path); ++i){
			if i > 0 {
				_string += ", "
			}
			
			_string += string(path)
		}
	}
}