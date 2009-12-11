module ActiveRecord
  class Base
    def method_missing(method_id, *args, &block)
      case method_id
      when /^find_all_by_([_a-zA-Z]\w*)$/
        define_method(method_id) do
          find(:all, :conditions => ..extracted from args..)
        end
      when /^find_by_([_a-zA-Z]\w*)$/
        define_method(method_id) do
          find(:first, :conditions => ..extracted from args..)
        end
      end
    end
  end
end
