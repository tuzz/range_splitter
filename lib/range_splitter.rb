class Range
  def split(into = 2)
    if into <= 0
      err = "Cannot split #{self} into #{into} ranges."
      raise ArgumentError.new(err)
    elsif into == 1
      [self]
    else
      partition = min + (count.to_f / into).ceil - 1

      if max == partition
        [self]
      else
        head = min..partition
        tail = ((partition + 1)..max).split(into - 1)

        [head] + tail
      end
    end
  end
end
