# Podcast Agent Parser

The Podcast Agent Parser is a user agent parser written in Ruby, using [regex patterns](https://github.com/opawg/user-agents "regex patterns from the Open Podcast Analytics Working Group") from the Open Podcast Analytics Working Group.

Installation:

```
gem 'podcast_agent_parser', '~> 0.1.9'
```

Then, look up your user agents like so:

```
agent_text = "iTunes/12.9.5 (Macintosh; OS X 10.14.5) AppleWebKit/607.2.6.1.1"

agent_parser = PodcastAgentParser::Parser.new()

parsed = agent_parser.parse(agent_text)

parsed.app # iTunes
parsed.os # macOS
parsed.device # PC
parsed.bot # false
```
