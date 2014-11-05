require "spec_helper"

describe "matching_at_least_three_characters" do
  it "matches 'abc'" do
    expect(CharacterClasses.new.matching_at_least_three_characters).to match "abc"
  end

  it "matches three spaces" do
    expect(CharacterClasses.new.matching_at_least_three_characters).to match "   "
  end

  it "matches '1a '" do
    expect(CharacterClasses.new.matching_at_least_three_characters).to match "1a "
  end

  it "matches 'abcd'" do
    expect(CharacterClasses.new.matching_at_least_three_characters).to match "abcd"
  end

  it "does not match 'a'" do
    expect(CharacterClasses.new.matching_at_least_three_characters).not_to match "a"
  end
end

describe "matching_telephone_number" do
  it "matches '650-123-1234'" do
    expect(CharacterClasses.new.matching_telephone_number).to match "650-123-1234"
  end

  it "matches '617-922-1812'" do
    expect(CharacterClasses.new.matching_telephone_number).to match "617-922-1812"
  end

  it "does not match '6501-1234-1234'" do
    expect(CharacterClasses.new.matching_telephone_number).not_to match "6501-1234-1234"
  end

  it "does not match '650 123 1234'" do
    expect(CharacterClasses.new.matching_telephone_number).not_to match "650 123 1234"
  end
end


describe "matching_two_numbers" do
  it "matches '23'" do
    expect(CharacterClasses.new.matching_two_numbers).to match "23"
  end

  it "matches 'a 10 b'" do
    expect(CharacterClasses.new.matching_two_numbers).to match "a 10 b"
  end

  it "matches 'hello 9 some more words 4'" do
    expect(CharacterClasses.new.matching_two_numbers).to match "hello 9 some more words 4"
  end

  it "does not match 'a 2 b'" do
    expect(CharacterClasses.new.matching_two_numbers).not_to match "a 2 b"
  end
end

describe "matching_not_lowercase" do
  it "matches '1'" do
    expect(CharacterClasses.new.matching_not_lowercase).to match "1"
  end

  it "matches 'A'" do
    expect(CharacterClasses.new.matching_not_lowercase).to match "A"
  end

  it "matches 'Abc'" do
    expect(CharacterClasses.new.matching_not_lowercase).to match "Abc"
  end

  it "does not match 'abc'" do
    expect(CharacterClasses.new.matching_not_lowercase).not_to match "abc"
  end

  it "does not match 'james'" do
    expect(CharacterClasses.new.matching_not_lowercase).not_to match "james"
  end
end
