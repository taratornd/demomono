
import Foundation

public enum Environment {
    case production
    case staging
}

@objc public protocol MonoSDKLoginDelegate {
    @objc optional func onSuccess()
    @objc optional func onFailure()
    
}

@objc public protocol MonoSDKForgotPassword {
    @objc optional func onForgotSuccess()
    @objc optional func onForgotFailure()
}
