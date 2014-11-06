# Implement the below functions in order.
class CharacterClasses
  # Returns a regex that matches a string that has at least three characters, like
  # "abc" or "a12" or "a b" (the middle character is a space).
  def matching_at_least_three_characters
    /WRITE ME/
  end

  # Returns a regex that matches a telephone number with dashes.
  #
  # It should match:
  #   * "650-123-1234"
  #   * "617-857-1234"
  #
  # It should not match:
  #   * "650 123 1234"
  #   * "650 123 12"
  def matching_telephone_number
    /WRITE ME/
  end

  # Returns a regex that matches any string with two single-digit numbers in it.
  #
  # Examples: "23", "a 2 b 4".
  def matching_two_numbers
    /WRITE ME/
  end

  # Returns a regex that matches a string that has at least one character that
  # is not a lowercase letter.
  #
  # It should match:
  #   * "Abc"
  #   * "X"
  #   * "James"
  #
  # It should not match:
  #   * "james"
  #   * "abc"
  def matching_not_lowercase
    /WRITE ME/
  end
end
