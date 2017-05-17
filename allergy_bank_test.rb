require "minitest/autorun"
require "minitest/pride"
require_relative 'allergy_bank'

class AllergyBankTest < Minitest::Test
  def test_initilizes_allergy_information
    tester = AllergyBank.new
    expected = {
      'cats' => 128,
      'pollen' => 64,
      'chocolate' => 32,
      'tomatoes' => 16,
      'strawberries' => 8,
      'shellfish' => 4,
      'peanuts' => 2,
      'eggs' => 1
    }

    assert_equal expected, tester.allergies
  end

  def test_patient_has_one_allergy
    tester = AllergyBank.new
    expected = "The patient is allergic to eggs."

    assert_instance_of AllergyBank, tester
    assert_equal expected, tester.allergy_outputer(1)
  end

  def test_patient_has_two_allergies
    tester = AllergyBank.new
    expected = "The patient is allergic to strawberries, shellfish."

    assert_equal expected, tester.allergy_outputer(12)
  end

  def test_patient_has_all_the_allergies
    tester = AllergyBank.new
    expected = "The patient is allergic to cats, pollen, chocolate, tomatoes, strawberries, shellfish, peanuts, eggs."

    assert_equal expected, tester.allergy_outputer(255)
  end
end
