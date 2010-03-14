require 'spec_helper'

module Shatner
  
  describe Frame do
    before( :each ) do
      @widget = Frame.new
      @html = @widget.to_s
    end
    it "should be a RailsWidget" do
      @widget.should be_a(Erector::RailsWidget)
    end

    it "should render a frame" do
      @html.should be_html_with do
        div :class => 'frame' do
          h3 "Frame", :class => 'title'
        end
      end
    end
  end

end
