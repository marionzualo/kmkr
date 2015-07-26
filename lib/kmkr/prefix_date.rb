module Kmkr
  class PrefixDate
    def initialize(format = '%d-%m-%Y')
      @format = format
    end

    def to_s
      Date.today.strftime(@format)
    end
  end
end
