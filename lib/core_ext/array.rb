class Array
  unless self.respond_to? :wrap
    # From: activesupport/lib/active_support/core_ext/array/wrap.rb, line 39
    def self.wrap(object)
      if object.nil?
        []
      elsif object.respond_to?(:to_ary)
        object.to_ary || [object]
      else
        [object]
      end
    end
  end
end
