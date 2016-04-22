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
    expect(page).to have_content 'João da Silva'
  end
end
