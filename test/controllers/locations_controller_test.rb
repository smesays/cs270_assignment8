require 'test_helper'

class LocationsControllerTest < ActionController::TestCase
    test 'can view all locations' do
        get show_all_locations_path
        assert_response :success
    end
    
    test 'can view a single location' do
        get show_location_path(1)
        assert_response :success
    end
    
    test 'can edit a single location' do
        get edit_location_path(1)
        assert_response :success
    end
    
    test 'can delete an location' do
        delete delete_location_path(1)
        assert_response :success
    end
end