require_relative 'webserver'

require 'test/unit'

class TestWebserver < Test::Unit::TestCase
  def test_webserver_root
    index_html = "HTTP 1.1 200 OK\nContent-Type: text/html; charset=utf-8\nConnection: close\n<!DOCTYPE HTML>\n\n<html>\n  <head>\n    <title>Assignment 1!</title>\n  </head>\n  <body>\n    This is index.html. Please run properly.\n  </body>\n</html>\n"
    assert_equal(index_html, Webserver.process("GET / HTTP 1.1\n\n"))
  end

  def test_webserver_index

    index_html = "HTTP 1.1 200 OK\nContent-Type: text/html; charset=utf-8\nConnection: close\n<!DOCTYPE HTML>\n\n<html>\n  <head>\n    <title>Assignment 1!</title>\n  </head>\n  <body>\n    This is index.html. Please run properly.\n  </body>\n</html>\n"


    assert_equal(index_html, Webserver.process("GET /index.html HTTP 1.1\n\n"))
  end

  def test_webserver_moon
    moon_html = "HTTP 1.1 200 OK\nContent-Type: text/html; charset=utf-8\nConnection: close\n<!DOCTYPE HTML>\n\n<html>\n  <head>\n    <title>TO THE MOON!!!!</title>\n  </head>\n  <body>\n    Welcome to the moon. It's lonely here.\n  </body>\n</html>"

    assert_equal(moon_html, Webserver.process("GET /space/moon.html"))

  end
end
