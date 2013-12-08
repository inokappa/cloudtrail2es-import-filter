#!/usr/bin/env ruby

require 'digest/md5'

index_param = "testpost"
type_param = "test3"

while line = gets
  rdm = ((0..9).to_a + ("a".."z").to_a + ("A".."Z").to_a).sample(3).join
  id = Digest::MD5.new.update("#{rdm}")
  puts "{ \"index\" : { \"_index\" : \"#{index_param}\", \"_type\" : \"#{type_param}\", \"_id\" : \"#{id}\" } }"
  puts line 
end
