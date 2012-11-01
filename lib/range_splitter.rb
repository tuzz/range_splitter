class Range
  def split(params = {})
    into = params[:into] || 2
    endianness = params[:endianness] || :big

    unless [:big, :little].include?(endianness)
      err = 'The endianness parameter must be either :big or :little'
      raise ArgumentError.new(err)
    end

    if into <= 0
      err = "Cannot split #{self} into #{into} ranges."
      raise ArgumentError.new(err)
    end

    if into == 1
      [self]
    else
      partition = min + (count.to_f / into).ceil - 1

      if max == partition
        [self]
      else
        args = params.merge(:into => into - 1)
        partition -= 1 if endianness == :little

        head = min..partition
        tail = ((partition + 1)..max).split(args)

        [head] + tail
      end
    end
  end
end
