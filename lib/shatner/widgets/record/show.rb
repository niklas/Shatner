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
          li { a 'edit', :class => %w'edit document'}
        end
      end

    end
  end
end
