# Build a class EmailParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').


class EmailParser
  
  attr_accessor :emails
  
  def initialize(emails)
    @emails=emails
  end
  
  
  def parse
    
    
   if  @emails.include?(",") 
    
    @emails=@emails.split(",").map{ |email| email.strip}
    
    elsif  @emails.include?(" ") 
    @emails=@emails.split(" ").map{ |email| email.strip}
  end
  
  
   @emails=@emails.map{ |email|
   if email.strip.include?(" ")
   email.split(" ") 
 else
   email
 end
     
   }.compact
    
  
  
  @emails.flatten.uniq
  
end
  
end