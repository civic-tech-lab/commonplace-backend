require "rails_helper"

describe "/health_check" do
  it "returns an HTTP 200" do
    get "/v1/health_check.json"
    expect(JSON.parse(response.body)).to eq({
      "status" => "ok",
    })
  end
end
