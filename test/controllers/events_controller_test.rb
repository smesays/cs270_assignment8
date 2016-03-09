require 'test_helper'

class EventsControllerTest < ActionController::TestCase
    test 'can view all events' do
        get show_all_events_path
        assert_response :success
    end
    
    test 'can view a single event' do
        event = events(:event1)
        get show_event_path(event)
        assert_response :success
    end
    
    test 'can edit a single event' do
        get edit_event_path('1')
        assert_response :success
    end
    
    test 'can delete an event' do
        delete delete_event_path
        assert_response :success
    end
end