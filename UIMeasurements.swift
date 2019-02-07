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
        return UniversalConstants.height + safeAreaInsets.bottom
    }()
    
    static public let isBezeled = { () -> Bool in
        if #available(iOS 11, *) {
            return safeAreaInsets.top == 0.0
        }
        
        return true
    }()
}

private struct UniversalConstants {
    static let height: CGFloat = 44.0
}
