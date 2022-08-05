
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
	
// MARK: - Complex anchors

public extension Anchors {
	@discardableResult
	func fitToView(_ toView: UIView, _ offset: CGFloat = 0) -> Anchors {
		view.addAnchors
			.left(toView.leftAnchor, offset)
			.top(toView.topAnchor, offset)
			.right(toView.rightAnchor, -offset)
			.bottom(toView.bottomAnchor, -offset)
	}

	@discardableResult
	func fitToViewInsetted(_ toView: UIView, _ insets: UIEdgeInsets = .zero) -> Anchors {
		view.addAnchors
			.left(toView.leftAnchor, insets.left)
			.top(toView.topAnchor, insets.top)
			.right(toView.rightAnchor, -insets.right)
			.bottom(toView.bottomAnchor, -insets.bottom)
	}

	@discardableResult
	func fitToTop(_ toView: UIView, constHeight: CGFloat = 0,
	              offset: CGFloat = 0, sideOffset: CGFloat = 0) -> Anchors
	{
		var anchors = view.addAnchors
			.top(toView.topAnchor, offset)
			.left(toView.leftAnchor, sideOffset)
			.right(toView.rightAnchor, -sideOffset)
		if constHeight != 0 {
			anchors = view.addAnchors.constHeight(constHeight)
		}
		return anchors
	}

	@discardableResult
	func fitToBottom(_ toView: UIView, constHeight: CGFloat = 0,
	                 offset: CGFloat = 0, sideOffset: CGFloat = 0) -> Anchors
	{
		var anchors = view.addAnchors
			.bottom(toView.bottomAnchor, -offset)
			.left(toView.leftAnchor, sideOffset)
			.right(toView.rightAnchor, -sideOffset)
		if constHeight != 0 {
			anchors = view.addAnchors.constHeight(constHeight)
		}
		return anchors
	}

	@discardableResult
	func fitToLeft(_ toView: UIView, constWidth: CGFloat = 0,
	               offset: CGFloat = 0, sideOffset: CGFloat = 0) -> Anchors
	{
		var anchors = view.addAnchors
			.top(toView.topAnchor, sideOffset)
			.left(toView.leftAnchor, offset)
			.bottom(toView.bottomAnchor, -sideOffset)
		if constWidth != 0 {
			anchors = view.addAnchors.constWidth(constWidth)
		}
		return anchors
	}

	@discardableResult
	func fitToRight(_ toView: UIView, constWidth: CGFloat = 0,
	                offset: CGFloat = 0, sideOffset: CGFloat = 0) -> Anchors
	{
		var anchors = view.addAnchors
			.top(toView.topAnchor, sideOffset)
			.right(toView.rightAnchor, -offset)
			.bottom(toView.bottomAnchor, -sideOffset)
		if constWidth != 0 {
			anchors = view.addAnchors.constWidth(constWidth)
		}
		return anchors
	}

	@discardableResult
	func snapToBottom(_ ofView: UIView, constHeight: CGFloat = 0,
	                  offset: CGFloat = 0, sideOffset: CGFloat = 0) -> Anchors
	{
		var anchors = view.addAnchors
			.top(ofView.bottomAnchor, offset)
			.left(ofView.leftAnchor, sideOffset)
			.right(ofView.rightAnchor, -sideOffset)
		if constHeight != 0 {
			anchors = view.addAnchors.constHeight(constHeight)
		}
		return anchors
	}

	@discardableResult
	func snapToTop(_ ofView: UIView, constHeight: CGFloat = 0,
	               offset: CGFloat = 0, sideOffset: CGFloat = 0) -> Anchors
	{
		var anchors = view.addAnchors
			.bottom(ofView.topAnchor, -offset)
			.left(ofView.leftAnchor, sideOffset)
			.right(ofView.rightAnchor, -sideOffset)
		if constHeight != 0 {
			anchors = view.addAnchors.constHeight(constHeight)
		}
		return anchors
	}

	@discardableResult
	func snapToRight(_ ofView: UIView, constWidth: CGFloat = 0,
	                 offset: CGFloat = 0, sideOffset: CGFloat = 0) -> Anchors
	{
		var anchors = view.addAnchors
			.top(ofView.topAnchor, sideOffset)
			.left(ofView.rightAnchor, offset)
			.bottom(ofView.bottomAnchor, -sideOffset)
		if constWidth != 0 {
			anchors = view.addAnchors
				.constWidth(constWidth)
		}
		return anchors
	}

	@discardableResult
	func snapToLeft(_ ofView: UIView, constWidth: CGFloat = 0,
	                offset: CGFloat = 0, sideOffset: CGFloat = 0) -> Anchors
	{
		var anchors = view.addAnchors
			.top(ofView.topAnchor, sideOffset)
			.right(ofView.leftAnchor, -offset)
			.bottom(ofView.bottomAnchor, -sideOffset)
		if constWidth != 0 {
			anchors = view.addAnchors
				.constWidth(constWidth)
		}
		return anchors
	}
}
