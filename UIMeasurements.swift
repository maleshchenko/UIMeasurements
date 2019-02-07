@objcMembers
public class UIMeasurements: NSObject {

    static private let safeAreaInsets: UIEdgeInsets = {
        if #available(iOS 11, *) {
            if let safeAreaInsets = UIApplication.shared.keyWindow?.safeAreaInsets {
                return safeAreaInsets
            }
        }
        
        return UIEdgeInsets.zero
    }()
    
    static public let toolBarHeight: CGFloat = {
        return FallbackConstants.universalHeight + safeAreaInsets.bottom
    }()
    
    static public let isBezeled = { () -> Bool in
        if #available(iOS 11, *) {
            return safeAreaInsets.top == 0.0
        }
        
        return true
    }()
}

private struct FallbackConstants {
    static let universalHeight: CGFloat = 44.0
}
