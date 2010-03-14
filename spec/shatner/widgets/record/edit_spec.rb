require 'spec_helper'

module Shatner::Record

  describe Edit do
    before( :each ) do
      @document = Document.new :title => 'A Document'
      @widget = Edit.new :record => @document
      
      @actionview = ActionView::Base.new
      @actionview.stub!(:output_buffer => '')
      @actionview.stub!(:protect_against_forgery?).and_return(false) # we have no controller here
      @widget.stub!(:parent).and_return(@actionview)
    end

    it "should render a frame with title and form" do
      @actionview.should_receive(:polymorphic_path).and_return('/documents/1')
      @widget.to_s.should be_html_with do
        div :class => 'frame' do
          h3 'edit "A Document"', :class => 'title'
          form :action => '/documents/1', :method => 'post', :class => 'new_document' do
            # TODO _method
            h4 'General', :class => 'group_head'
            dl :class => 'group' do
              di :class => 'title' do
                dt do 
                  label 'Title', :for => 'document_title'
                end
                dd do
                  input :value => 'A Document', :type => 'text', :id => 'document_title'
                end
              end
            end
          end
        end
      end
      
    end
    
  end

end

