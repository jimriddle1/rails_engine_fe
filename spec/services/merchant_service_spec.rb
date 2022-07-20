# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'MerchantService' do
    it 'returns five merchants' do
      parsed_json = MerchantService.five_merchants

      expect(parsed_json).to be_a Array

      merchant = parsed_json.first
      #
      binding.pry
      # movie = parsed_json.first
      #
      # expect(movie).to include :title, :vote_average
      # expect(movie[:title]).to be_a(String)
      # expect(movie[:vote_average]).to be_a(Float)
    end

  end
