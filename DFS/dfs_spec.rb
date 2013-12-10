require './dfs'
adj = {}
adj = {:a =>[:b,:c], :b =>[:a,:d], :c => [:a,:d], :d => [:c,:e], :e => [:d]}

new_dfs = DFS.new(adj)

new_dfs.dfs_run!(:a)
new_dfs.inspect

puts "the parent hash is #{new_dfs.parent}"

