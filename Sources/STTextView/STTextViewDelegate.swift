//  Created by Marcin Krzyzanowski
//  https://github.com/krzyzanowskim/STTextView/blob/main/LICENSE.md

import Foundation
import Cocoa

/// A set of optional methods that text view delegates can use to manage selection,
/// set text attributes and more.
public protocol STTextViewDelegate: AnyObject {
    /// Returns the undo manager for the specified text view.
    ///
    /// This method provides the flexibility to return a custom undo manager for the text view.
    /// Although STTextView implements undo and redo for changes to text,
    /// applications may need a custom undo manager to handle interactions between changes
    /// to text and changes to other items in the application.
    func undoManager(for textView: STTextView) -> UndoManager?
    /// Any keyDown or paste which changes the contents causes this
    func textViewWillChangeText(_ notification: Notification)
    /// Any keyDown or paste which changes the contents causes this
    func textViewDidChangeText(_ notification: Notification)
    /// Sent when the selection changes in the text view.
    func textViewDidChangeSelection(_ notification: Notification)
    /// Sent when a text view needs to determine if text in a specified range should be changed.
    func textView(_ textView: STTextView, shouldChangeTextIn affectedCharRange: NSTextRange, replacementString: String?) -> Bool
    /// Sent when a text view will change text.
    func textView(_ textView: STTextView, willChangeTextIn affectedCharRange: NSTextRange, replacementString: String)
    /// Sent when a text view did change text.
    func textView(_ textView: STTextView, didChangeTextIn affectedCharRange: NSTextRange, replacementString: String)

    /// Allows delegate to control the context menu returned by the text view.
    /// - Parameters:
    ///   - view: The text view sending the message.
    ///   - menu: The proposed contextual menu.
    ///   - event: The mouse-down event that initiated the contextual menu’s display.
    /// - Returns: A menu to use as the contextual menu. You can return `menu` unaltered, or you can return a customized menu.
    func textView(_ view: STTextView, menu: NSMenu, for event: NSEvent, at location: NSTextLocation) -> NSMenu?

    /// Completion items
    func textView(_ textView: STTextView, completionItemsAtLocation location: NSTextLocation) -> [Any]?

    func textView(_ textView: STTextView, insertCompletionItem item: Any)

    // Due to Swift 5.6 generics limitation it can't return STCompletionViewControllerProtocol
    func textViewCompletionViewController(_ textView: STTextView) -> STAnyCompletionViewController?
}

public extension STTextViewDelegate {

    func undoManager(for textView: STTextView) -> UndoManager? {
        nil
    }

    func textViewWillChangeText(_ notification: Notification) {
        //
    }

    func textViewDidChangeText(_ notification: Notification) {
        //
    }

    func textViewDidChangeSelection(_ notification: Notification) {
        //
    }

    func textView(_ textView: STTextView, shouldChangeTextIn affectedCharRange: NSTextRange, replacementString: String?) -> Bool {
        true
    }

    func textView(_ textView: STTextView, willChangeTextIn affectedCharRange: NSTextRange, replacementString: String) {

    }

    func textView(_ textView: STTextView, didChangeTextIn affectedCharRange: NSTextRange, replacementString: String) {

    }

    func textView(_ view: STTextView, menu: NSMenu, for event: NSEvent, at location: NSTextLocation) -> NSMenu? {
        menu
    }

    func textView(_ textView: STTextView, completionItemsAtLocation location: NSTextLocation) -> [Any]? {
        nil
    }

    func textView(_ textView: STTextView, insertCompletionItem item: Any) {
        
    }

    func textViewCompletionViewController(_ textView: STTextView) -> STAnyCompletionViewController? {
        nil
    }
}
