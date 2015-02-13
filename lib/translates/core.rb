module Translates
  class << self
    def included(base)
      base.send(:extend, ClassMethods)
    end

    def attribute_is_blank?(attr)
      attr.nil? || attr == String.new
    end
  end

  module ClassMethods
    def translates(*fields)
      fields.each do |field|
        define_lookup_method(field)
      end
    end

    private

    def define_lookup_method(field)
      define_method(field) do
        localized_attribute = self["#{field}_#{I18n.locale}"] 
        blank = Translates.attribute_is_blank?(localized_attribute) 
        blank ? super() : localized_attribute
      end
    end
  end
end
