require "application_system_test_case"

class StudentEntitiesTest < ApplicationSystemTestCase
  setup do
    @student_entity = student_entities(:one)
  end

  test "visiting the index" do
    visit student_entities_url
    assert_selector "h1", text: "Student Entities"
  end

  test "creating a Student entity" do
    visit student_entities_url
    click_on "New Student Entity"

    fill_in "Address", with: @student_entity.address
    fill_in "Course", with: @student_entity.course
    fill_in "Email", with: @student_entity.email
    fill_in "Enroll no", with: @student_entity.enroll_no
    fill_in "Name", with: @student_entity.name
    click_on "Create Student entity"

    assert_text "Student entity was successfully created"
    click_on "Back"
  end

  test "updating a Student entity" do
    visit student_entities_url
    click_on "Edit", match: :first

    fill_in "Address", with: @student_entity.address
    fill_in "Course", with: @student_entity.course
    fill_in "Email", with: @student_entity.email
    fill_in "Enroll no", with: @student_entity.enroll_no
    fill_in "Name", with: @student_entity.name
    click_on "Update Student entity"

    assert_text "Student entity was successfully updated"
    click_on "Back"
  end

  test "destroying a Student entity" do
    visit student_entities_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Student entity was successfully destroyed"
  end
end
