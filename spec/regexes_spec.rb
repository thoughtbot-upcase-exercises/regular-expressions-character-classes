require "spec_helper"

describe "regex_matching_any_three_characters" do
  it "matches 'abc'" do
    expect(regex_matching_any_three_characters).to match "abc"
  end

  it "matches '   '" do
    expect(regex_matching_any_three_characters).to match "   "
  end

  it "matches '1a '" do
    expect(regex_matching_any_three_characters).to match "1a "
  end

  it "does not match 'a'" do
    expect(regex_matching_any_three_characters).not_to match "a"
  end
end

describe "regex_matching_telephone_number" do
  it "matches '650-123-1234'" do
    expect(regex_matching_telephone_number).to match "650-123-1234"
  end

  it "does not match '6501-1234-1234'" do
    expect(regex_matching_telephone_number).not_to match "6501-1234-1234"
  end
end

describe "regex_matching_first_name" do
  it "matches 'Jessie'" do
    expect(regex_matching_first_name).to match "Jessie"
  end

  it "matches 'Bob'" do
    expect(regex_matching_first_name).to match "Bob"
  end

  it "does not match 'bob'" do
    expect(regex_matching_first_name).not_to match "bob"
  end

  it "does not match 'A'" do
    expect(regex_matching_first_name).not_to match "A"
  end
end

describe "regex_matching_two_words_separated_by_a_space" do
  it "matches 'hi there'" do
    expect(regex_matching_two_words_separated_by_a_space).to match "hi there"
  end

  it "matches 'user_name pass_word'" do
    expect(regex_matching_two_words_separated_by_a_space).to match "user_name pass_word"
  end

  it "matches 'A1 Sauce'" do
    expect(regex_matching_two_words_separated_by_a_space).to match "A1 Sauce"
  end

  it "does not match 'hi'" do
    expect(regex_matching_two_words_separated_by_a_space).not_to match "hi"
  end
end

describe "regex_matching_two_words_separated_by_some_of_space" do
  it "matches 'i_am over_here'" do
    expect(regex_matching_two_words_separated_by_some_space).to match "i_am over_here"
  end

  it "matches 'A1     Sauce'" do
    expect(regex_matching_two_words_separated_by_some_space).to match "A1     Sauce"
  end

  it "matches 'A1\n\t  Sauce'" do
    expect(regex_matching_two_words_separated_by_some_space).to match "A1\t\n  Sauce"
  end

  it "does not match 'Whatsup'" do
    expect(regex_matching_two_words_separated_by_some_space).not_to match "Whatsup"
  end
end

describe "regex_matching_not_lowercase" do
  it "matches '1'" do
    expect(regex_matching_not_lowercase).to match "1"
  end

  it "matches 'A'" do
    expect(regex_matching_not_lowercase).to match "A"
  end

  it "matches 'Abc'" do
    expect(regex_matching_not_lowercase).to match "Abc"
  end

  it "does not match 'abc'" do
    expect(regex_matching_not_lowercase).not_to match "abc"
  end
end
