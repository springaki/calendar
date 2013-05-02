require './calendar.rb'

describe 'Calendar' do
  context 'new parameter is 2013, 4' do
    describe '#week' do
      context "have args" do
        it 'string is 2013/04 calendar' do
          Calendar.new(2013, 4).week(1).should eq [nil, 1, 2, 3, 4, 5, 6]
        end
      end
    end
  end
end
