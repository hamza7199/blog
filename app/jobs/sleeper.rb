class Sleeper
  
  @queue = :sleep
  def self.perform(_seconds)
    puts "Sleep...>> #{Time.now}"
  end
  
end
