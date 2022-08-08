require 'application_system_test_case'

class ConversionsTest < ApplicationSystemTestCase
  setup do
    @conversion = conversions(:one)
  end

  test 'visiting the index' do
    visit conversions_url
    assert_selector 'h1', text: 'Conversions'
  end

  test 'should create conversion' do
    visit conversions_url
    click_on 'New conversion'

    fill_in 'User', with: @conversion.User_id
    fill_in 'Amount', with: @conversion.amount
    fill_in 'Authorid', with: @conversion.authorId
    fill_in 'Name', with: @conversion.name
    click_on 'Create Conversion'

    assert_text 'Conversion was successfully created'
    click_on 'Back'
  end

  test 'should update Conversion' do
    visit conversion_url(@conversion)
    click_on 'Edit this conversion', match: :first

    fill_in 'User', with: @conversion.User_id
    fill_in 'Amount', with: @conversion.amount
    fill_in 'Authorid', with: @conversion.authorId
    fill_in 'Name', with: @conversion.name
    click_on 'Update Conversion'

    assert_text 'Conversion was successfully updated'
    click_on 'Back'
  end

  test 'should destroy Conversion' do
    visit conversion_url(@conversion)
    click_on 'Destroy this conversion', match: :first

    assert_text 'Conversion was successfully destroyed'
  end
end
