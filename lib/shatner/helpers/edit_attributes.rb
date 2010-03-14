module Shatner
  module Helpers
    # This methods can be called from a template
    # please keep these methods in sync with Attributes
    module EditAttributes
      def self.included(base)
        base.class_eval do
          attr_reader :current_form
        end
      end
      def string(attribute_name, opts={})
        form_item(attribute_name) do
          current_form.text_field attribute_name, opts
        end
      end
    end
  end
end

