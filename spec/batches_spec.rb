require 'batches'

describe "Batches.do" do
  it "should do 20 times in multiple threads" do
    Batches.do(20, (1..200).to_a) do |i|
      print "#{i} "
    end
  end
end