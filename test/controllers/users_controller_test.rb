require 'test_helper'

class UsersControllerTest < ActionController::TestCase
    test 'can view all users' do
        get show_all_users_path
        assert_response :success
    end
    
    test 'can view a single user' do
        get show_user_path(1)
        assert_response :success
    end
    
    test 'can edit a single user' do
        get edit_user_path(1)
        assert_response :success
    end
    
    test 'can delete an user' do
        delete delete_user_path(1)
        assert_response :success
    end
end