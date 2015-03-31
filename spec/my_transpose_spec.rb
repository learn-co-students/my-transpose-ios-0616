describe "#my_group_by" do
  
  it "doesn't change the original array" do
    numbers = [[1,2], [3,4], [5,6]]
    numbers.my_transpose
    expect(numbers).to eq(numbers)
  end

  it "doesn't use #transpose" do     
    expect_any_instance_of(Array).to_not receive(:transpose)
    [[1,2], [3,4], [5,6]].my_transpose
  end

  it "groups three nested arrays of two elements into two nested arrays of three elements" do
    expect([[1,2], [3,4], [5,6]].my_transpose).to eq([[1, 3, 5], [2, 4, 6]])
  end

  it "groups three nested arrays of three elements into three nested arrays of three elements" do
    expect([["a", "d", "g"], ["b", "e", "h"], ["c", "f", "i"]].my_transpose).to eq([["a", "b", "c"], ["d", "e", "f"], ["g", "h", "i"]])
  end

  it "groups two nested arrays of four elements into four nested arrays of two elements" do
    expect([[:a, :c, :e, :g], [:b, :d, :f, :h]].my_transpose).to eq([[:a, :b], [:c, :d], [:e, :f], [:g, :h]])
  end

end
