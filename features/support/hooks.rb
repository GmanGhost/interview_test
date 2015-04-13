Before do |scenario|

end

After do |scenario|
  if scenario.failed?
    puts scenario.name
    puts scenario.exception.message
  end
end