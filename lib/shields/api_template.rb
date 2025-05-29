module Shields
  class ApiTemplate
    def initialize(path)
      @path = path
    end

    def call(**args)
      @path % args
    end
  end
end
