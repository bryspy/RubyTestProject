require 'test/unit'

def list names
  csvString = ""
  names.map {|i|i[:name] }.each_with_index{|name,index|
    case index
    when names.size - 1
      csvString << "#{name}"
    when names.size - 2
      csvString << "#{name} & "
    else
      csvString << "#{name}, "
    end
  }
  csvString
end

extend Test::Unit::Assertions


assert_equal(list([{name: 'Bart'},{name: 'Lisa'},{name: 'Maggie'},{name: 'Homer'},{name: 'Marge'}]), 'Bart, Lisa, Maggie, Homer & Marge',
"Must work with many names")
assert_equal(list([{name: 'Bart'},{name: 'Lisa'}]), 'Bart & Lisa',
"Must work with two names")
assert_equal(list([{name: 'Bart'}]), 'Bart', "Wrong output for a single name")
