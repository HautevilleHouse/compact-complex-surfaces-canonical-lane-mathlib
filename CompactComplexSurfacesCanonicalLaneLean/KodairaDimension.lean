import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CompactComplexSurfacesCanonicalLaneLean

structure KodairaDimensionPackage where
  dimension : ℤ
  pluricanonicalSystem : Type u
  birationalInvariant : Prop
  dimensionComputed : Prop

structure KodairaDimensionEvidence (K : KodairaDimensionPackage) where
  birationalInvariantClosed : K.birationalInvariant
  dimensionComputedClosed : K.dimensionComputed

def KodairaDimensionClosed (K : KodairaDimensionPackage) : Prop :=
  K.birationalInvariant ∧ K.dimensionComputed

theorem kodaira_dimension_closed_from_evidence
    (K : KodairaDimensionPackage) (E : KodairaDimensionEvidence K) :
    KodairaDimensionClosed K := by
  exact And.intro E.birationalInvariantClosed E.dimensionComputedClosed

end CompactComplexSurfacesCanonicalLaneLean
end HautevilleHouse
