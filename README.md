# translates

A dead-simple POR gem that handles delegation based on `I18n.locale`.

# installation

    gem 'translates', git: 'https://stealthis.ca/translates.git/'

# usage

    class Post
      include Translates
      translates :title, :content
    end

# in practice

    >>> I18n.locale = :fr
    >>> post = Post.new(title: 'en', title_fr: 'fr',
                        content: 'en', content_fr: nil)
    >>> post.title == 'fr' # title_fr has precedence
    >>> post.content == 'en' # falls back to default

