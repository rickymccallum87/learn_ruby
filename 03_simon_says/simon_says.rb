def echo str
    str
end

def shout str
    str.upcase
end

def repeat str, count=1
    repeated = str + ' ' + str
    while count > 2
        repeated += ' ' + str
        count -= 1
    end
    repeated
end

def start_of_word word, length
    word[0, length]
end

def first_word sentence
    arr = sentence.split(' ')
    arr[0]
end

def titleize str
    if !str.include? ' '
        return str.capitalize
    else 
        arr = str.split(' ')
        title = []
        little_words = ['and', 'the', 'over']
        arr.each do |word|
            if not little_words.include? word or title.length == 0
                title.push word.capitalize
            else
                title.push word
            end
        end
        return title.join(' ')
    end
end