module Shatner
  module Helpers
    # This methods can be called from a template
    module Attributes
      def string(attribute_name, opts={})
        item(attribute_name) do
          text record.send(attribute_name).to_s
        end
      end
    end
  end
end
