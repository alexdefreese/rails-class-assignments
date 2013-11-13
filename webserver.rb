#! /usr/bin/env ruby

require './webserver-lib.rb'
include HttpResponse

class Webserver
  # Add code to this function to serve the file from the provided path
  def self.serve_file(path)

  end

  # Begin main functionality

  # Initialize

  Dir.chdir("./webroot")

  def self.interactive_run
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

  def self.process(http_headers)
    headers_lines = http_headers.split("\n")
    requestline = headers_lines[0].split(" ")

    path = requestline[1]

    serve_file(path)

  end
end

if __FILE__ == $0
  Webserver.interactive_run
end
