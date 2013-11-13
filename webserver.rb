#! /usr/bin/env ruby

require './webserver-lib.rb'

# Remember: Run this as root

module Webserver
  # Add code to this function to serve the file from the provided path
  def serve_file(path)


  end

  # Begin main functionality

  # Initialize

  Dir.chroot("./webroot")

  def interactive_run
    puts "Insert Headers. End with double \\n"

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

    puts process http_headers
  end

  def process http_headers
    requestline = http_headers[0].split(" ")

    path = requestline[1]

    serve_file(path)

  end
end

if __FILE__ == $0:
  Webserver.interactive_run
end
