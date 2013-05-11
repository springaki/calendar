require './calendar.rb'

describe 'Calendar' do
  context 'new instance is 2013, 4' do
    before do
      @calendar = Calendar.new(2013, 4)
    end

    describe '#header' do
      context "no args" do
        it "create header" do
          expect(@calendar.header).to eq ['Su Mo Tu We Th Fr Sa', 'April 2013']
        end
      end
    end

    describe '#week' do
      context "with 0" do
        it 'does something'

        it 'pending' do
          expect(@calendar.week(0)).to eq nil
        end

        it 'test' do
          expect(pending @calendar.week(0)).to eq nil
        end

        it 'invalid args' do
          expect(@calendar.week(0)).to eq nil
        end
      end

      context "with 1" do
        it '1st week. nil and 1st to 6th days Array' do
          expect(@calendar.week(1)).to eq [nil, 1, 2, 3, 4, 5, 6]
        end
      end

      context "with 2" do
        it '2nd week. 7th to 13th days Array' do
          expect(@calendar.week(2)).to eq [7,8,9,10,11,12,13]
        end
      end

      context "with 3" do
        it '3rd week. 14th to 20th days Array' do
          expect(@calendar.week(3)).to eq [14,15,16,17,18,19,20]
        end
      end

      context "with 4" do
        it '4th week. 21th to 27th days Array' do
          expect(@calendar.week(4)).to eq [21,22,23,24,25,26,27]
        end
      end

      context "with 5" do
        it '5th week. 28th to 30th days and nil Array' do
          expect(@calendar.week(5)).to eq [28,29,30,nil,nil,nil,nil]
        end
      end
    end
  end
end
