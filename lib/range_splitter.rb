class Range
  def split(params = {})
    into = params[:into] || 2

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
        args = params.merge(:into => into - 1)

        head = min..partition
        tail = ((partition + 1)..max).split(args)

        [head] + tail
      end
    end
  end
end
