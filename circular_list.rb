class CircularList
  def initialize(array)
    @array = array
  end

  def size
    @array.size
  end

  def list
    @array
  end

  def fetch_previous(index=0)
    index.nil? ? nil : @array.unshift(@array.pop)[index]
  end

  def fetch_next(index=0)
    index.nil? ? nil : @array.push(@array.shift)[index]
  end

  def fetch_after(e)
    fetch_next(@array.index(e))
  end

  def fetch_before(e)
    fetch_previous(@array.index(e))
  end

  def each
    @array.each_with_index do |e, i|
      if i+1 == size
        next_e = @array[0]
      else
        next_e = @array[i+1]
      end
      yield(e, next_e)
    end
  end
end