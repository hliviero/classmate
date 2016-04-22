describe "create students process", :type => :feature do
  before :each do
    Student.create(:name => 'João da Silva', :register_number => '12345')
  end

  it "creates a Student" do
    visit '/students/new'
    within("#new_student") do
      fill_in 'Name', :with => 'João da Silva'
      fill_in 'Register number', :with => '12345678910'
    end
    click_button 'Confirmar'
    expect(page).to visit.to '#students_path'
  end
end

# feature "Signing in" do
#   background do
#     User.make(:email => 'user@example.com', :password => 'caplin')
#   end
#
#   scenario "Signing in with correct credentials" do
#     visit '/sessions/new'
#     within("#session") do
#       fill_in 'Email', :with => 'user@example.com'
#       fill_in 'Password', :with => 'caplin'
#     end
#     click_button 'Sign in'
#     expect(page).to have_content 'Success'
#   end
#
#   given(:other_user) { User.make(:email => 'other@example.com', :password => 'rous') }
#
#   scenario "Signing in as another user" do
#     visit '/sessions/new'
#     within("#session") do
#       fill_in 'Email', :with => other_user.email
#       fill_in 'Password', :with => other_user.password
#     end
#     click_button 'Sign in'
#     expect(page).to have_content 'Invalid email or password'
#   end
# end
