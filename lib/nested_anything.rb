module NestedAnything

  def self.included(base)
    base.before_filter :add_suffix, only: [:update, :create]
  end

  private

  def suffix 
    'attributes'
  end

  def add_suffix
    attributify(request.params)
  end

  def attributify(params, parent=nil)
    p = parent.to_s.classify.safe_constantize if parent
    params.dup.each do |k, v|
      if v.is_a? Enumerable
        if p && p.method_defined?("#{k}_#{suffix}=")
          params[:"#{k}_#{suffix}"] = params.delete k
        end
        v = [v] if v.is_a?(Hash)
        v.each { |h| attributify(h, k) }
      end
    end
  end
end
