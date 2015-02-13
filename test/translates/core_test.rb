require 'test_helper'

class TestCore < MiniTest::Test
  def setup
    @dummy = Dummy.new(title: 'en', title_fr: 'fr',
                       description: 'en', description_fr: nil)
  end

  def test_attribute_is_blank_with_empty_string
    assert Translates.attribute_is_blank?("")
  end

  def test_attribute_is_blank_with_nil
    assert Translates.attribute_is_blank?(nil)
  end

  def test_attribute_is_blank_with_string
    refute Translates.attribute_is_blank?("sup")
  end

  def test_default_lookup
    I18n.locale = I18n.default_locale
    assert_equal 'en', @dummy.title
  end

  def test_localized_lookup
    I18n.locale = :fr
    assert_equal 'fr', @dummy.title
  end

  def test_localized_lookup_with_default
    I18n.locale = :fr
    assert_equal 'en', @dummy.description
  end
end
