module Shatner
  module Record
    class Show < Frame

      def content
        super do
          actions
        end
      end

      def title
        @record.title
      end

      def actions
        ul :class => 'actions' do
          li { edit_link }
        end
      end

      def edit_link
        a 'edit', :class => %w'edit document', :title => t('shared.edit_it', :title => title)
      end

    end
  end
end
