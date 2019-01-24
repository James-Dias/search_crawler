Dado("que eu entrei no torne-se um programador") do
  visit("http://www.torneseumprogramador.com.br/aulas/sql-server")
end

Então("devo cadastrar os dados no banco de dados") do
  page.all(".ultimas li div").each do |copy_content|
    begin
      title = copy_content.all("div")[0].text
      content = copy_content.all("div")[1].text
      link = copy_content.all("a")[0]["href"]
      img = copy_content.find("img")["src"]

      p title

      # Search.create(
      #   title: title,
      #   content: content,
      #   link: link,
      #   image: img
      # )
      search = Search.new
      search.title = title
      search.content = content
      search.link = link
      search.image = img
      search.save!

    rescue;end
  end
end
