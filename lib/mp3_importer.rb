class MP3Importer
  attr_reader :path

  def initialize(path)
    @path = path
  end

  def files
    long_filenames = Dir[@path+"/*"]
    # ["./spec/fixtures/mp3s/Action Bronson - Larry Csonka - indie.mp3", ""]

    long_filenames.collect{|filename| filename.split("/").last}
  end

end
