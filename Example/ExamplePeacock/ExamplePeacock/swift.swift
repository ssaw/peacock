//
//  Created by Raimon Lapuente on 10/05/2015.
//  Copyright (c) 2015 Lyst. All rights reserved.
//

import Foundation
import UIKit

public class swiftView: UIView {
    override init (frame : CGRect) {
        super.init(frame : frame)
    }
    
    public required init (coder: NSCoder) {
        fatalError("This class does not support NSCoding")
    }
}

public class swiftExample: UIViewController {
    override public func viewDidLoad() {
        super.viewDidLoad()
        //view setup
        let exampleView = swiftView(frame:CGRectMake(200,300,100,100))
        self.view.addSubview(exampleView)
    }
}