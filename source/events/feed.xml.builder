xml.instruct!
xml.feed "xmlns" => "http://www.w3.org/2005/Atom" do
  site_url = "http://www.ated4kids.com/events"
  xml.title "Eventi ated4kids"
  xml.subtitle "Date e luoghi"
  xml.id URI.join(site_url, blog("events").options.prefix.to_s)
  xml.link "href" => URI.join(site_url, blog("events").options.prefix.to_s)
  xml.link "href" => URI.join(site_url, current_page.path), "rel" => "self"
  xml.updated(blog("events").articles.first.date.to_time.iso8601) unless blog("events").articles.empty?
  xml.author { xml.name "Comitato ated4kids" }

  blog("events").articles[0..5].each do |article|
    xml.entry do
      xml.title article.title
      xml.link "rel" => "alternate", "href" => URI.join(site_url, article.url)
      xml.id URI.join(site_url, article.url)
      xml.published article.date.to_time.iso8601
      xml.updated File.mtime(article.source_file).iso8601
      xml.author { xml.name "Article Author" }
      # xml.summary article.summary, "type" => "html"
      xml.content article.body, "type" => "html"
    end
  end
end
