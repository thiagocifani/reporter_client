# Reporter Client

Client to use reporter gem.

## Dependencies

You will need to use reporter server

## Install

```
gem install reporter_client
```

## Configure

Add `reporter_client` to your Gemfile:

```ruby
   client.add(name: "yep", jrxml: s3_url) #returns id of a report to use after on append or generate
   client.append(id: 4, data: content)
   client.generate(id: 4)
```
