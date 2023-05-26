module MyEnumerable
    def all?
      each { |item| return puts(false) unless yield(item) }
      puts(true)
    end
  
    def any?
      each { |item| return puts(true) if yield(item) }
      puts(false)
    end