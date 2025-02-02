import Foundation

public enum SimbadError:Error {
    case NoSuchObject
    case noConnection
    case RequestError
    case OK
}

public struct SimbadSyslog:CustomStringConvertible {
    let log:SimbadError
    let message:String
    let timecode:String
    
    init( log: SimbadError, message: String) {
        let date = Date()
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy--MM-dd hh:mm:ss"
        self.timecode = dateFormatter.string(from: date)

        self.log = log
                  self.message = message
    }
    
    public var description:String {
        return "\(log): \(message)"
    }
}

public final class SwiftSimbad:NSObject, @unchecked Sendable {
    
    internal var buffer:Int = 0
    public var progress:Float?
    internal var expectedContentLength:Int?
    
    public var sysLog:[SimbadSyslog]!
    
    public override init() {
        self.sysLog = [SimbadSyslog]()
    }

    
    public func printLogs() {
        for log in sysLog {
            print(log.description)
        }
    }

}

extension SwiftSimbad: URLSessionDelegate {
 
    func urlSession(_ session: URLSession, dataTask: URLSessionDataTask, didReceive response: URLResponse, completionHandler: @escaping (URLSession.ResponseDisposition) -> Void) {
        expectedContentLength = Int(response.expectedContentLength)
    }
    
    func urlSession(_ session: URLSession, dataTask: URLSessionDataTask, didReceive data: Data) {
        buffer += data.count
        let percentageDownloaded = Float(buffer) / Float(expectedContentLength!)
           progress =  percentageDownloaded
    }

    
}
