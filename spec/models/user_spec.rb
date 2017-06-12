require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'Validations' do
    before :each do
      @first_name = 'first'
      @last_name = 'last'
      @email = 'example@email'
      @password = 'my_secret'
      @password_diff = 'another_secret'
      @password_short = 'a'
    end

    it 'should have a password fields' do
      user = User.new
      user.first_name = @first_name
      user.last_name = @last_name
      user.email = @email
      user.password_confirmation = @password
      user.save

      expect(user.errors.full_messages[0].downcase).to include('password')
    end

    it 'should have a password_confirmation fields' do
      user = User.new
      user.first_name = @first_name
      user.last_name = @last_name
      user.email = @email
      user.password = @password
      user.save

      expect(user.errors.full_messages[0].downcase).to include('password')
    end

    it 'should have email' do
      user = User.new
      user.first_name = @first_name
      user.last_name = @last_name
      user.email = @email
      user.password = @password
      user.password_confirmation = @password_diff
      user.save

      expect(user.errors.full_messages[0].downcase).to include('password')
    end

    it 'should have email' do
      user = User.new
      user.first_name = @first_name
      user.last_name = @last_name
      user.password = @password
      user.password_confirmation = @password
      user.save

      expect(user.errors.full_messages[0].downcase).to include('email')
    end

    it 'should have first name' do
      user = User.new
      user.last_name = @last_name
      user.email = @email
      user.password = @password
      user.password_confirmation = @password
      user.save

      expect(user.errors.full_messages[0].downcase).to include('first name')
    end

    it 'should have last name' do
      user = User.new
      user.first_name = @first_name
      user.email = @email
      user.password = @password
      user.password_confirmation = @password
      user.save

      expect(user.errors.full_messages[0].downcase).to include('last name')
    end

    it 'should have unique email (case insensitive)' do
      user_a = User.new
      user_a.first_name = @first_name
      user_a.last_name = @last_name
      user_a.email = @email
      user_a.password = @password
      user_a.password_confirmation = @password
      user_a.save

      user_b = User.new
      user_b.first_name = @first_name
      user_b.last_name = @last_name
      user_b.email = @email.upcase
      user_b.password = @password
      user_b.password_confirmation = @password
      user_b.save

      expect(user_b.errors.full_messages[0].downcase).to include('email')
    end

    it 'password should have minimum length' do
      user = User.new
      user.first_name = @first_name
      user.last_name = @last_name
      user.email = @email
      user.password = @password_short
      user.password_confirmation = @password_short
      user.save

      expect(user.errors.full_messages[0].downcase).to include('password')
    end
  end
end

