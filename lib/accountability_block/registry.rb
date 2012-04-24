module AccountabilityBlock
  class Registry
    include Enumerable

    def initialize
      @items = {}
    end

    def add(item)
      item.names.each { |name| add_as(name, item) }
      item
    end

    def find(name)
      name = name.is_a?(Fixnum) ? name : name.to_sym
      @items[name] or raise ArgumentError.new("Not registered: #{name.to_s}")
    end

    def each(&block)
      @items.values.uniq.each(&block)
    end

    def [](name)
      find(name)
    end

    def registered?(name)
      name = name.is_a?(Fixnum) ? name : name.to_sym
      @items.key?(name)
    end

    def clear
      @items.clear
    end


    private

    def add_as(name, item)
      if registered?(name)
        raise DuplicateDefinitionError, "Already defined: #{name}"
      else
        @items[name.to_sym] = item
      end
    end
  end
end
