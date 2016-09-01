//
//  main.swift
//  public-ip
//
//  Created by Brandon on 2016-08-31.
//

import Foundation
var semaphore = dispatch_semaphore_create(0)
let url = NSURL(string: "https://icanhazip.com")
let request = NSURLRequest(URL: url!)
let config = NSURLSessionConfiguration.defaultSessionConfiguration()
let session = NSURLSession(configuration: config)

let task = session.dataTaskWithRequest(request, completionHandler: {(data, response, error) in
    print(NSString(data: data!, encoding: NSUTF8StringEncoding) ?? "Could not determine your public IP.", terminator:"")
    dispatch_semaphore_signal(semaphore)
})

task.resume()
dispatch_semaphore_wait(semaphore, DISPATCH_TIME_FOREVER)
