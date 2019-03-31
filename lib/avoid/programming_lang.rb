module ProgrammingLang
  def self.retrieve()
    if Dir.glob('*.xcodeproj').any? || Dir.glob('*.xcworkspace').any?
    	'ios'
    elsif Dir.glob('*.gradle').any?
    	'android'
    elsif Dir.glob('*.gemspec').any?
    	'ruby'
    elsif Dir.glob('*.js').any? && Dir.glob('package.json').any?
    	'node'
    else
      raise ArgumentError, 'Programming language not supported!'
    end
  end
end