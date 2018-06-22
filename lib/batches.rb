require "batches/version"

class Batches
  class NoBlockError < ArgumentError; end
  
  def self.do(cocurrence, entities, &block)
    raise NoBlockError, "No block given" unless block
    entities.each_slice(cocurrence) do |group|
      threads = group.map do |entity|
        Thread.new(entity){|e| block.call(e) }
      end
      threads.map{|t| t.join }
    end.flatten(1)
  end
end