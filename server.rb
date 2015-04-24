require 'socket'

server = TCPServer.open(2000)
loop {
	# Thread.start(server.accept) do |client|

		client = server.accept
		client.puts(Time.now.ctime)
		request = client.read_nonblock(256)
		puts request
		client.puts("Closing the connection now, bye!")
		client.close
	# end
}