class XmlDocument

  def initialize(indent = false)
    @indent = indent
    @tab = 0
  end

  def method_missing(unk_meth, *args, &block)
    values = args[0] || {}
    out = ""
    out << ("  " * @tab) if @indent
    out << "<#{unk_meth}"
    values.each_pair {|k,v| out << " #{k}='#{v}'"}

    if block
      out << ">"
      out << "\n" if @indent
      @tab += 1
      out << yield
      @tab -= 1
      out << ("  " * @tab) if @indent
      out << "</#{unk_meth}>"
      out << "\n" if @indent
      # @indent = true

    else
      out << "/>"
      out << "\n" if @indent
    end

    out

  end

end
