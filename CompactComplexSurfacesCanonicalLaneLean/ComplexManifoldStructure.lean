import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CompactComplexSurfacesCanonicalLaneLean

structure ComplexManifoldPackage where
  carrier : Type u
  topology : TopologicalSpace carrier
  complexStructure : Prop
  dimensionTwo : Prop
  hausdorffSecondCountable : Prop
  compact : Prop
  orientable : Prop

structure ComplexManifoldEvidence (M : ComplexManifoldPackage) where
  complexStructureClosed : M.complexStructure
  dimensionTwoClosed : M.dimensionTwo
  hausdorffSecondCountableClosed : M.hausdorffSecondCountable
  compactClosed : M.compact
  orientableClosed : M.orientable

def ComplexManifoldClosed (M : ComplexManifoldPackage) : Prop :=
  M.complexStructure ∧ M.dimensionTwo ∧ M.hausdorffSecondCountable ∧ M.compact ∧ M.orientable

theorem complex_manifold_closed_from_evidence (M : ComplexManifoldPackage)
    (E : ComplexManifoldEvidence M) : ComplexManifoldClosed M := by
  exact And.intro E.complexStructureClosed
    (And.intro E.dimensionTwoClosed
      (And.intro E.hausdorffSecondCountableClosed
        (And.intro E.compactClosed E.orientableClosed)))

end CompactComplexSurfacesCanonicalLaneLean
end HautevilleHouse
