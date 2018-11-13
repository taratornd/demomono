import Foundation

@objc open class MonoAuthPlatform : NSObject {
    fileprivate var monoAuth  = MonoAuthorization.shared
    
    fileprivate var environment : Environment = .production
    private override init() { }
    @objc public class var shareInstance : MonoAuthPlatform{
        struct Singleton {
            static let instance = MonoAuthPlatform()
        }
        return Singleton.instance
    }
    
    public var delegate : MonoSDKLoginDelegate? {
        didSet {
            monoAuth.loginDelegate = delegate
        }
    }
    
    
    @objc public func loginIn(username : String ,
                              password : String) {
        monoAuth.checkLogin(usr: username, pwd: password)
    }
    
    public func setEnvironment(env:Environment) {
        environment = env
    }
    
    
}
