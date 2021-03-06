//
// Introductory information can be found in the `README.md` file located in the root directory of this repository.
// Licensing information can be found in the `LICENSE` file located in the root directory of this repository.
//

import class Foundation.NSNumber

// Type: Swift.Bool

// Protocol: _PersistentPrimitiveObjectRepresentable

extension Swift.Bool: _PersistentPrimitiveObjectRepresentable {

    // Exposed

    static var _primitiveObjectVariant: _PersistentPrimitiveObjectVariant {
        ._bool
    }

    init?(_primitiveObject: _PersistentPrimitiveObject) {
        guard let realmRawPrimitive = _primitiveObject as? Foundation.NSNumber else {
            return nil
        }
        self.init(exactly: realmRawPrimitive)
    }

    var _primitiveObject: _PersistentPrimitiveObject {
        self as Foundation.NSNumber
    }
}
