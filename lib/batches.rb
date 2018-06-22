require "batches/version"

class Batches
  class NoBlockError < ArgumentError; end
  
  def self.do(cocurrence, entities, &block)
    raise NoBlockError, "No block given" if block.nil?
    entities.each_slice(cocurrence).map do |group|
      threads = group.map do |entity|
        Thread.new(entity){|e| block.call(e) }
      end
      threads.map{|t| t.value }
    end.flatten(1)
  end
end