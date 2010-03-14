require "rubygems"
dir = File.dirname(__FILE__)
$LOAD_PATH.unshift("#{dir}/../lib")
require "erector"
require "shatner"
require "nokogiri"
ARGV.push(*File.read("#{File.dirname(__FILE__)}/spec.opts").split("\n"))
require "spec"
require "spec/autorun"
require 'assert2/xhtml'
require 'active_record'


class Document < ActiveRecord::Base
  def self.columns() @columns ||= []; end
 
  def self.column(name, sql_type = nil, default = nil, null = true)
    columns << ActiveRecord::ConnectionAdapters::Column.new(name.to_s, default, sql_type.to_s, null)
  end

  column :title, :string
  
  def to_param
    title.downcase.sub(/\w/,'-')
  end
end

Spec::Runner.configure do |config|
end
