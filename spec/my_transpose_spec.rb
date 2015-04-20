describe "#my_transpose" do

  let(:numbers) { [[1,2], [3,4], [5,6]] }
  let(:alphabet) { [["a", "d", "g"], ["b", "e", "h"], ["c", "f", "i"]] }
  let(:letters) { [[:a, :c, :e, :g], [:b, :d, :f, :h]] }

  it "doesn't change the original array" do
    numbers.my_transpose
    expect(numbers).to eq(numbers)
  end

  it "doesn't use #transpose" do     
    expect_any_instance_of(Array).to_not receive(:transpose)
    numbers.my_transpose
  end

  it "groups three nested arrays of two elements into two nested arrays of three elements" do
    expect(numbers.my_transpose).to eq([[1, 3, 5], [2, 4, 6]])
  end

  it "groups three nested arrays of three elements into three nested arrays of three elements" do
    expect(alphabet.my_transpose).to eq([["a", "b", "c"], ["d", "e", "f"], ["g", "h", "i"]])
  end

  it "groups two nested arrays of four elements into four nested arrays of two elements" do
    expect(letters.my_transpose).to eq([[:a, :b], [:c, :d], [:e, :f], [:g, :h]])
  end

end
