import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CompactComplexSurfacesCanonicalLaneLean

structure MinimalModelPackage (A : AdmissibleClass) where
  surface : A.object
  kodairaDimension : ℤ
  minimalModelExists : Prop
  minimalModelUniqueness : Prop
  minimalModelEvidence : minimalModelExists ∧ minimalModelUniqueness

def MinimalModelClosed (A : AdmissibleClass) (M : MinimalModelPackage A) : Prop :=
  M.minimalModelExists ∧ M.minimalModelUniqueness

theorem minimal_model_closed_from_evidence (A : AdmissibleClass) (M : MinimalModelPackage A) :
    MinimalModelClosed A M := by
  exact M.minimalModelEvidence

end CompactComplexSurfacesCanonicalLaneLean
end HautevilleHouse