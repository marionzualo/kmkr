module Kmkr
  class FileManager
    attr_reader :current_dir

    def initialize(prefix, extension, current_dir = Dir.pwd, suffix = "")
      @current_dir = current_dir
      @prefix = prefix
      @extension = extension
      @suffix = suffix
    end

    def create_file
      create_directory unless File.exist?(current_dir)
      File.new(filename, 'w').close unless File.exist?(filename)
    end

    private

    attr_reader :prefix, :extension, :suffix

    def filename
      filename = "#{current_dir}/#{prefix}#{suffix}.#{extension}"
    end

    def create_directory
      FileUtils.mkdir_p(current_dir)
    end
  end
end
