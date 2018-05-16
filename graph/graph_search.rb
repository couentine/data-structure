require_relative 'node'

class GraphSearch

  def initialize(node)
    @film_list = Array.new
    @count = 0
    @actor_to_find = node
  end

  def find_kevin_bacon(node_start)
    @actor_to_find.film_actor_hash.each do |title, actor|
      actor.each do |actor_in_kb_film|
        if actor_in_kb_film.name === node_start.name
          @film_list << title
          @count += 1
          puts "#{@film_list}"
          return
        end
      end
    end

    if @count >= 6 || node_start.film_actor_hash.empty?
      self.clear_list
      return nil
    end
    node_start.film_actor_hash.each do |title, actor|

      actor.each do |actor_name|
        if actor_name.name === "Kevin Bacon"
          @count += 1
          @film_list << title
          puts "#{@film_list}"
          return
        else
          @count += 1
          @film_list << title
          find_kevin_bacon(actor_name)
        end
      end
    end
  end


  def clear_list
    @count = 0
    @film_list=[]
  end

end
