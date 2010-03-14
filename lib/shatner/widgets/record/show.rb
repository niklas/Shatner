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

      def edit_link(opts = {})
        title = opts.delete(:title) || t('shared.edit_it', :title => record_title)
        a title, 
          :href => polymorphic_path(record, :action => :edit), 
          :class => ['edit', record_dom_class], 
          :title => title
      end

    end
  end
end
