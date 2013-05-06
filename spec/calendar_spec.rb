require './calendar.rb'

describe 'Calendar' do
  context 'new parameter is 2013, 4' do
    describe '#week' do
      context "1th weeb" do
        it 'string is 2013/04 calendar' do
          Calendar.new(2013, 4).week(1).should eq [nil, 1, 2, 3, 4, 5, 6]
        end
      end

      context "2nd week" do
        it '7th to 13th Array' do
          Calendar.new(2013, 4).week(2).should eq [7,8,9,10,11,12,13]
        end
      end

      context "3rd week" do
        it '14th to 20th Array' do
          Calendar.new(2013, 4).week(3).should eq [14,15,16,17,18,19,20]
        end
      end

      context "4th week" do
        it '21th to 27th Array' do
          Calendar.new(2013, 4).week(4).should eq [21,22,23,24,25,26,27]
        end
      end

      context "5th week" do
        it '28th to 30th and nil Array' do
          Calendar.new(2013, 4).week(5).should eq [28,29,30,nil,nil,nil,nil]
        end
      end
    end
  end
end
