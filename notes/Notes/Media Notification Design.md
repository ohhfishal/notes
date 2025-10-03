---
title: Media Notification Design
summary: Design Doc for a Project
tags:
  - programming
  - idea
---
## Pitch
Unified and configurable media aggregation platform. Get notified when new media comes out. (For coding people think [FluentD](https://www.fluentd.org/) for media.)
## User Story
I want to receive a Discord Message once a day that gives me some YouTube videos I might want to watch. In addition, I want some specific channels to have priority and directly trigger a Discord message being sent.
## Design
Inspiration from FluentD have sources and outputs. Sources can be RSS feeds (general) or YouTube Channel (specific, but internally uses their RSS feed). For each source we can add filters such as `Daily Aggregation` to control when an `output event` is trigger. Then we have a `Discord Webhook` output that sends the message.
### Potential Inputs
- General RSS
	- Custom (Supply url)
	- Bluesky (I assume it exposes an RSS feed)
	- YouTube Channel (Allow filtering vs videos and shorts which RSS does not do now)
	- Website specific (Prebuilt for a specific RSS feed such as the one on [xkcd](https://xkcd.com))
- Email
- Discord channel
- Custom server endpoint (ex: `this-media-app.com/webhook/user/uuid`)
- Recommendation service? (IE sample inputs similar users have)
### Potential Outputs
- Discord/Slack/etc
- Email
- Custom webhook
- Custom API RSS feed (ex: `this-media-app.com/api/uuid/index.rss`)
## Potential Filters
- Aggregate (Show all new ones every X timeframe)
- New (Passthrough those that are not cached immediately)
- Sample (Every X new)
## Initial Proof of Concept
CLI tool that takes a YAML file to grab all the inputs and pass the records to all of the outputs. For now just make RSS feed (and derivatives) for inputs and Discord webhook for output. Use on my own as a cronjob and see how it works. Once that is done, transition to configuring using a web-based service.
