module RandomData
  
  module Text

    # Methods to create random strings and paragraphs.
    
     # Returns a string of random upper- and lowercase alphanumeric characters.  Accepts a size parameters, defaults to 16 characters.
     #
     # >> Random.alphanumeric
     #
     # "Ke2jdknPYAI8uCXj"
     #
     # >> Random.alphanumeric(5)
     #
     # "7sj7i"

    def alphanumeric(size=16)
      s = ""
      size.times { s << (i = Kernel.rand(62); i += ((i < 10) ? 48 : ((i < 36) ? 55 : 61 ))).chr }
      s
    end
    
    # TODO make these more coherent #:nodoc:

    @@sentences = [
     "Lorem ipsum dolor sit amet  consectetur adipisicing elit sed do eiusmod tempor incididunt ut labore et dolore magna aliqua",
     "Ut enim ad minim veniam quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat",
     "Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur",
     "Excepteur sint occaecat cupidatat non proident  sunt in culpa qui officia deserunt mollit anim id est laborum",
     "Ed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae",
     "Ab illo inventore veritatis et quasi architecto beatae vitae dicta",
     "Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur",
     "Magni dolores eos qui ratione voluptatem sequi nesciunt",
     "Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius",
     "Modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem"
    ]

    # Returns a given number of paragraphs delimited by two newlines (defaults to two paragraphs), using a small pool of generic sentences.
    # >> Random.paragraphs  
    #
    # "I might jump an open drawbridge or Tarzan from a vine, beause I'm the unknown stuntman that makes Eastwood look so fine.\n\n \Always fighting all the evil forces bringing peace and justice to all. \n\n"
     
   def paragraphs(num = 2)
      paras = []
 
     num.times do 
       sents = []
       (rand(5)+1).times do
         sents << @@sentences.rand
       end
       paras << sents.join('. ')
     end
 
     return paras.join("\n\n") + '.'
   end

    def words(size = 1)
      w = @@sentences.join(' ').split(' ')
      w[rand(w.size - size - 1), size].join(" ").gsub(/[,;?\.'"\-\n]/, "").downcase
    end
    
    def phrase(bound = 5)
      words(rand(bound - 3) + 3).capitalize
    end
    
    def question
      sentence + "?"
    end
    
    def sentence
      @@sentences.rand + '.'
    end

 end
end