require './calendar.rb'

describe 'Calendar' do
  context 'new instance is 2013, 4' do
    before do
      @calendar = Calendar.new(2013, 4)
    end
    describe '#week' do
      context "with 1" do
        it '1st week. nil and 1st to 6th days Array' do
          @calendar.week(1).should eq [nil, 1, 2, 3, 4, 5, 6]
        end
      end

      context "with 2" do
        it '2nd week. 7th to 13th days Array' do
          @calendar.week(2).should eq [7,8,9,10,11,12,13]
        end
      end

      context "with 3" do
        it '3rd week. 14th to 20th days Array' do
          @calendar.week(3).should eq [14,15,16,17,18,19,20]
        end
      end

      context "with 4" do
        it '4th week. 21th to 27th days Array' do
          @calendar.week(4).should eq [21,22,23,24,25,26,27]
        end
      end

      context "with 5" do
        it '5th week. 28th to 30th days and nil Array' do
          @calendar.week(5).should eq [28,29,30,nil,nil,nil,nil]
        end
      end

    end
  end
end
