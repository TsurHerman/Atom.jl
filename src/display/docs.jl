type DocObj
  docstring
  mtable
end

function render(::Editor, dobj::DocObj; options = d())
  torender = [dobj.docstring; dobj.mtable]
  d(:type     => :dom,
    :tag      => :div,
    :contents => map(x -> render(Editor(), x, options = options), torender))
end
