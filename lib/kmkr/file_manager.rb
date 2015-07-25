module Kmkr
  class FileManager
    attr_reader :current_dir

    def initialize(file_prefix, extension, current_dir = Dir.pwd)
      @current_dir = current_dir
      @file_prefix = file_prefix
      @extension = extension
    end

    def create_file
      File.new(filename, "w").close unless File.exist?(filename)
    end

    private

    attr_reader :file_prefix, :extension

    def filename
      filename = "#{current_dir}/#{file_prefix}.#{extension}"
    end
  end
end
