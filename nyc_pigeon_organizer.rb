def nyc_pigeon_organizer(data)
  # write your code here!
  result = {}
  data.each do |key, value|  #// grabs each key "color gender lives"
    value.each do |key2, name| #// first run colors, then gender, then live
      name.each do |name| #// checks name per attatribute
        if !result[name]  #// if this name doesnt exist it creates it into the hash
          result[name] = {}
        end

        if !result[name][key] #// if this key doesnt exist for the name, create it
          result[name][key] = []
        end

        result[name][key] << key2.to_s #// pushes value into the key
      end
    end
  end
  pp result
  result

end
