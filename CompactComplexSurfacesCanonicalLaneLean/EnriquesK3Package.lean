import CompactComplexSurfacesCanonicalLaneLean.CompactComplexSurfacesAdmissibleClass

/-!
# Enriques and K3 Surfaces Package
-/

namespace HautevilleHouse
namespace CompactComplexSurfacesCanonicalLaneLean

structure EnriquesK3Package (A : AdmissibleClass) where
  enriquesSurfaceDefinition : Prop
  k3SurfaceDefinition : Prop
  enriquesDoubleCoverByK3 : Prop
  periodMapDefined : Prop
  torelliTheoremApplied : Prop
  enriquesClassificationSpecialCase : Prop

structure EnriquesK3Evidence {A : AdmissibleClass} (E : EnriquesK3Package A) where
  enriquesSurfaceDefinitionClosed : E.enriquesSurfaceDefinition
  k3SurfaceDefinitionClosed : E.k3SurfaceDefinition
  enriquesDoubleCoverByK3Closed : E.enriquesDoubleCoverByK3
  periodMapDefinedClosed : E.periodMapDefined
  torelliTheoremAppliedClosed : E.torelliTheoremApplied
  enriquesClassificationSpecialCaseClosed : E.enriquesClassificationSpecialCase

def EnriquesK3Closed {A : AdmissibleClass} (E : EnriquesK3Package A) : Prop :=
  E.enriquesSurfaceDefinition ∧ E.k3SurfaceDefinition ∧
  E.enriquesDoubleCoverByK3 ∧ E.periodMapDefined ∧
  E.torelliTheoremApplied ∧ E.enriquesClassificationSpecialCase

theorem enriques_k3_closed_from_evidence
    {A : AdmissibleClass} (E : EnriquesK3Package A)
    (Ev : EnriquesK3Evidence E) : EnriquesK3Closed E := by
  exact And.intro Ev.enriquesSurfaceDefinitionClosed
    (And.intro Ev.k3SurfaceDefinitionClosed
      (And.intro Ev.enriquesDoubleCoverByK3Closed
        (And.intro Ev.periodMapDefinedClosed
          (And.intro Ev.torelliTheoremAppliedClosed
            Ev.enriquesClassificationSpecialCaseClosed))))

end CompactComplexSurfacesCanonicalLaneLean
end HautevilleHouse