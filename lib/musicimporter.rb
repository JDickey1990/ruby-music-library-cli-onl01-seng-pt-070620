class MusicImporter
  
  def initialize(path)
    @path = path
  end
  
  def path 
    @path
  end
  
  def files
    files = Dir.glob("#{@path}/*.mp3")
    files.collect do |song|
    song.gsub!("#{@path}/","")
    end
  end
  
end
