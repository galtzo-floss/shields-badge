module Shields
  class LabelTextTemplate
    def initialize(msg)
      @msg = msg
    end

    def call(**args)
      @msg % args
    end
  end
end
