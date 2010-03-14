module Shatner
  module Record
    class Show < Frame
      needs :record
      attr_reader :record

      def content
        super do
          actions
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

      def record_dom_class
        record.class.name.underscore
      end

      def edit_link
        a 'edit', :class => ['edit', record_dom_class], :title => t('shared.edit_it', :title => title)
      end

    end
  end
end
