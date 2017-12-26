Dado("que dentro do site da inmetrics") do
  visit "http://inmetrics.com.br"
end

Quando("verifico a seção Quem Somos") do
	click_link('Quem Somos', match: :first)
end

Entao("Valido o texto Mais de {int} anos de experiencia") do |int|
	assert_text('Adquirimos sólida experiência')
end