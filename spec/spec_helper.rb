require "rubygems"
dir = File.dirname(__FILE__)
$LOAD_PATH.unshift("#{dir}/../lib")
require "erector"
require "shatner"
require "nokogiri"
ARGV.push(*File.read("#{File.dirname(__FILE__)}/spec.opts").split("\n"))
require "spec"
require "spec/autorun"

Spec::Runner.configure do |config|
end
