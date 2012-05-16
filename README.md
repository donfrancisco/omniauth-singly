# OmniAuth Singly

This is the official OmniAuth strategy for authenticating to Singly. To
use it, you'll need to sign up for an OAuth2 Application ID and Secret
on the [Singly Applications Page](https://dev.singly.com/apps).

## Basic Usage

### Rails

    Rails.application.config.middleware.use OmniAuth::Builder do
      provider :singly, ENV['SINGLY_ID'], ENV['SINGLY_SECRET']
    end

### Sinatra

    use OmniAuth::Builder do
      provider :singly, ENV['SINGLY_ID'], ENV['SINGLY_SECRET']
    end

## Services

You can authorize many services through Singly. Link to

    /auth/singly?service=<service>

where `service` is anything from the list at http://dev.singly.com/authorization

## License

Copyright (c) 2011 Singly, Inc.

Permission is hereby granted, free of charge, to any person obtaining a copy of
this software and associated documentation files (the "Software"), to deal in
the Software without restriction, including without limitation the rights to
use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of
the Software, and to permit persons to whom the Software is furnished to do so,
subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS
FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR
COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER
IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN
CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
