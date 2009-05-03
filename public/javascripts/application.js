CollabHub = {
	handleResponse: function( body, sender ) {
		chat_data = $('chat_data');
		row_element = document.createElement('tr');
		sender_element = document.createElement('td');
		sender_element.className = 'sender';
		sender_element.appendChild( document.createTextNode( sender ) );
		row_element.appendChild( sender_element );
		message_element = document.createElement('td');
		message_element.appendChild( document.createTextNode( body ) );
		row_element.appendChild( message_element );
		chat_data.appendChild( row_element );
		scrollTo(0, $('chatbox').scrollHeight);
	}
}