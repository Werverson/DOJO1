#language: pt
#utf-8

Dado("Após login no ORANGEHRM") do
  visit("http://opensource.demo.orangehrmlive.com/")
  fill_in('txtUsername', :with => 'Admin')
  fill_in('txtPassword', :with => 'admin')
  click_button('btnLogin')
end

Quando("Verifico a lista de usuarios") do
 click_link('menu_pim_viewPimModule')
  click_link('menu_pim_viewEmployeeList')
end

Quando("Seleciono um cadastrado da lista") do
  fill_in('empsearch_id', :with => '0018')
  click_button('searchBtn')
  find(:xpath, '//*[@id="resultTable"]/tbody/tr/td[2]/a').click
end

Então("Edito normalmente e salvo o usuário") do
  click_button('btnSave')
  fill_in('personal_txtOtherID', :with => '185679')
  click_button('btnSave')
  assert_text('Successfully Saved')
end