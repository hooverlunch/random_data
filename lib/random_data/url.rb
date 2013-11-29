require "#{File.dirname(__FILE__)}/domain"
require "#{File.dirname(__FILE__)}/text"

module RandomData
  
  module Url
    include RandomData::Domain
    include RandomData::Text

    @@protocols = %w(http https) 
    def protocol
      @@protocols.rand
    end

    @@contentExtensions = [%w(.html .htm .php .txt), ""].flatten
    def contentExtension
      @@contentExtensions.rand
    end

    @@imgExtensions = %w(.jpg .gif .png .tiff)
    def imgExtension
      @@imgExtensions.rand
    end


    def url(opts = {})
      opts = {subdirs: rand(1..4), protocol: protocol, fileExtension: contentExtension}.merge(opts)
      subdirs = words(opts[:subdirs]).gsub(' ', '/')
      "#{opts[:protocol]}://#{full_domain}/#{subdirs}#{opts[:fileExtension]}"
    end
    
    
    
    def imgUrl(opts = {})
      url(opts.merge(fileExtension: imgExtension))
    end
  end
  
end