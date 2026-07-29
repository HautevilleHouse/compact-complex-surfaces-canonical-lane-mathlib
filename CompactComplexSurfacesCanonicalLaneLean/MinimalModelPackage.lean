import CompactComplexSurfacesCanonicalLaneLean.CompactComplexSurfacesAdmissibleClass

/-!
# Minimal Model Package
-/

namespace HautevilleHouse
namespace CompactComplexSurfacesCanonicalLaneLean

structure MinimalModelPackage (A : AdmissibleClass) where
  minimalSurfaceExists : Prop
  exceptionalCurvesContracted : Prop
  uniquenessUpToIsomorphism : Prop
  castelnuovoContractibilityCriterion : Prop

structure MinimalModelEvidence {A : AdmissibleClass} (M : MinimalModelPackage A) where
  minimalSurfaceExistsClosed : M.minimalSurfaceExists
  exceptionalCurvesContractedClosed : M.exceptionalCurvesContracted
  uniquenessUpToIsomorphismClosed : M.uniquenessUpToIsomorphism
  castelnuovoContractibilityCriterionClosed : M.castelnuovoContractibilityCriterion

def MinimalModelClosed {A : AdmissibleClass} (M : MinimalModelPackage A) : Prop :=
  M.minimalSurfaceExists ∧ M.exceptionalCurvesContracted ∧
  M.uniquenessUpToIsomorphism ∧ M.castelnuovoContractibilityCriterion

theorem minimal_model_closed_from_evidence
    {A : AdmissibleClass} (M : MinimalModelPackage A)
    (E : MinimalModelEvidence M) : MinimalModelClosed M := by
  exact And.intro E.minimalSurfaceExistsClosed
    (And.intro E.exceptionalCurvesContractedClosed
      (And.intro E.uniquenessUpToIsomorphismClosed
        E.castelnuovoContractibilityCriterionClosed))

end CompactComplexSurfacesCanonicalLaneLean
end HautevilleHouse