module Shatner
  module Helpers
    module Links
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

