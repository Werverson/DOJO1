Dado("que dentro do site do site DEMOQA") do                                  
 visit "http://www.demoqa.com" 
end                                                                           
                                                                              
Quando("Preencho os dados de cadastro") do                                    
  click_link("Registration")
  fill_in('first_name', :with => 'Yuri')
  fill_in('last_name', :with => 'Martins')
  check('checkbox_5[]', match: :first)
  fill_in('phone_9', :with => '551111111111')
  fill_in('username', :with => 'He-Man')
  fill_in('e_mail', :with => 'YuriMartins@uol.com.br')
  fill_in('password', :with => 'DR*23556G')
  fill_in('confirm_password_password_2', :with => 'DR*23556G')
  click_button('Submit')


end                                                                           
                                                                              
Entao("Cadastro é efetuado normalmente") do                                   
  assert_text('Thank you for your registration')
end                                                                           