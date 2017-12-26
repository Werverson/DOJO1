Dado("que dentro do site do site ORANGEHRM") do                              
  visit("http://opensource.demo.orangehrmlive.com/")
end                                                                          
                                                                             
Quando("Efetuo o login de administrador corretamente") do                    
  fill_in('txtUsername', :with => 'Admin')
  fill_in('txtPassword', :with => 'admin')
  click_button('btnLogin')
end                                                                          
                                                                             
Quando("Logado no site, efetuar o cadastro de um empregado") do              
  click_link('menu_pim_viewPimModule')
  click_link('menu_pim_addEmployee')
  fill_in('firstName', :with => 'Werverson')
  fill_in('middleName', :with => 'Pereira')
  fill_in('lastName', :with => 'das Virgens')
  click_button('btnSave')

end                                                                          
                                                                             
Então("Cadastro efetuado com sucesso.") do                                   
  assert_text('Personal Details')
end                                                                          