require 'foodie'

describe Foodie::Daily do
  # it "broccoli is gross" do
  #   expect(Foodie::Food.portray("Broccoli")).to eq("Gross!")
  # end
  #
  # it "anything else is delicious" do
  #   expect(Foodie::Food.portray("Not Broccoli")).to eq("Delicious!")
  # end
  #
  # it "pluralizes a word" do
  #   expect(Foodie::Food.pluralize("Tomato")).to eq("Tomatoes")
  # end


  # describe '.daily_horoscope_interpretation'  do
  #   context 'has got a horoscope parameter' do
  #     it "should be response daily horoscope " do
  #       expect(Foodie::Food.daily_horoscope_interpretation("kova")).not_to be_nil
  #     end
  #   end
  #
  #   context 'has\'n got a horoscope parameter' do
  #     it "horoscope name should be equal Aslan " do
  #       expect(Foodie::Food.daily_horoscope_interpretation("").first["Burc"]).to eq("Aslan")
  #     end
  #   end
  # end

  it 'should return horoscope name' do
    expect(Foodie::Daily.new("Aslan").horoscope_name).to eq("Aslan")
    expect(Foodie::Daily.new("Aslan").horoscope_name.class).to eq(String)
  end

  it 'response should be return as a string' do
    expect(Foodie::Daily.new("Aslan").horoscope_motto.class).to eq(String)
  end

end
