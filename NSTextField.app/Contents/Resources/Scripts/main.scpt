JsOsaDAS1.001.00bplist00�Vscript_�// NOTE: This builds on the NSWindow example
// NSTextField: https://developer.apple.com/library/mac/documentation/cocoa/reference/applicationkit/classes/NSTextField_Class/Reference/Reference.html

ObjC.import("Cocoa");

// See https://developer.apple.com/library/mac/documentation/Cocoa/Reference/ApplicationKit/Classes/nswindow_Class/Reference/Reference.html#//apple_ref/doc/constant_group/Window_Style_Masks
// For info about window masks
var styleMask = $.NSTitledWindowMask | $.NSClosableWindowMask | $.NSMiniaturizableWindowMask;

var window = $.NSWindow.alloc.initWithContentRectStyleMaskBackingDefer(
	$.NSMakeRect(0, 0, 400, 200),
	styleMask,
	$.NSBackingStoreBuffered,
	false
);

var textField = $.NSTextField.alloc.initWithFrame($.NSMakeRect(25, 80, 350, 24));

var textFieldLabel = $.NSTextField.alloc.initWithFrame($.NSMakeRect(25, 104, 350, 24));
textFieldLabel.stringValue = "Your Text Here:";
textFieldLabel.drawsBackground = false;
textFieldLabel.editable = false;
textFieldLabel.bezeled = false;
textFieldLabel.selectable = true;

window.contentView.addSubview(textField);
window.contentView.addSubview(textFieldLabel);

window.center;
window.title = "NSTextField Example";
window.makeKeyAndOrderFront(window);
                              � jscr  ��ޭ