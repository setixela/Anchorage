
import UIKit

// MARK: - Usage

///			imageView.addAnchors
///				.top(topAnchor, 20)
///				.right(rightAnchor, -16)
///				.constHeight(36)
///				.width(imageView.heightAnchor)
///
///			titleLabel.addAnchors
///				.constWidth(210)
///				.constHeight(128)
///
///         subView.addAnchors
///				.snapToTop(view, constHeight: 100, offset: 16, sideOffset: 16)

public final class Anchors {
   unowned var view: UIView

   var anchors: [NSLayoutConstraint?] = []

   init(view: UIView) {
      self.view = view
   }

   public func constraint() -> NSLayoutConstraint? {
      guard let lastAnchor = anchors.last else { return nil }
      return lastAnchor
   }

   deinit {
      apply()
   }

   private func apply() {
      view.translatesAutoresizingMaskIntoConstraints = false
      let constraints = anchors.compactMap { $0 }

      NSLayoutConstraint.activate(constraints)
   }
}

// MARK: - UIView.addAnchors...

public extension UIView {
   var addAnchors: Anchors {
      let anchorType = Anchors(view: self)
      return anchorType
   }

   @discardableResult
   func addToSuperview(_ superView: UIView?) -> Anchors {
      superView?.addSubview(self)
      return addAnchors
   }

   @discardableResult
   func insertToSuperview(_ superView: UIView?, at index: Int = 0) -> Anchors {
      superView?.insertSubview(self, at: index)
      return addAnchors
   }
}

