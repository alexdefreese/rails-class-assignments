#! /usr/bin/env ruby

require './webserver-lib.rb'

# Remember: Run this as root

# Add code to this function to serve the file from the provided path
def serve_file(path)


end

# Begin main functionality

# Initialize

Dir.chroot("./webroot")

print "> "

http_headers = Array.new

# Take input HTTP Headers from stdin
# Length-limit to 20 for simplicity
while http_headers.length < 20
  line = gets
  if http_headers.length > 0 and line == http_headers.last and
    (line == "\n")
    http_headers << line
    break
  end
  http_headers << line
end

