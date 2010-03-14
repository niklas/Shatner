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

      def title
        record.title
      end

      def actions
        ul :class => 'actions' do
          li { edit_link }
        end
      end

      def edit_link
        a 'edit', :class => ['edit', record_dom_class], :title => t('shared.edit_it', :title => title)
      end

    end
  end
end
