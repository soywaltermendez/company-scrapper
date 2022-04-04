class CompaniesSpider
  @name = 'companies_spider'

  def self.process(url)
    subject = 'test'
    File.open url do |file|
      file.any? do |line|
        if line.match /a la selección/
          company = line
          company = company.gsub(/Añadir/,'')
          company = company.gsub(/a la selección/,'')
          Company.find_or_create_by(subject: subject, name: company.strip)
          puts subject: subject, name: company.strip
        end
      end
    end
    return true
  end
end