//  Created by Marcin Krzyzanowski
//  https://github.com/krzyzanowskim/STTextView/blob/main/LICENSE.md

import Cocoa

extension STTextView: NSTextLayoutManagerDelegate {

    public func textLayoutManager(_ textLayoutManager: NSTextLayoutManager, textLayoutFragmentFor location: NSTextLocation, in textElement: NSTextElement) -> NSTextLayoutFragment {
        STTextLayoutFragment(
            textElement: textElement,
            range: textElement.elementRange,
            paragraphStyle: typingAttributes[.paragraphStyle] as? NSParagraphStyle ?? .default
        )
    }
}
