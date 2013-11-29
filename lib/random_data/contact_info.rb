require "#{File.dirname(__FILE__)}/domain"

module RandomData
  # Methods for randomly generating contact data like phone numbers and e-mail addresses
  
  module ContactInfo
    include RandomData::Domain

   # Returns a randomly-generated string of digits that roughly resembles a US telephone number.  Not guaranteed to be a valid area code.
   @@phone_prefix = ["20", "29", "11", "12", "13", "14", "15", "16", "16", "18", "19"]
   
   def phone
     "0#{@@phone_prefix.rand}#{'%09d' % rand(9 ** 9)}"
   end
   
   def mobile_phone
     "07#{'%09d' % rand(9 ** 9)}"
   end

   # Returns a randomly-generated string of digits that roughly resembles an international telephone number as dialed from the US.  
   # Not guaranteed to be a valid number but just good enough to get some sample data going.
   
   def international_phone
    "011-#{rand(100) + 1}-#{rand(100)+10}-#{rand(10000)+1000}"
   end

   # Returns an e-mail address of the form "{first_initial}{last_name}@{domain}"
   def email 
    "#{(initial + '.' + lastname).downcase}\@#{domain}"  
   end
 end
end
