module HttpResponse
  def four_oh_four
    ["HTTP 1.1 404 NOT FOUND\n"]
  end

  def two_hundred(content)
    ["HTTP 1.1 200 OK\n",
    "Content-Type: text/html; charset=utf-8\n",
    "Connection: close\n",
    "#{content}"]
  end
end
