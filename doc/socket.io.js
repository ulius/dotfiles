/*************************
 * SENDING DATA TO CLIENTS 
 *************************/
// send to current request socket client
socket.emit('message', "this is a test");

// sending to all clients, include sender
io.sockets.emit('message', "this is a test");

// sending to all clients except sender
socket.broadcast.emit('message', "this is a test");

// sending to all clients in 'game' room(channel) except sender
socket.broadcast.to('game').emit('message', 'nice game');

// sending to all clients in 'game' room(channel), include sender
io.sockets.in('game').emit('message', 'cool game');

// sending to individual socketid
io.sockets.socket(socketid).emit('message', 'for your eyes only');


/*************************
 * CONNECTED CLIENTS
 *************************/
// http://stackoverflow.com/a/6967755/1676072
// Connected clients (no namespace) 
var clients = io.sockets.clients(); // all clients
var clients = io.sockets.clients('room'); // all users from room `room`

// Connected clients (with namespace)
var clients = io.of('/chat').clients(); // all clients in namespace '/chat'
var clients = io.of('/chat').clients('room'); // all users from room `room`

/*************************
 * ROOMS
 *************************/
// all rooms a specific socket is in
io.roomClients[socket.id]

// all rooms
io.sockets.manager.rooms

// all clients in room 
io.sockets.clients('room')

// all clients in namespace and room
io.of('namespace').clients('room')
