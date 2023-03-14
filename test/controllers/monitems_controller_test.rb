require "test_helper"

class MonitemsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @monitem = monitems(:one)
  end

  test "should get index" do
    get monitems_url
    assert_response :success
  end

  test "should get new" do
    get new_monitem_url
    assert_response :success
  end

  test "should create monitem" do
    assert_difference("Monitem.count") do
      post monitems_url, params: { monitem: { alias_name: @monitem.alias_name, biographical_text: @monitem.biographical_text, birthplace: @monitem.birthplace, item_id: @monitem.item_id, name: @monitem.name, nation: @monitem.nation, occupation: @monitem.occupation } }
    end

    assert_redirected_to monitem_url(Monitem.last)
  end

  test "should show monitem" do
    get monitem_url(@monitem)
    assert_response :success
  end

  test "should get edit" do
    get edit_monitem_url(@monitem)
    assert_response :success
  end

  test "should update monitem" do
    patch monitem_url(@monitem), params: { monitem: { alias_name: @monitem.alias_name, biographical_text: @monitem.biographical_text, birthplace: @monitem.birthplace, item_id: @monitem.item_id, name: @monitem.name, nation: @monitem.nation, occupation: @monitem.occupation } }
    assert_redirected_to monitem_url(@monitem)
  end

  test "should destroy monitem" do
    assert_difference("Monitem.count", -1) do
      delete monitem_url(@monitem)
    end

    assert_redirected_to monitems_url
  end
end
