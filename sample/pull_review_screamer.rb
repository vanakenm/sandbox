class TestTest
  def build
    ["a","b","c"].each {|s|
      puts s unless s == "test"
     }
     puts "Done"
     puts "Finished"
  end

  def hello
    info = "info"
    info = "#{info}-with update"
    return info * 3
  end

  def caVaIci?
    info = "info"
    info = "#{info}-with update"
    return info * 3
  end
end