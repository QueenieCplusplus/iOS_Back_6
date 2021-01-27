//
//  ViewController.swift
//  KatesAsyncDownloaderApp
//
//  Created by KatesAndroid on 2021/1/27 PM 8:10
//

import UIKit

class ViewController: UIViewController {
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let url = URL(string: "https://www.windy.com/25.038/121.564?24.467,121.564,8,m:emSajxL")
        
        let config = URLSessionConfiguration.default
        let session = URLSession(configuration: config)
        
        //let downloader = session.downloadTask(with: <#T##URLRequest#>, completionHandler: <#T##(URL?, URLResponse?, Error?) -> Void#>)
        
        let dl = session.downloadTask(with: url!){
            
            (location, response, error) in
        
            if error == nil {
                
                if let location = location {
                    
                    do {
                        
                        let string = try String(contentsOf: location)
                        print(string)
                        
                    }catch{
                        print(error)
                    }
                    
                } else {
                    
                    print("not work")
                }
                
            }
        
        }
        
        dl.resume()
        
    }
    
    func urlSessionDidFinishEvents(forBackgroundURLSession session: URLSession) {
     print("下載程式完成")
    }
    
    func urlSession(_ session: URLSession, downloadTask: URLSessionDownloadTask, didWriteData byteWritten: Int64, totalBytesWritten: Int64, totalBytesExpectedToWrite: Int64) {
     //計算下載進度
     let progress = Float(totalBytesWritten) / Float(totalBytesExpectedToWrite)
     print("下載進度 \(progress)")
    }


}

