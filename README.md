# Secret Agent

Secret Agent is a user agent parser written in Ruby, using [regex patterns](https://github.com/opawg/user-agents "regex patterns from the Open Podcast Analytics Working Group") from the Open Podcast Analytics Working Group.

Installation:

```
gem 'secret-agent', '~> 0.1.1'
```

Then, look up your user agents like so:

```
agent_text = "iTunes/12.9.5 (Macintosh; OS X 10.14.5) AppleWebKit/607.2.6.1.1"

sa = SecretAgent::Parser.new()

parsed = sa.parse(agent_text)

parsed.app # iTunes
parsed.os # macOS
parsed.device # PC
parsed.bot # false
```
