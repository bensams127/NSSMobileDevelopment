//
//  Fetcher.swift
//  Lecture13a-Datapull
//
//  Created by Sams on 10/24/16.
//  Copyright © 2016 Sams. All rights reserved.
//

import Foundation

class Fetcher: NSObject, URLSessionDelegate, URLSessionTaskDelegate {
    
    func session() -> URLSession {
        let configuration = URLSessionConfiguration.default
        configuration.timeoutIntervalForRequest = 30.0
        return URLSession(configuration: configuration, delegate: self, delegateQueue: nil)
        
    }
    
    //MARK: URL Session Delegate
    
    func urlSession(_ session: URLSession, didBecomeInvalidWithError error: Error?) {
        NSLog("\(#function): Session became invalid: \(error?.localizedDescription)")
    }
    
    func urlSession(_ session: URLSession, didReceive challenge: URLAuthenticationChallenge, completionHandler: @escaping (URLSession.AuthChallengeDisposition, URLCredential?) -> Void) {
        
            NSLog("\(#function): Session received authentication challenge")
    }
    
    func urlSession(_ session: URLSession, task: URLSessionTask, didSendBodyData bytesSent: Int64, totalBytesSent: Int64, totalBytesExpectedToSend: Int64) {
        NSLog("\(#function): Session sent data: \(bytesSent)" +
                "total: \(totalBytesSent)" +
                "planned: \(totalBytesExpectedToSend)")
    }
    //MARK:  Fetcher Methods
    typealias JSONCompletionHandler = (_ json: NSObject?, _ message: String?) ->Void
    
    func fetchJSON(url: URL, completion: JSONCompletionHandler) {
    
    }
    
    typealias FetchCompletionHandler = (_ data: Data?, _ message: String?) -> Void
    
    func fetch(url: URL, completion: @escaping FetchCompletionHandler) {
        let task = session().dataTask(with: url) {
            (data: Data?, response: URLResponse?, netError: Error?) in
            guard let response = response as? HTTPURLResponse,
                netError == nil
                else {
                    completion(nil, netError? .localizedDescription)
                    return
            }
            
               guard response.statusCode == 200
                else {
                    return completion(nil, "\(response.description)")
            }
            guard let data = data
                else {
                    return completion(nil, "Valid response but no data")
            }
            completion(data,nil)
        }
        task.resume()
    }
}
