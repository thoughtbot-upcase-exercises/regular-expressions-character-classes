require "spec_helper"

describe Names do
  describe "matching_first_name" do
    it "matches 'Jessie'" do
      expect(Names.new.matching_first_name).to match "Jessie"
    end

    it "matches 'Bob'" do
      expect(Names.new.matching_first_name).to match "Bob"
    end

    it "does not match 'bob'" do
      expect(Names.new.matching_first_name).not_to match "bob"
    end

    it "does not match 'A'" do
      expect(Names.new.matching_first_name).not_to match "A"
    end
  end

  describe "matching_first_name_last_name" do
    it 'matches "James Bond"' do
      expect(Names.new.matching_first_name_last_name).to match "James Bond"
    end

    it 'matches "James    Bond"' do
      expect(Names.new.matching_first_name_last_name).to match "James    Bond"
    end

    it 'matches "Jesse \t James"' do
      expect(Names.new.matching_first_name_last_name).to match "Jesse \t James"
    end

    it "does not match 'hi'" do
      expect(Names.new.matching_first_name_last_name).not_to match "hi"
    end

    it "does not match 'james bond'" do
      expect(Names.new.matching_first_name_last_name).not_to match "james bond"
    end

    it "does not match 'James bond'" do
      expect(Names.new.matching_first_name_last_name).not_to match "James bond"
    end

    it "does not match 'J B'" do
      expect(Names.new.matching_first_name_last_name).not_to match "J B"
    end
  end
end
