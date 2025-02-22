class PokemonSerializer
    def initialize(pokemon_object)
      @pokemon = pokemon_object
    end

    def to_serialized_json
      @pokemon.to_json(:include => {
        :trainer => {:only => [:name]},
      }, :except => [:updated_at, :created_at])
    end
end 