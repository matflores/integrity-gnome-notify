# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{integrity-gnome-notify}
  s.version = "0.1.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Mat\303\255as Flores"]
  s.date = %q{2009-06-01}
  s.description = %q{Easily let Integrity notify the user after each build}
  s.email = %q{mflores@atlanware.com}
  s.extra_rdoc_files = [
    "LICENSE",
     "README.markdown",
     "README.rdoc"
  ]
  s.files = [
    ".document",
     ".gitignore",
     "LICENSE",
     "README.markdown",
     "README.rdoc",
     "Rakefile",
     "VERSION",
     "images/failed.png",
     "images/pending.png",
     "images/success.png",
     "integrity-gnome-notify.gemspec",
     "lib/integrity/notifier/integrity-gnome-notify.rb",
     "test/integrity-gnome-notify_test.rb",
     "test/test_helper.rb"
  ]
  s.homepage = %q{http://integrityapp.com}
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{integrity}
  s.rubygems_version = %q{1.3.3}
  s.summary = %q{Gnome-notify notifier for the Integrity continuous integration server}
  s.test_files = [
    "test/test_helper.rb",
     "test/integrity-gnome-notify_test.rb"
  ]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<integrity>, [">= 0"])
    else
      s.add_dependency(%q<integrity>, [">= 0"])
    end
  else
    s.add_dependency(%q<integrity>, [">= 0"])
  end
end
