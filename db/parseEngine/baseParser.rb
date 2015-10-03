require 'rubygems'
require 'nokogiri'
require 'open-uri'
require 'json'

module PokeData
  class JSONable
      def to_json
          hash = {}
          self.instance_variables.each do |var|
              hash[var.to_s.sub(/^@/, '')] = self.instance_variable_get var
          end
          hash.to_json
      end
      def from_json! string
          JSON.load(string).each do |var, val|
              self.instance_variable_set '@'+var , val
          end
      end
  end

  class Move < JSONable
    attr_accessor :name, :types, :pp, :power, :accuracy, :category
    attr_accessor :damage, :description
  end

  class Ability < JSONable
    attr_accessor :name, :description
  end

  class Pokemon < JSONable
    attr_accessor :number, :name, :species, :types, :abilities, :genderThreshold
    attr_accessor :catchRate, :eggGroups, :hatchCounter, :height, :weight, :baseExpYield
    attr_accessor :baseFriendship, :expGroup, :evYield, :bodyStyle, :color, :baseStats
    attr_accessor :pokedexX, :pokedexY, :pokedexOR, :pokedexAS, :learnset
  end

  class Types < JSONable
    attr_accessor :name, :number, :offense, :defense
  end
end
