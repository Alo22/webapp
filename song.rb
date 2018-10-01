require 'dm-core'
require 'dm-migrations' #para convertir a una tabla en particular
DataMapper.setup(:default, "sqlite3://#{Dir.pwd}/development.db")
 class Song
 include DataMapper::Resource
 property :id, Serial
 property :title, String
 property :lyrics, Text
 property :length, Integer
 property :released_on, Date

 end
 DataMapper.finalize