module Shatner
  module Record
    class Base < Frame
      include Shatner::Helpers::Record
      include Shatner::Helpers::Template
    end
  end
end
