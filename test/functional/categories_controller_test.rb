require 'test_helper'

class Administration::CategoriesControllerTest < ActionController::TestCase
  setup do
    @category = categories(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:categories)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create category" do
    assert_difference('Category.count') do
      post :create, category: { description: @category.description, meta_description: @category.meta_description, meta_keywords: @category.meta_keywords, name: @category.name, parent_category_id: @category.parent_category_id, published_status: @category.published_status, url_segment: @category.url_segment }
    end

    assert_redirected_to administration_category_path(assigns(:category))
  end

  test "should show category" do
    get :show, id: @category
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @category
    assert_response :success
  end

  test "should update category" do
    put :update, id: @category, category: { description: @category.description, meta_description: @category.meta_description, meta_keywords: @category.meta_keywords, name: @category.name, parent_category_id: @category.parent_category_id, published_status: @category.published_status, url_segment: @category.url_segment }
    assert_redirected_to administration_category_path(assigns(:category))
  end

  test "should destroy category" do
    assert_difference('Category.count', -1) do
      delete :destroy, id: @category
    end

    assert_redirected_to administration_categories_path
  end
end
