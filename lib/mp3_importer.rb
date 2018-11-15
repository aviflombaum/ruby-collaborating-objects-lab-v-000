class MP3Importer
  attr_reader :path

  def initialize(path)
    @path = path
  end

  def files
    binding.pry
    Dir[@path]
  end

end
