# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'MerchantService' do
    it 'returns five merchants' do
      parsed_json = MerchantService.five_merchants

      expect(parsed_json).to be_a Array

      merchant = parsed_json.first

      expect(merchant).to include :attributes
      expect(merchant[:attributes][:name]).to be_a(String)
    end

  end
