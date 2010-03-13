require 'spec_helper'

module Shatner
  
  describe Frame do
    before( :each ) do
      @widget = Frame.new
      @html = @widget.to_s
      @doc = Nokogiri::HTML(@html)
    end
    it "should be a RailsWidget" do
      @widget.should be_a(Erector::RailsWidget)
    end

    it "should wrap its contents" do
      @html.should include('frame')
    end
  end

end
