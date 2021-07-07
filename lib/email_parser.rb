# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').


class EmailParser

    attr_accessor :emailS, :emailA
    emailA = []
    

    def initialize(emailsIn)
        self.emailS = emailsIn
        
    end 

    def parse 
        emailA = emailS.split(/[,\s]+/)  
        emailA.uniq
        
    end 
end 