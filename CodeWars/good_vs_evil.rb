def total_worth (side, worth)

end


def goodVsEvil(good, evil)
  good_h = {'0' => 1, '1' => 2, '2' => 3, '3' => 3, '4' => 4, '5' => 10}
  evil_h = {'0' => 1, '1' => 2, '2' => 2, '3' => 2, '4' => 3, '5' => 5, '6' => 10}
  g_worth = 0
  e_worth = 0
  g_split = good.split(' ')
  e_split = evil.split(' ')

  g_split.each_index {|n|
    g_worth += good_h[n.to_s] * g_split[n].to_s.to_i
  }

  e_split.each_index { |n|
    e_worth += evil_h[n.to_s] * e_split[n].to_s.to_i
  }

  case g_worth <=> e_worth # comparator -1 0 +1
    when 0
      'Battle Result: No victor on this battle field'
    when +1
      'Battle Result: Evil eradicates all trace of Good'
    when -1
      'Battle Result: Good triumphs over Evil'
    else
      'Something Bad with Comparison'
  end
end

puts goodVsEvil('1 0 0 0 0 0', '1 0 0 0 0 0 0')
puts goodVsEvil('0 0 0 0 0 10', '0 1 1 1 1 0 0')
puts goodVsEvil('0 0 0 0 0 10', '0 1 1 1 1 0 0')
puts goodVsEvil('0 0 0 0 0 1', '0 0 0 0 0 0 1')
