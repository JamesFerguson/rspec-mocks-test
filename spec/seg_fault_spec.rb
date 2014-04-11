class Ancestor
  attr_accessor :descendants
end

class Descendant
  attr_accessor :ancestor
end

describe 'test' do
  let(:descendant) { double 'descendants', ancestor: ancestor }
  let(:ancestor) { double 'ancestor', descendants: [descendant] }

  it 'should not seq fault' do
    expect(ancestor.descendants.first).to eql(descendant)
  end
end


