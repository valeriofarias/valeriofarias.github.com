require 'nokogiri'
require 'open-uri'

url = 'http://valeriofarias.com/gitparadesigners.htm'
doc = Nokogiri::HTML(open(url))
doc.traverse do |el|
  [el[:src], el[:href]].grep(/\.(gif|jpg|png|pdf)$/i).map{|l| URI.join(url, l).to_s}.each do |link|
        File.open(File.basename(link),'wb'){|f| f << open(link,'rb').read}
    end
end
