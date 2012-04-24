module AccountabilityBlock
  module Syntax
    module Default
      def define(&block)
        DSL.run(block)
      end

      class DSL
        def self.run(block)
          new.instance_eval(&block)
        end

        def nag(name, message)
          nag = Nag.new(name, message)

          AccountabilityBlock.register_nag(nag)
        end
      end
    end
  end

  extend Syntax::Default
end