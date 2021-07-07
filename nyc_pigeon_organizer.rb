def nyc_pigeon_organizer(data)
  names_hash = {}
  data.each_pair do |top_level_key, hash| # We use the each_pair enumerable to give us access to the first nested hash. 
    hash.each_pair do |attribute, array| # We use each_pair again on the nested hash to give us access to the arrays of names.
      array.each do |name| # For each `name` element in our array, do the following if statements.
        if !names_hash.has_key?(name)
          names_hash[name] = {} # If our new hash doesn't have this `name` element as a key, add it and assign it to an empty hash.
        end
        if !names_hash[name].has_key?(top_level_key)
          names_hash[name][top_level_key] = [] # If our hash assigned to `name` doesn't have this top level key in its hash, add it and assign it to an empty array.
        end
        if !names_hash[name][top_level_key].include?(attribute)
          names_hash[name][top_level_key] << attribute.to_s # If our array assigned to a top level key doesn't have this attribute in it, add it and convert it into a string.
        end
      end
    end
  end
  names_hash
end