module AccountabilityBlock
  class DuplicateDefinitionError < RuntimeError
  end

  class Nag
    attr_reader :name, :message

    def initialize(name, message, options = {})
      @name    = (name.is_a?(Fixnum) ? name : name.to_s.underscore.to_sym)
      @message = message
      @options = options
    end

    def names
      [name] + (@options[:aliases] || [])
    end
  end
end
