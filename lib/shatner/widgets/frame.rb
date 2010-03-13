class Shatner::Frame < Erector::RailsWidget
  def content
    div :class => %w(frame) do
      super
    end
  end
end
