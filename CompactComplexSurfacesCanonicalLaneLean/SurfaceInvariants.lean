import canonicalLaneMathlib.AdmissibleClass

/-!
# Surface Invariants Package
-/

namespace HautevilleHouse
namespace CompactComplexSurfacesCanonicalLaneLean

structure SurfaceInvariantsPackage (S : ComplexStructurePackage) where
  eulerCharacteristic : Prop
  signature : Prop
  chernNumbers : Prop
  holomorphicEulerCharacteristic : Prop
  irregularity : Prop
  geometricGenus : Prop

structure SurfaceInvariantsEvidence {S : ComplexStructurePackage} (I : SurfaceInvariantsPackage S) where
  eulerCharacteristicClosed : I.eulerCharacteristic
  signatureClosed : I.signature
  chernNumbersClosed : I.chernNumbers
  holomorphicEulerCharacteristicClosed : I.holomorphicEulerCharacteristic
  irregularityClosed : I.irregularity
  geometricGenusClosed : I.geometricGenus

def SurfaceInvariantsClosed {S : ComplexStructurePackage} (I : SurfaceInvariantsPackage S) : Prop :=
  I.eulerCharacteristic ∧ I.signature ∧ I.chernNumbers ∧ I.holomorphicEulerCharacteristic ∧ I.irregularity ∧ I.geometricGenus

theorem surface_invariants_closed_from_evidence
    {S : ComplexStructurePackage} (I : SurfaceInvariantsPackage S) (E : SurfaceInvariantsEvidence I) :
    SurfaceInvariantsClosed I := by
  exact And.intro E.eulerCharacteristicClosed
    (And.intro E.signatureClosed
      (And.intro E.chernNumbersClosed
        (And.intro E.holomorphicEulerCharacteristicClosed
          (And.intro E.irregularityClosed E.geometricGenusClosed))))

end CompactComplexSurfacesCanonicalLaneLean
end HautevilleHouse