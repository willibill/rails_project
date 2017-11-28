# -*- encoding: utf-8 -*-
# stub: paperclip 4.1.1 ruby lib

Gem::Specification.new do |s|
  s.name = "paperclip".freeze
  s.version = "4.1.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Jon Yurek".freeze]
  s.date = "2014-02-21"
  s.description = "Easy upload management for ActiveRecord".freeze
  s.email = ["jyurek@thoughtbot.com".freeze]
  s.homepage = "https://github.com/thoughtbot/paperclip".freeze
  s.licenses = ["MIT".freeze]
  s.required_ruby_version = Gem::Requirement.new(">= 1.9.2".freeze)
  s.requirements = ["ImageMagick".freeze]
  s.rubyforge_project = "paperclip".freeze
  s.rubygems_version = "2.6.14".freeze
  s.summary = "File attachments as attributes for ActiveRecord".freeze

  s.installed_by_version = "2.6.14" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<activemodel>.freeze, [">= 3.0.0"])
      s.add_runtime_dependency(%q<activesupport>.freeze, [">= 3.0.0"])
      s.add_runtime_dependency(%q<cocaine>.freeze, ["~> 0.5.3"])
      s.add_runtime_dependency(%q<mime-types>.freeze, [">= 0"])
      s.add_development_dependency(%q<activerecord>.freeze, [">= 3.0.0"])
      s.add_development_dependency(%q<shoulda>.freeze, [">= 0"])
      s.add_development_dependency(%q<appraisal>.freeze, [">= 0"])
      s.add_development_dependency(%q<mocha>.freeze, [">= 0"])
      s.add_development_dependency(%q<aws-sdk>.freeze, [">= 1.5.7"])
      s.add_development_dependency(%q<bourne>.freeze, [">= 0"])
      s.add_development_dependency(%q<sqlite3>.freeze, ["~> 1.3.4"])
      s.add_development_dependency(%q<cucumber>.freeze, ["~> 1.2.1"])
      s.add_development_dependency(%q<aruba>.freeze, [">= 0"])
      s.add_development_dependency(%q<nokogiri>.freeze, [">= 0"])
      s.add_development_dependency(%q<capybara>.freeze, ["= 2.0.3"])
      s.add_development_dependency(%q<bundler>.freeze, [">= 0"])
      s.add_development_dependency(%q<fog>.freeze, ["~> 1.0"])
      s.add_development_dependency(%q<launchy>.freeze, [">= 0"])
      s.add_development_dependency(%q<rake>.freeze, [">= 0"])
      s.add_development_dependency(%q<fakeweb>.freeze, [">= 0"])
      s.add_development_dependency(%q<railties>.freeze, [">= 0"])
      s.add_development_dependency(%q<actionmailer>.freeze, [">= 3.0.0"])
    else
      s.add_dependency(%q<activemodel>.freeze, [">= 3.0.0"])
      s.add_dependency(%q<activesupport>.freeze, [">= 3.0.0"])
      s.add_dependency(%q<cocaine>.freeze, ["~> 0.5.3"])
      s.add_dependency(%q<mime-types>.freeze, [">= 0"])
      s.add_dependency(%q<activerecord>.freeze, [">= 3.0.0"])
      s.add_dependency(%q<shoulda>.freeze, [">= 0"])
      s.add_dependency(%q<appraisal>.freeze, [">= 0"])
      s.add_dependency(%q<mocha>.freeze, [">= 0"])
      s.add_dependency(%q<aws-sdk>.freeze, [">= 1.5.7"])
      s.add_dependency(%q<bourne>.freeze, [">= 0"])
      s.add_dependency(%q<sqlite3>.freeze, ["~> 1.3.4"])
      s.add_dependency(%q<cucumber>.freeze, ["~> 1.2.1"])
      s.add_dependency(%q<aruba>.freeze, [">= 0"])
      s.add_dependency(%q<nokogiri>.freeze, [">= 0"])
      s.add_dependency(%q<capybara>.freeze, ["= 2.0.3"])
      s.add_dependency(%q<bundler>.freeze, [">= 0"])
      s.add_dependency(%q<fog>.freeze, ["~> 1.0"])
      s.add_dependency(%q<launchy>.freeze, [">= 0"])
      s.add_dependency(%q<rake>.freeze, [">= 0"])
      s.add_dependency(%q<fakeweb>.freeze, [">= 0"])
      s.add_dependency(%q<railties>.freeze, [">= 0"])
      s.add_dependency(%q<actionmailer>.freeze, [">= 3.0.0"])
    end
  else
    s.add_dependency(%q<activemodel>.freeze, [">= 3.0.0"])
    s.add_dependency(%q<activesupport>.freeze, [">= 3.0.0"])
    s.add_dependency(%q<cocaine>.freeze, ["~> 0.5.3"])
    s.add_dependency(%q<mime-types>.freeze, [">= 0"])
    s.add_dependency(%q<activerecord>.freeze, [">= 3.0.0"])
    s.add_dependency(%q<shoulda>.freeze, [">= 0"])
    s.add_dependency(%q<appraisal>.freeze, [">= 0"])
    s.add_dependency(%q<mocha>.freeze, [">= 0"])
    s.add_dependency(%q<aws-sdk>.freeze, [">= 1.5.7"])
    s.add_dependency(%q<bourne>.freeze, [">= 0"])
    s.add_dependency(%q<sqlite3>.freeze, ["~> 1.3.4"])
    s.add_dependency(%q<cucumber>.freeze, ["~> 1.2.1"])
    s.add_dependency(%q<aruba>.freeze, [">= 0"])
    s.add_dependency(%q<nokogiri>.freeze, [">= 0"])
    s.add_dependency(%q<capybara>.freeze, ["= 2.0.3"])
    s.add_dependency(%q<bundler>.freeze, [">= 0"])
    s.add_dependency(%q<fog>.freeze, ["~> 1.0"])
    s.add_dependency(%q<launchy>.freeze, [">= 0"])
    s.add_dependency(%q<rake>.freeze, [">= 0"])
    s.add_dependency(%q<fakeweb>.freeze, [">= 0"])
    s.add_dependency(%q<railties>.freeze, [">= 0"])
    s.add_dependency(%q<actionmailer>.freeze, [">= 3.0.0"])
  end
end
