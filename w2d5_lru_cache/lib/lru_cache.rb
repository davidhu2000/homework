class LRUCache
  attr_reader :size, :cache

  def initialize(size)
    @size = size
    @cache = []
  end

  def count
    @cache.length
  end

  def add(el)
    if @cache.include? el
      @cache.delete(el)
      @cache << el
    else
      @cache << el
      @cache.shift if @cache.length > size
    end
  end

  def show
    p @cache
    nil
  end

end
