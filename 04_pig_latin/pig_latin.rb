def translate str
    arr = str.split(' ')
    pig = []
    arr.each do |word|
        first_vowel = word.index(/[aeiou]/)
        if first_vowel == 0
            pig.push word + 'ay'
        else
            if word.include? 'qu'
                qu = word.index('qu')
                pig.push word.slice(qu+2..-1) +
                        word.slice(0..qu+1) + 'ay'
            else
                pig.push word.slice(first_vowel..-1) + 
                        word.slice(0..(first_vowel-1)) + 'ay'
            end
        end
    end
    pig.join(' ')
end