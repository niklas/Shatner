class Shatner::Frame < Erector::RailsWidget
  include Shatner::Helpers::I18n
  include Shatner::Helpers::Group

  def content
    div :class => %w(frame) do
      h3 frame_title, :class => 'title'
      super
      yield if block_given?
    end
  end

  def frame_title
    "Frame"
  end
end
