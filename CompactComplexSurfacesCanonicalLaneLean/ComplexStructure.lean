import canonicalLaneMathlib.AdmissibleClass

/-!
# Complex Structure Package
-/

namespace HautevilleHouse
namespace CompactComplexSurfacesCanonicalLaneLean

structure ComplexStructurePackage where
  complexManifold : Type u
  complexDimensionTwo : Prop
  integrableAlmostComplex : Prop
  closed : Prop

structure ComplexStructureEvidence (S : ComplexStructurePackage) where
  complexDimensionTwoClosed : S.complexDimensionTwo
  integrableAlmostComplexClosed : S.integrableAlmostComplex
  closedClosed : S.closed

def ComplexStructureClosed (S : ComplexStructurePackage) : Prop :=
  S.complexDimensionTwo ∧ S.integrableAlmostComplex ∧ S.closed

theorem complex_structure_closed_from_evidence
    (S : ComplexStructurePackage) (E : ComplexStructureEvidence S) :
    ComplexStructureClosed S := by
  exact And.intro E.complexDimensionTwoClosed
    (And.intro E.integrableAlmostComplexClosed E.closedClosed)

end CompactComplexSurfacesCanonicalLaneLean
end HautevilleHouse