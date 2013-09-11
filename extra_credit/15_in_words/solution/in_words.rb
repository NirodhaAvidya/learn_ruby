module In_words

    @@num2word = {
    "0" => '', "1" => 'one', "2" => 'two', "3" => 'three', "4" => 'four',
    "5" => 'five', "6" => 'six', "7" => 'seven', "8" => 'eight', "9" => 'nine',
    "00" => '', "01" => 'one', "02" => 'two', "03" => 'three', "04" => 'four',
    "05" => 'five', "06" => 'six', "07" => 'seven', "08" => 'eight', "09" => 'nine',
    "10" => 'ten', "11" => 'eleven', "12" => 'twelve', "13" => 'thirteen', "14" => 'fourteen',
    "15" => 'fifteen', "16" => 'sixteen', "17" => 'seventeen', "18" => 'eighteen', "19" => 'nineteen',
    "20" => 'twenty', "30" => 'thirty', "40" => 'forty', "50" => 'fifty',
    "60" => 'sixty', "70" => 'seventy', "80" => 'eighty', "90" => 'ninety'}



  def in_words
    if self.zero?
      return "zero"
    end

    def wordify
      str_no = self.to_s
      out = ""
      if self.between?(1,20) || self%10 == 0 && self < 100
        out << @@num2word[str_no]
      elsif self.between?(20,99)
        out << @@num2word[(self/10*10).to_s] << " " << @@num2word[(self%10).to_s]
      else
      end
      out
    end

    quo = self
    singles = []
    while quo != 0
      quo, mod = quo.divmod(10)
      singles << mod
    end
    ary = singles.reverse

    out = []
    l = ary.length
    i=-1
    while i >= -l
      if i.remainder(3) == -2
        out.shift
        out.unshift(ary[i,2].join.to_i.wordify)
      elsif i%3 == 0 && ary[i] != 0
        out.unshift("hundred")
        out.unshift(ary[i].wordify)
      elsif i == -4
        out.unshift("thousand") unless (ary[i] == 0 && ary[i-1] == 0 && ary[i-2] == 0)
        out.unshift(ary[i].wordify)
      elsif i == -7
        out.unshift("million") unless (ary[i] == 0 && ary[i-1] == 0 && ary[i-2] == 0)
        out.unshift(ary[i].wordify)
      elsif i == -10
        out.unshift("billion") unless (ary[i] == 0 && ary[i-1] == 0 && ary[i-2] == 0)
        out.unshift(ary[i].wordify)
      elsif i == -13
        out.unshift("trillion") unless (ary[i] == 0 && ary[i-1] == 0 && ary[i-2] == 0)
        out.unshift(ary[i].wordify)
      else
        out.unshift(ary[i].wordify)
      end
      i -= 1
    end
    out.delete_if{|e| e == ""}.join(" ")
  end

end

class Fixnum
  include In_words
end

class Bignum
  include In_words
end
