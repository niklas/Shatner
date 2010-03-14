module Shatner
  module Helpers
    module Links
      def edit_link(opts = {})
        title = opts.delete(:title) || t('shared.edit_it', :title => record_title)
        opts.reverse_merge!(
          :title => title,
          :class => edit_link_css.join(' ')
        )
        opts.merge!(
          :href => polymorphic_path(record, :action => :edit)
        )
        link_to title, opts
      end

      # @return Array of css classes
      def edit_link_css
        ['edit', record_dom_class]
      end

      def destroy_link(opts = {})
        title = opts.delete(:title) || t('shared.destroy_it', :title => record_title)
        opts.reverse_merge!(
          :title => title,
          :class => destroy_link_css.join(' '),
          :confirm => t('.confirm_destroy_it', :title => record_title)
        )
        opts.merge!(
          :method => :delete,
          :href => polymorphic_path(record)
        )
        link_to title, opts
      end

      # @return Array of css classes
      def destroy_link_css
        ['destroy', record_dom_class]
      end
    end
  end
end

