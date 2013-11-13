module HttpResponse
  def four_oh_four
    ["HTTP 1.1 404 NOT FOUND"]
  end

  def two_hundred(content)
    ["HTTP 1.1 200 OK",
    "Content-Type: text/html; charset=utf-8",
    "Connection: close",
    "#{content}"]
  end
end
