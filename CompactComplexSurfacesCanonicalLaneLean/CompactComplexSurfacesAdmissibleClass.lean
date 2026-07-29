import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CompactComplexSurfacesCanonicalLaneLean

structure CompactComplexSurfaceObject where
  carrier : Type
  topology : TopologicalSpace carrier
  complexStructure : ComplexStructure carrier
  compact : Prop
  complexDimensionTwo : Prop

structure AdmittedObject where
  surface : CompactComplexSurfaceObject
  kahlerClass : Prop
  canonicalBundle : InvertibleSheaf surface.carrier
  kodairaDimension : ℤ
  hodgeNumbers : ℕ × ℕ × ℕ × ℕ
  bogomolovMiyaokaYauSatisfied : Prop
  classificationClass : String

def AdmissibleClass (A : AdmittedObject) : Prop :=
  A.bogomolovMiyaokaYauSatisfied ∧ A.classificationClass ≠ ""

end CompactComplexSurfacesCanonicalLaneLean
end HautevilleHouse