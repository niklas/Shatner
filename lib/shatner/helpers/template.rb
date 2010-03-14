module Shatner
  module Helpers
    module Template
      def render_record_template
        eval read_record_template
      end

      def read_record_template
        @record_template ||= File.read record_template_path
      end

      def record_template_path
        File.join( RootDir, 'spec', 'fixtures', 'templates', "#{record_dom_class}.shat")
      end
    end
  end
end

