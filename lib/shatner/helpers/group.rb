module Shatner
  module Helpers
    module Group
      def group(group_title="Group")
        h4 group_title, :class => 'group_head'
        dl :class => 'group' do
          yield
        end
      end

      def item(attribute_name)
        di :class => attribute_name do
          dt human_attribute_name(attribute_name)
          dd do
            yield
          end
        end
      end

      def di(*args)
        args.unshift 'di'
        element *args do
          yield
        end
      end
    end
  end
end

