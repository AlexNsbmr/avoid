module GitignoreSource
  def self.gitignoreURL(programming_lang)
    case programming_lang
      when 'android'
        "https://raw.githubusercontent.com/github/gitignore/master/Android.gitignore"
      when 'ios'
        "https://raw.githubusercontent.com/github/gitignore/master/Swift.gitignore"
      when 'ruby'
        "https://raw.githubusercontent.com/github/gitignore/master/Ruby.gitignore"
      when 'node'
        "https://raw.githubusercontent.com/github/gitignore/master/Node.gitignore"
      else
        raise ArgumentError, 'Unknown programming language'
    end
  end
end