require 'test_helper'

class ChildrenControllerTest < ActionController::TestCase
  setup do
    @child = children(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:children)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create child" do
    assert_difference('Child.count') do
      post :create, child: { address: @child.address, birth_date: @child.birth_date, disability_status: @child.disability_status, dist_character: @child.dist_character, father_name: @child.father_name, father_phone: @child.father_phone, finger_print: @child.finger_print, gender: @child.gender, issue_date: @child.issue_date, issuer: @child.issuer, language: @child.language, mother_name: @child.mother_name, mother_phone: @child.mother_phone, name: @child.name, photo: @child.photo, voter_id: @child.voter_id }
    end

    assert_redirected_to child_path(assigns(:child))
  end

  test "should show child" do
    get :show, id: @child
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @child
    assert_response :success
  end

  test "should update child" do
    patch :update, id: @child, child: { address: @child.address, birth_date: @child.birth_date, disability_status: @child.disability_status, dist_character: @child.dist_character, father_name: @child.father_name, father_phone: @child.father_phone, finger_print: @child.finger_print, gender: @child.gender, issue_date: @child.issue_date, issuer: @child.issuer, language: @child.language, mother_name: @child.mother_name, mother_phone: @child.mother_phone, name: @child.name, photo: @child.photo, voter_id: @child.voter_id }
    assert_redirected_to child_path(assigns(:child))
  end

  test "should destroy child" do
    assert_difference('Child.count', -1) do
      delete :destroy, id: @child
    end

    assert_redirected_to children_path
  end
end
