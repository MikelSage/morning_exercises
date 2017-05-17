class AllergyBank
  attr_reader :allergies
  def initialize
    @allergies = {
      'cats' => 128,
      'pollen' => 64,
      'chocolate' => 32,
      'tomatoes' => 16,
      'strawberries' => 8,
      'shellfish' => 4,
      'peanuts' => 2,
      'eggs' => 1
    }
  end

  def allergy_outputer(score)
    allergies_had = []
    allergies.each do |allergy, value|
      if value <= score
        score -= value
        allergies_had << allergy
      end
    end
    "The patient is allergic to #{allergies_had.join(", ")}."
  end
end
