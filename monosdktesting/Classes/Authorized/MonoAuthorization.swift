import Foundation


class MonoAuthorization : NSObject {
    
    public static let shared = MonoAuthorization()
    public var loginDelegate : MonoSDKLoginDelegate?
    internal func checkLogin(usr:String, pwd:String) {
        if usr == "1234" {
            if pwd == "4321" {
                loginDelegate?.onSuccess?()
            } else {
                loginDelegate?.onFailure?()
            }
        } else {
            loginDelegate?.onFailure?()
        }
    }
    
}
