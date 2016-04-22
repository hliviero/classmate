describe "create courses process", :type => :feature do
  before :each do
    Course.create(:name => 'Inglês', :description => 'Idiomas')
  end

  it "creates a Course" do
    visit '/courses/new'
    within("#new_course") do
      fill_in 'Name', :with => 'Inglês'
      fill_in 'Description', :with => 'Idiomas'
    end
    click_button 'Confirmar'
    expect(page).to have_content 'Idiomas'
  end
end
