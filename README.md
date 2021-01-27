# iOS_Back_6
Async Downloader in Background

1. setup in Info Property List, however this setup value will effects the apps approval before the release phase.

   ![](https://raw.githubusercontent.com/QueenieCplusplus/iOS_Back_6/main/info%20property%20list.png)

 
2. code

        let url = URL(string: "https://www.windy.com/25.038/121.564?24.467,121.564,8,m:emSajxL")
        
        let config = URLSessionConfiguration.default
        let session = URLSession(configuration: config)
        
        //let downloader = session.downloadTask(with: <#T##URLRequest#>, completionHandler: <#T##(URL?, URLResponse?, Error?) -> Void#>)
        
        let dl = session.downloadTask(with: url!

3. output

