# iOS_Back_6
Async Downloader in Background using URLSessionDownloadTask.

1. setup in Info Property List, however this setup value effects the apps approval before the release phase.

   ![](https://raw.githubusercontent.com/QueenieCplusplus/iOS_Back_6/main/info%20property%20list.png)

 
2. code

        let url = URL(string: "https://www.windy.com/25.038/121.564?24.467,121.564,8,m:emSajxL")
        
        let config = URLSessionConfiguration.default
        let session = URLSession(configuration: config)
        
        //let downloader = session.downloadTask(with: <#T##URLRequest#>, completionHandler: <#T##(URL?, URLResponse?, Error?) -> Void#>)
        
        let dl = session.downloadTask(with: url!

3. output

  ![](https://github.com/QueenieCplusplus/iOS_Back_6/blob/main/output.png)

4. ref

   https://zh-tw.coderbridge.com/series/01d31194cb3c428d9ca2575c91e8b997/posts/c44ba1db0ded4d53aec73a8e589ca1e5

5. allow Download Task running in Background.

   https://github.com/QueenieCplusplus/iOS_Back_16

   ![](https://raw.githubusercontent.com/QueenieCplusplus/iOS_Back_6/main/allow%20background%20run.png)

