module Kmkr
  class FileManager
    attr_reader :current_dir

    def initialize(current_dir = Dir.pwd)
      @current_dir = current_dir
    end

    def file_dir
      @current_dir
    end
  end
end
