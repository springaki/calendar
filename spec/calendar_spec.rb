require './calendar.rb'

describe 'Calendar' do
  context 'new parameter is 2013, 4' do
    describe '#to_s' do
      context "have args" do
        it 'string is 2013/04 calendar' do
          Calendar.new(2013, 4).to_s.should eq [nil, 1, 2, 3, 4, 5, 6]
        end
      end
    end
  end
end
