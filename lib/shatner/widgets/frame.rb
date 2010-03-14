class Shatner::Frame < Erector::RailsWidget
  include Shatner::Helpers::I18n
  include Shatner::Helpers::Group

  def content
    div :class => %w(frame) do
      h3 title, :class => 'title'
      super
      yield if block_given?
    end
  end

  def title
    "Frame"
  end
end
