require 'pry'

class Makeup::Tips
    attr_accessor :name, :avaibility, :url
    def self.today
        # puts <<-Doc.gsub /^\s+/,""
        # 1. Shop Products
        # 2. Makeup Tutorials
        # _____________
        # Doc
        self.scrape_tips
    end
    def self.scrape_tips
        tip = []

        tip << self.scrape_shop
        tip << self.scrape_tipsand
#   tips_1 = self.new
#   tips_1.name = "Makeup Tutorials"
#   tips_1.avaibility = true
#   tips_1.url = "https://www.makeup.com/tipstutorials"
#   binding.pry


#   tip_2 = self.new
#   tip_2.name = "Shop Products"
#   tip_2.avaibility = true
#   tip_2.url = "https://www.makeup.com/productpicks"

#   [tip_1, tip_2]
     tip
end
   def self.scrape_shop
    doc = Nokogiri::HTML(open("https://www.makeup.com/productpicks"))

    tip = self.new
    tip.name = doc.search("h1.m-xs-b-m").text
    tip.url = doc.search("a.link").first.attr("href")
    tip.avaibility = true
    tip
   end

   def self.scrape_tipsand
    doc = Nokogiri::HTML(open("https://www.makeup.com/tipstutorials"))

    tip = self.new
    tip.name = doc.search("h1.m-xs-b-m").text
    tip.url = doc.search("a.link").first.attr("href")
    tip.avaibility = true
    tip
   end
end
