//
//  ReusableView.swift
//  UtilityConverter
//
//  Created by Dinuka Piyadigama on 2022-03-02.
//

import UIKit

class ReusableView: UIView {

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }
    
    required init?(coder: NSCoder) {
//        fatalError("init(coder:) has not been implemented")
        super.init(coder: coder)
        commonInit()
    }
    
    private func commonInit(){
//        if loadFromNib() == nil{ return }
        guard let view = loadFromNib() else {
            return
        }
        
//        set width & height of the view
        view.frame = self.bounds
        
//        embedding a generated view in this reusable view
        self.addSubview(view)
    }
    
    private func loadFromNib() -> UIView? {
        let bundle = Bundle(for: type(of: self))
//         self is similar to this in Java
        
        let nib = UINib(nibName: "ReusableView", bundle: bundle)
        return nib.instantiate(withOwner: self, options: nil).first as? UIView
//        if this can't return a UIView, it'll return a nil - optional UIView is the return type
    }
}
