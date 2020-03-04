//___FILEHEADER___

/* System */
import UIKit

/* ViewController */

/* View */

/* Model */

/* Util */

/* NetWork InterFace */

/* Vender */

class ___FILEBASENAMEASIDENTIFIER___: ___VARIABLE_cocoaTouchSubclass___ {

    //MARK: - public property
    
    //MARK: - readonly property
    
    //MARK: - getters and setters
    
    
    //MARK: - life cycle
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)

        self.commonInit()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        self.commonInit()
    }
    
    //MARK: - layout
    override func updateConstraints() {
        
        /*更新约束，自定义view应该重写此方法在其中建立constraints.*/
        
        super.updateConstraints() //this line must be the last line of this method.^_^
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        /*如果你需要更精确控制子view，而不是使用限制或autoresizing行为，就需要实现该方法。*/
    }

    #if DEBUG
    deinit {
        print("[\(type(of: self)) deinit]")
    }
    #endif
}


//MARK: - initial Methods
fileprivate extension ___FILEBASENAMEASIDENTIFIER___ {
    func commonInit() {
        self.contentView.backgroundColor = UIColor.white;
    }
}

//MARK: - private method
fileprivate extension ___FILEBASENAMEASIDENTIFIER___ {
    
}

//MARK: - public method
extension ___FILEBASENAMEASIDENTIFIER___ {
    
}
