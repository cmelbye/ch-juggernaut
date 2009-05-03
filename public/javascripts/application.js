CollabHub = {
	handleResponse: function( body ) {
		chat_data = $('chat_data');
		row_element = document.createElement('tr');
		message_element = document.createElement('td');
		message_element.appendChild( document.createTextNode( body ) );
		row_element.appendChild( message_element );
		chat_data.appendChild( row_element );
		scrollTo(0, $('chatbox').scrollHeight);
	}
}