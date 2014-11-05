class Names
  # Returns a regex matching a capitalized first name, like "James" or "Jessie".
  def matching_first_name
    /WRITE ME/
  end

  # Returns a regex matching two capitalized names, separated by some amount of whitespace.
  # Whitespace can be tabs (represented as \t in strings), spaces, newlines, etc.
  #
  # It should match:
  #   * "Jesse \t James"
  #   * "James        Bond"
  #   * "7 Costanza"
  # It should not match:
  #   * "JamesBond"
  #   * "james bond"
  def matching_first_name_last_name
    /WRITE ME/
  end
end
