class Dictionary

  def entries #Writing over native methods makes my head hurt
    @entries ||= {}
  end

  def add entry
    case
      when entry.is_a?(Hash) then entries.merge!(entry)
      when entry.is_a?(String) then entries[entry] = nil
    end
  end

  def keywords
    @entries.keys.sort!
  end

  def include? x
    entries.keys.include?(x)
  end

  def find(term)
    result = {}
    entries.each_pair do |key, value|
        result[key] = value if key =~ /^#{term}/
    end
    result
  end

  def printable
      entries.sort_by{|k,v|k}.map{|k,v| "[#{k}] \"#{v}\"\n" }.flatten.join{/\n/}.chomp
    # I know you don't have to sort by keys explicitly, but this allows for easily switching to sorting by value if wanted down the line.
  end

end
