#have a allergy score and an array with all possible scores, descending
#for each score, subtract from allergy score if less than or equal to
#add that score to an array
#interpolate allergies into string
#255 and below is unique combination
allergies = {
  'cats' => 128,
  'pollen' => 64,
  'chocolate' => 32,
  'tomatoes' => 16,
  'strawberries' => 8,
  'shellish' => 4,
  'peanuts' => 2,
  'eggs' => 1
}

allergy_score = 38
allergies_have = []

allergies.each do |allergy, value|
  if value <= allergy_score
    allergy_score -= value
    allergies_have << allergies.key(value)
  end
end

output = "The patient is allergic to #{allergies_have.join(", ")}."

p output
