class MedievalLatina
  class Lexicon
    LEXICON_DIR = File.expand_path("../../lexicons", __dir__)

    def self.list_files
      Dir.glob(File.join(LEXICON_DIR, "*.pls"))
    end

    def self.get_file_path(file_name)
      path = File.join(LEXICON_DIR, file_name)
      return path if File.exist?(path)
      raise "Lexicon file not found: #{file_name}"
    end

    def self.get_file_content(file_name)
      path = get_file_path(file_name)
      File.read(path)
    end

    def self.files_with_contents
      list_files.each_with_object({}) do |file_path, files_content|
        file_name = File.basename(file_path)
        files_content[file_name] = get_file_content(file_name)
      end
    end
  end
end
