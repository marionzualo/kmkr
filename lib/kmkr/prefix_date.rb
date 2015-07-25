module Kmkr
  class PrefixDate
    def initialize(date = Date.today)
      @date = date
    end

    def to_s
      @date.strftime('%d-%m-%Y')
    end
  end
end
