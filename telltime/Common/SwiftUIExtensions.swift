import SwiftUI

extension GeometryProxy {
  var localFrame: CGRect { self.frame(in: .local) }
  var localWidth: CGFloat { self.localFrame.width }
  var localHeight: CGFloat { self.localFrame.height }
  var localCenter: CGPoint { .init(x: self.localWidth/2, y: self.localHeight/2) }
  var localTop: CGFloat { self.localFrame.origin.y }
  var localBottom: CGFloat { self.localFrame.height }
  var localLeft: CGFloat { self.localFrame.origin.x }
  var localDiameter: CGFloat { return min(self.localWidth, self.localHeight) }
}

extension Double {
  var positiveDegrees: Double {
    guard self < 0 else { return self }
    return self + 360
  }

  var positiveRadians: Double {
    guard self < 0 else { return self }
    return self + Double.pi * 2
  }
}

extension Path {
  mutating func addTest(point: CGPoint) {
    let origin = point.applying(.init(translationX: -5, y: -5))
    self.addEllipse(in: CGRect(origin: origin, size: CGSize(width: 10, height: 10)))
  }
}
