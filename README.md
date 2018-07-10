## Using the Gem
Configure the gem to use your API credentials. If you're using Rails, you can create an initializer file with the following:
```ruby
Zype.configure do |config|
  config.api_key = <api_key>
end
```
For testing purposes, you can also configure the host with `config.host`. The default will use `api.zype.com`.

Or, you can configure on the fly like:
```ruby
Zype.configuration.api_key = <api_key>
```

Create a `Zype::Client` object and use it to call the API for whatever object you need, followed by the appropriate method. Common methods are `all, find, update, create, delete`.

```ruby
client = Zype::Client
client.live_events.all
client.live_events.post(params: live_event_params)
client.encoders.find(encoder_name: 'dry-fire-2394')
```

We use YARD as our documentation tool. See examples of how to document from Zype::BaseModel. Each public facing method should include a description, what the parameters are, and what is returned. Once you have documented the code, you can run `yardoc 'lib/**/*.rb'` to generate the docs. Be sure you have the `yard` gem installed with `gem install yard`.

## Contributing
This gem follows very simple conventions to communicate with the Zype Platform API. Each model you want to make able to access the API will needs its own class in `zype/models`. When naming methods in these models, keep the current naming convention that will make it easy for developers to understand. For example, when hitting the `index` action to get all of an object, name the method `all`. `find` can be used for finding a single object (`show` action), etc.

Each method should use `Zype::Client` to make calls to the API. If each model inherits from `Zype::BaseModel`, then each will have access to an instance of `Zype::Client`. Call `execute` on this instance and pass in the method (`get`, `put`, `post`, `delete`) that is going to make the request. You also need to pass in any necessary params.

#### Zype::Client
This is where the requests to the API are made. Each model should use the `execute` method to make the request. `execute` will raise an error if no API key was provided. Otherwise, it will use `HTTParty` to make the appropriate request, passing in any params. This method will then return the response or raise an error if it encountered one.

If you add more models, just create them under `lib/zype/models`, and `Zype::Client` will get them automatically
```ruby
class << self
  Dir["lib/zype/models/*"].each do |file|
    model = file[/.*\/(.*?).rb$/, 1]
    define_method model do
      constant = model.split("_").map { |s| s.capitalize }.join("")
      Module.const_get("Zype::#{constant}").new
    end
  end
end
```

The above defines methods for the classes in `lib/zype/models`, such as `live_events`, all they do is instantiate and instance of the corresponding class. Example:
```ruby
client = Zype::Client
client.live_events
# This instantiates a new class of Zype::LiveEvents. Now you can call all the methods on it
client.live_events.all
```

So if you create a `Zype::Consumers` model, you may need to reload the app and that's it.

You can use it as:
```ruby
client = Zype::Client
client.consumers.all
```

### Tests
The gem uses Rspec for tests. The API requests are mocked so no request is actually made. The current tests are structured to ensure the models and `Zype::Client` are set up correctly to communicate with the API. However, the tests do not mock responses from the API as that is not beneficial to testing the models.

## Push new versions
First, ensure you have an account on rubygems.org. You will also need push access, so ask permission for that as well.

Next, ensure that the version is up to date in `zype.gemspec`. Use the standard version conventions of `major.minor.bug`

```bash
gem build zype.gemspec
# Spits out version built

gem push zype-0.1.0.gem
# Enter email and password in provided prompts
```
