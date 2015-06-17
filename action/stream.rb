class Stream
  def each
    100.times { |i| yield "#{i}\n" }
  end
end