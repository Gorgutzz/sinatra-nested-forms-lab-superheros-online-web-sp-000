class Hero
    attr_accessor :name, :power, :bio
    SUPERHEROS = []

    def initialize(params)
        @name = params[:name]
        @power = params[:power]
        @bio = params[:bio]
        HEROS << self
    end


    def self.all
        HEROS
     end

end
