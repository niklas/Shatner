module Shatner
  module Record
    class Edit < Base
      include Shatner::Helpers::EditAttributes
      def content
        super do
          record_form do
            render_record_template
          end
        end
      end

      def frame_title
        t('.edit_it', :title => record_title)
      end

      def record_form
        form_for record do |f|
          @current_form = f
          yield
        end
      end
    end
  end
end

