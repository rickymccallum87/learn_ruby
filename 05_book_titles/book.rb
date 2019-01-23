class Book
    attr_reader :title

    def title= new_title
        if !new_title.include? ' '
            @title = new_title.capitalize
        else
            new_title_words = new_title.split(' ')
            title_words = []
            conjunctions = ['and']
            prepositions = ['in', 'of']
            articles = ['a', 'the', 'an']
            new_title_words.each do |word|
                if (conjunctions.include? word or
                            prepositions.include? word or
                            articles.include? word) and
                            title_words.length > 0
                    title_words.push word
                else
                    title_words.push word.capitalize
                end
            end
            @title = title_words.join(' ')
        end
    end
end
