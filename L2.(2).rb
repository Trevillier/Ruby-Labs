def inputPokemon
  print 'Input count of pokemons: '
  count = gets.to_i
  i = 0
  pokemons_arr = {} 
  while(i < count)
    print 'Write a name of pokemon: '
    pokemons_name = gets
    print 'Write a color of pokemon : '
    pokemons_color = gets
    pokemons_arr.merge!({pokemons_name => pokemons_color})
    i += 1
  end
  return pokemons_arr
end

def outputPokemon(pokemons_arr)
   pokemons_arr.each_with_index{|val, index| puts "Pokemon: #{index} #{val} color:-)"}
end

pokemons_arr = inputPokemon
outputPokemon(pokemons_arr)
