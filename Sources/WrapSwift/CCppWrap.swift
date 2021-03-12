import WrapObjC

public class SwiftWrap {
    
    public init(){}
    public func call() {
        let cppItem = CppWrapper();
        
        print(cppItem.getText() ?? "fail")
        cppItem.setText("This is test string")
        print(cppItem.getText() ?? "fail")
        

                
        let cppItem2 = CppWrapper(text: "This is init with Param");
        print(cppItem2?.getText() ?? "fail")
        
        cppItem2?.setNumber(33)
        print(cppItem2?.getNumber() ?? "fail")
        
    }
}
