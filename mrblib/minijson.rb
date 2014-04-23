module NumericJson
  def to_json io
    io.write self.to_s
    io
  end
end

class Fixnum; include NumericJson end
class Float; include NumericJson end

class String
  def to_json io
    io.write '"' + self + '"'
    io
  end
end

class Symbol
  def to_json io
    to_s.to_json io
  end
end

class Array
  def to_json io
    io.write '['
    length.times do |i|
      io.write ',' if i > 0
      self[i].to_json io
    end
    io.write ']'
    io
  end
end

class Hash
  def to_json io
    i = 0
    io.write '{'

    each do |key, val|
      io.write ',' if i > 0

      key.to_s.to_json io
      io.write ':'
      val.to_json io
      i += 1
    end

    io.write '}'
    io
  end
end

class Time
  def to_json io
    io.printf '"%04d-%02d-%02d %02d:%02d:%02d"', year, month, day, hour, min, sec
  end
end
