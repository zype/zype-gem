module StubbedMethods
  def stub_method(method:)
    stub_request(method, /.*/).to_return(
      status: 200,
      body: { 'response': [] }.to_json,
      headers: { "Content-Type" => "application/json" }
    )
  end

  def stub_errors(code:)
    stub_request(:get, /.*/).to_return(status: code)
  end
end
