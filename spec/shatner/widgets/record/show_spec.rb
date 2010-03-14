require 'spec_helper'

module Shatner::Record

  describe Show do
    before( :each ) do
      @document = Document.new :title => 'A Document'
      @widget = Show.new :record => @document
      @widget.stub!(:edit_document_path)
      # FIXME why must this be plural??
      @widget.stub!(:edit_documents_path)
    end

    it "should render a frame with title and actions" do
      @widget.to_s.should be_html_with do
        div :class => 'frame' do
          h3 "A Document", :class => 'title'
          ul :class => 'actions' do
            li do
              a 'edit "A Document"', :class => 'edit document', :title => 'edit "A Document"'
            end
          end
        end
      end
    end

    it "should render a template if it exists" do
      @widget.should_receive(:record_template_path).and_return(
        File.join( Shatner::RootDir, 'spec', 'fixtures', 'templates', "document.shat")
      )
      @widget.to_s.should be_html_with do
        div :class => 'frame' do
          h4 'General', :class => 'group_head'
          dl :class => 'group' do
            di :class => 'title' do
              dt 'Title'
              dd 'A Document'
            end
          end
        end
      end
      
    end
  end
end
