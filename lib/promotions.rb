class Promotions
    attr_reader :input, :title, :about, :value, :deal, :discount, :location, :how_many_bought, :rating, :buy_now
    #initialize with the users input
    def initialize(input)
        @input = input
    end
    def self.all
        #Return a bunch of promotions from user selected categories
        puts "this method worked. The users input was #{input}."
        #Make a Hash
        promo_1 = self.new
        promo_1.title = "Wilhelmina's"
        promo_1.about = "Sip on a cocktail each and share a section of cheeses and meats, accompanied by house pickles, quince and walnuts"
        promo_1.value = 91
        promo_1.deal = 29
        promo_1.discount = promo_1.value - promo_1.deal
        promo_1.location = "Shop 3, 332 Darling Street, Balmain, 2041"
        promo_1.how_many_bought = 17
        promo_1.rating = 4.6
        promo_1.buy_now = false

        promo_2 = self.new
        promo_2.title = "Regional Wines of The World"
        promo_2.about = "Experienced wine consultant leads up to eight people through a tasting experience at a location of your choice; two bottles of wine to keep"
        promo_2.value = 129
        promo_2.deal = 45
        promo_2.discount = promo_1.value - promo_1.deal
        promo_2.location = nil
        promo_2.how_many_bought = 870
        promo_2.rating = 5.0
        promo_2.buy_now = false

       [promo_1, promo_2]

    end
end