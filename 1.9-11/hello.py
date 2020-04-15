#!/usr/bin/python3
# -*- coding: utf-8 -*-
import pprint
def app(environ, start_response):
    # data = b'Hello, World!\n'
    # data = pprint.pformat(environ, indent=4)
    status = '200 OK'
    response_headers = [
        ('Content-type', 'text/plain'),
        # ('Content-Length', str(len(data)))
    ]
    start_response(status, response_headers)
    # return iter([data] + ['\n', '\n'] + environ['QUERY_STRING'].split(&))
    return [ '\n'.join(environ['QUERY_STRING']) ]
