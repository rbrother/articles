# This blog application architecture

## Current tech stack

Development started 2025-04-29, working 1-2 hours on few evenings per week for four weeks, public production deployment 2025-05-31, perhaps 20 hours total for the first release.

local routing in ClojureScript

markdown processing pipeline in the ClojureScript app

Style tweaks (img centering)

Some need for html in markdown

## Deployment

Deployment: S3 + CloudFront + Route 53 (Joker.com -> Add AWS NS)

No Infra as code, too simple and not mission-critical (in case crashes and requires some time to restore)

## Future possibilities

Downside of Dynamic client-side markup-conversion: not search-engine friendly or "post summary" friendly when posting to FB / Linkedin. 

Backend generation of articles with Lambda? Would provide better search-engine compatibility.

