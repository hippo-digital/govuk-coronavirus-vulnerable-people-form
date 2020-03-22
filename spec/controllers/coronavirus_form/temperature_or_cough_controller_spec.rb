# frozen_string_literal: true

require "spec_helper"

RSpec.describe CoronavirusForm::TemperatureOrCoughController, type: :controller do
  let(:current_template) { "coronavirus_form/temperature_or_cough" }
  let(:session_key) { :temperature_or_cough }

  describe "GET show" do
    it "renders the form" do
      get :show
      expect(response).to render_template(current_template)
    end
  end

  describe "POST submit" do
    let(:selected) { permitted_values.sample }
    let(:permitted_values) do
      I18n.t("coronavirus_form.temperature_or_cough.options").map { |_, item| item[:label] }
    end

    it "sets session variables" do
      post :submit, params: { temperature_or_cough: selected }
      expect(session[session_key]).to eq selected
    end

    it "validates any option is chosen" do
      post :submit, params: { temperature_or_cough: "" }
      expect(response).to have_http_status(:unprocessable_entity)
      expect(response).to render_template(current_template)
    end

    it "validates a valid option is chosen" do
      post :submit, params: { temperature_or_cough: "<script></script>" }
      expect(response).to have_http_status(:unprocessable_entity)
      expect(response).to render_template(current_template)
    end

    it "redirects to next step for a permitted response" do
      post :submit, params: { temperature_or_cough: selected }
      expect(response).to redirect_to(coronavirus_form_check_your_answers_path)
    end

    it "redirects to check your answers if check your answers previously seen" do
      session[:check_answers_seen] = true
      post :submit, params: { temperature_or_cough: "Yes" }

      expect(response).to redirect_to(coronavirus_form_check_your_answers_path)
    end
  end
end
