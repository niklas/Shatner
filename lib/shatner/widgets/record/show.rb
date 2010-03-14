module Shatner
  module Record
    class Show < Base
      include Shatner::Helpers::Attributes
      def content
        super do
          actions
          render_record_template
        end
      end

      def actions
        ul :class => 'actions' do
          li { edit_link }
        end
      end

    end
  end
end
