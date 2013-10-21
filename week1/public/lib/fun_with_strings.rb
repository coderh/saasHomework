module FunWithStrings
  def palindrome?
    tmp = self.downcase.gsub(/[^a-z]+/, '')
    tmp == tmp.reverse
  end
  def count_words    
    mp = {}
    self.downcase.gsub(/^ */, '').split(/[^a-z]+/).each do |word| 
      if (!mp.has_key?(word))
        mp[word] = 1
      else
        mp[word] += 1
      end
    end
    mp
  end
  def anagram_groups
    mp = {}
    self.split(' ').each do |word|
      tmp = word.downcase.chars.sort.join
      if (!mp.has_key?(tmp))
        mp[tmp] = [word]
      else
        mp[tmp] += [word]
      end
    end
    mp.values
  end
end

# make all the above functions available as instance methods on Strings:

class String
  include FunWithStrings
end