
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

// MARK: - Simple anchors

public extension Anchors {

	@discardableResult
	func left(_ anchor: NSLayoutXAxisAnchor, _ offset: CGFloat = 0) -> Anchors {
		let anchor = view.leftAnchor.constraint(equalTo: anchor, constant: offset)
		anchors.append(anchor)
		return self
	}

	@discardableResult
	func right(_ anchor: NSLayoutXAxisAnchor, _ offset: CGFloat = 0) -> Anchors {
		let anchor = view.rightAnchor.constraint(equalTo: anchor, constant: offset)
		anchors.append(anchor)
		return self
	}

	@discardableResult
	func leading(_ anchor: NSLayoutXAxisAnchor, _ offset: CGFloat = 0) -> Anchors {
		let anchor = view.leadingAnchor.constraint(equalTo: anchor, constant: offset)
		anchors.append(anchor)
		return self
	}

	@discardableResult
	func trailing(_ anchor: NSLayoutXAxisAnchor, _ offset: CGFloat = 0) -> Anchors {
		let anchor = view.trailingAnchor.constraint(equalTo: anchor, constant: offset)
		anchors.append(anchor)
		return self
	}

	@discardableResult
	func top(_ anchor: NSLayoutYAxisAnchor, _ offset: CGFloat = 0) -> Anchors {
		let anchor = view.topAnchor.constraint(equalTo: anchor, constant: offset)
		anchors.append(anchor)
		return self
	}

	@discardableResult
	func bottom(_ anchor: NSLayoutYAxisAnchor, _ offset: CGFloat = 0) -> Anchors {
		let anchor = view.bottomAnchor.constraint(equalTo: anchor, constant: offset)
		anchors.append(anchor)
		return self
	}

	@discardableResult
	func width(_ anchor: NSLayoutDimension, _ offset: CGFloat = 0) -> Anchors {
		let anchor = view.widthAnchor.constraint(equalTo: anchor, constant: offset)
		anchors.append(anchor)
		return self
	}

	@discardableResult
	func height(_ anchor: NSLayoutDimension, _ offset: CGFloat = 0) -> Anchors {
		let anchor = view.heightAnchor.constraint(equalTo: anchor, constant: offset)
		anchors.append(anchor)
		return self
	}

	@discardableResult
	func centerX(_ anchor: NSLayoutXAxisAnchor, _ offset: CGFloat = 0) -> Anchors {
		let anchor = view.centerXAnchor.constraint(equalTo: anchor, constant: offset)
		anchors.append(anchor)
		return self
	}

	@discardableResult
	func centerY(_ anchor: NSLayoutYAxisAnchor, _ offset: CGFloat = 0) -> Anchors {
		let anchor = view.centerYAnchor.constraint(equalTo: anchor, constant: offset)
		anchors.append(anchor)
		return self
	}

	@discardableResult
	func constWidth(_ width: CGFloat) -> Anchors {
		let anchor = view.widthAnchor.constraint(equalToConstant: width)
		anchors.append(anchor)
		return self
	}

	@discardableResult
	func constHeight(_ height: CGFloat) -> Anchors {
		let anchor = view.heightAnchor.constraint(equalToConstant: height)
		anchors.append(anchor)
		return self
	}

	@discardableResult
	func constSquare(size: CGFloat) -> Anchors {
		let widthAnchor = view.widthAnchor.constraint(equalToConstant: size)
		let heightAnchor = view.heightAnchor.constraint(equalToConstant: size)
		anchors.append(widthAnchor)
		anchors.append(heightAnchor)
		return self
	}
}

// MARK: - Special

public extension Anchors {
	@discardableResult
	func priority(_ priority: Float) -> Anchors {
		let lastAnchor = anchors.last
		lastAnchor??.priority = UILayoutPriority(priority)
		return self
	}
}
