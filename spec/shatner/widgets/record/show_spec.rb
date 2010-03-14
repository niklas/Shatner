require 'spec_helper'

module Shatner::Record

  describe Show do
    before( :each ) do
      document = Document.new :title => 'A Document'
      @widget = Show.new :record => document
      @html = @widget.to_s
    end

    it "should render a frame with title and actions" do
      @html.should be_html_with do
        div :class => 'frame' do
          h3 "A Document", :class => 'title'
          ul :class => 'actions' do
            li do
              a 'edit', :class => 'edit document', :title => 'edit "A Document"'
            end
          end
        end
      end
    end
  end
end
