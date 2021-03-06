# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{nokogiri}
  s.version = "1.4.4"
  s.platform = %q{x86-mingw32}

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Aaron Patterson", "Mike Dalessio"]
  s.date = %q{2010-11-15}
  s.description = %q{Nokogiri (é¸) is an HTML, XML, SAX, and Reader parser.  Among Nokogiri's
many features is the ability to search documents via XPath or CSS3 selectors.

XML is like violence - if it doesnât solve your problems, you are not using
enough of it.}
  s.email = ["aaronp@rubyforge.org", "mike.dalessio@gmail.com"]
  s.executables = ["nokogiri"]
  s.extra_rdoc_files = ["Manifest.txt", "CHANGELOG.rdoc", "CHANGELOG.ja.rdoc", "README.rdoc", "README.ja.rdoc", "ext/nokogiri/xml_io.c", "ext/nokogiri/xml_sax_parser.c", "ext/nokogiri/xml_xpath_context.c", "ext/nokogiri/html_element_description.c", "ext/nokogiri/xml_libxml2_hacks.c", "ext/nokogiri/xml_sax_parser_context.c", "ext/nokogiri/xml_sax_push_parser.c", "ext/nokogiri/xml_attribute_decl.c", "ext/nokogiri/nokogiri.c", "ext/nokogiri/xml_element_decl.c", "ext/nokogiri/xml_element_content.c", "ext/nokogiri/html_entity_lookup.c", "ext/nokogiri/xml_dtd.c", "ext/nokogiri/xslt_stylesheet.c", "ext/nokogiri/xml_node_set.c", "ext/nokogiri/xml_document_fragment.c", "ext/nokogiri/xml_text.c", "ext/nokogiri/xml_entity_reference.c", "ext/nokogiri/html_sax_parser_context.c", "ext/nokogiri/xml_comment.c", "ext/nokogiri/xml_namespace.c", "ext/nokogiri/xml_entity_decl.c", "ext/nokogiri/xml_node.c", "ext/nokogiri/html_document.c", "ext/nokogiri/xml_syntax_error.c", "ext/nokogiri/xml_document.c", "ext/nokogiri/xml_cdata.c", "ext/nokogiri/xml_reader.c", "ext/nokogiri/xml_attr.c", "ext/nokogiri/xml_processing_instruction.c", "ext/nokogiri/xml_schema.c", "ext/nokogiri/xml_encoding_handler.c", "ext/nokogiri/xml_relax_ng.c"]
  s.files = ["bin/nokogiri", "Manifest.txt", "CHANGELOG.rdoc", "CHANGELOG.ja.rdoc", "README.rdoc", "README.ja.rdoc", "ext/nokogiri/xml_io.c", "ext/nokogiri/xml_sax_parser.c", "ext/nokogiri/xml_xpath_context.c", "ext/nokogiri/html_element_description.c", "ext/nokogiri/xml_libxml2_hacks.c", "ext/nokogiri/xml_sax_parser_context.c", "ext/nokogiri/xml_sax_push_parser.c", "ext/nokogiri/xml_attribute_decl.c", "ext/nokogiri/nokogiri.c", "ext/nokogiri/xml_element_decl.c", "ext/nokogiri/xml_element_content.c", "ext/nokogiri/html_entity_lookup.c", "ext/nokogiri/xml_dtd.c", "ext/nokogiri/xslt_stylesheet.c", "ext/nokogiri/xml_node_set.c", "ext/nokogiri/xml_document_fragment.c", "ext/nokogiri/xml_text.c", "ext/nokogiri/xml_entity_reference.c", "ext/nokogiri/html_sax_parser_context.c", "ext/nokogiri/xml_comment.c", "ext/nokogiri/xml_namespace.c", "ext/nokogiri/xml_entity_decl.c", "ext/nokogiri/xml_node.c", "ext/nokogiri/html_document.c", "ext/nokogiri/xml_syntax_error.c", "ext/nokogiri/xml_document.c", "ext/nokogiri/xml_cdata.c", "ext/nokogiri/xml_reader.c", "ext/nokogiri/xml_attr.c", "ext/nokogiri/xml_processing_instruction.c", "ext/nokogiri/xml_schema.c", "ext/nokogiri/xml_encoding_handler.c", "ext/nokogiri/xml_relax_ng.c"]
  s.homepage = %q{http://nokogiri.org}
  s.rdoc_options = ["--main", "README.rdoc"]
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{nokogiri}
  s.rubygems_version = %q{1.7.2}
  s.summary = %q{Nokogiri (é¸) is an HTML, XML, SAX, and Reader parser}

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<rubyforge>, [">= 2.0.4"])
      s.add_development_dependency(%q<racc>, [">= 0"])
      s.add_development_dependency(%q<rexical>, [">= 0"])
      s.add_development_dependency(%q<rake-compiler>, [">= 0"])
      s.add_development_dependency(%q<minitest>, [">= 1.6.0"])
      s.add_development_dependency(%q<hoe>, [">= 2.6.2"])
    else
      s.add_dependency(%q<rubyforge>, [">= 2.0.4"])
      s.add_dependency(%q<racc>, [">= 0"])
      s.add_dependency(%q<rexical>, [">= 0"])
      s.add_dependency(%q<rake-compiler>, [">= 0"])
      s.add_dependency(%q<minitest>, [">= 1.6.0"])
      s.add_dependency(%q<hoe>, [">= 2.6.2"])
    end
  else
    s.add_dependency(%q<rubyforge>, [">= 2.0.4"])
    s.add_dependency(%q<racc>, [">= 0"])
    s.add_dependency(%q<rexical>, [">= 0"])
    s.add_dependency(%q<rake-compiler>, [">= 0"])
    s.add_dependency(%q<minitest>, [">= 1.6.0"])
    s.add_dependency(%q<hoe>, [">= 2.6.2"])
  end
end
