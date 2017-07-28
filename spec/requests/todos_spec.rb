require 'rails_helper'

Rspec.describe 'Todos API', type: :request do
  #initialize test data
  let!(:todos) { create_list(:todo, 10) }
  let(:todo_id) { todos.first.id }

  describe 'GET /todos' do
    before { get '/todos' }

    it 'return todos' do
      expect(json).not_to be_empty
      
    end