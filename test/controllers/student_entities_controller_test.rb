require 'test_helper'

class StudentEntitiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @student_entity = student_entities(:one)
  end

  test "should get index" do
    get student_entities_url
    assert_response :success
  end

  test "should get new" do
    get new_student_entity_url
    assert_response :success
  end

  test "should create student_entity" do
    assert_difference('StudentEntity.count') do
      post student_entities_url, params: { student_entity: { address: @student_entity.address, course: @student_entity.course, email: @student_entity.email, enroll_no: @student_entity.enroll_no, name: @student_entity.name } }
    end

    assert_redirected_to student_entity_url(StudentEntity.last)
  end

  test "should show student_entity" do
    get student_entity_url(@student_entity)
    assert_response :success
  end

  test "should get edit" do
    get edit_student_entity_url(@student_entity)
    assert_response :success
  end

  test "should update student_entity" do
    patch student_entity_url(@student_entity), params: { student_entity: { address: @student_entity.address, course: @student_entity.course, email: @student_entity.email, enroll_no: @student_entity.enroll_no, name: @student_entity.name } }
    assert_redirected_to student_entity_url(@student_entity)
  end

  test "should destroy student_entity" do
    assert_difference('StudentEntity.count', -1) do
      delete student_entity_url(@student_entity)
    end

    assert_redirected_to student_entities_url
  end
end
