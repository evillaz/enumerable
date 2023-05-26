module MyEnumerable
    def all?
      each { |item| return puts(false) unless yield(item) }
      puts(true)
    end
  
    def any?
      each { |item| return puts(true) if yield(item) }
      puts(false)
    end

def filter
    result = []
    each do |item|
      result << item if yield(item)
    end
    puts(result.inspect)
  end
end