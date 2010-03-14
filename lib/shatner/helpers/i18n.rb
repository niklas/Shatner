module Shatner
  module Helpers
    module I18n
      ::I18n.load_path << File.join(RootDir, 'locales', 'en.yml')

      def t(key, options = {})
        key = "shared#{key}" if key.starts_with?('.')
        ::I18n.translate(key, options)
      end
    end
  end
end
