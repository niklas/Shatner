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

      # TODO insert the magic js and confirm like rails does
      def destroy_link(opts = {})
        title = opts.delete(:title) || t('shared.destroy_it', :title => record_title)
        opts.reverse_merge!(
          :title => title,
          :confirm => t('.confirm_destroy_it', :title => record_title)
        )
        opts.merge!(
          :method => :delete,
          :href => polymorphic_path(record),
          :class => ['destroy', record_dom_class]
        )
        a title, opts
      end
    end
  end
end

