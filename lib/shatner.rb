# base
require 'erector'
require 'erector/rails'


module Shatner
  RootDir = File.dirname File.dirname(__FILE__)
end

require 'shatner/helpers/i18n'
require 'shatner/helpers/group'
require 'shatner/helpers/record'
require 'shatner/helpers/template'
require 'shatner/helpers/attributes'
require 'shatner/widgets/frame'
require 'shatner/widgets/record/base'
require 'shatner/widgets/record/show'
