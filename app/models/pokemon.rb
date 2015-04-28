class Pokemon < ActiveRecord::Base

    # has_many :abilities

    scope :gen1, -> { where("number >= 1 AND number <= 151") }
    scope :gen2, -> { where("number >= 152 AND number <= 251") }
    scope :gen3, -> { where("number >= 252 AND number <= 386") }
    scope :gen4, -> { where("number >= 387 AND number <= 493") }
    scope :gen5, -> { where("number >= 494 AND number <= 649") }
    scope :gen6, -> { where("number >= 650 AND number <= 721") }

end
