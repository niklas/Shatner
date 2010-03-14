module Shatner
  module Helpers
    module Record
      def self.included(base)
        base.class_eval do
          needs :record
          attr_reader :record
        end
      end
      def record_dom_class
        record.class.name.underscore
      end

      def human_attribute_name(attribute_name)
        record.class.human_attribute_name(attribute_name)
      end

      def record_title
        record.title
      end

      def frame_title
        record_title
      end
    end
  end
end

