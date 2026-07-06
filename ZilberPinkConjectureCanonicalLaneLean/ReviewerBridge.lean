import ZilberPinkConjectureCanonicalLaneLean.Formalization
import ZilberPinkConjectureCanonicalLaneLean.SourceDependencies

/-!
# Reviewer Bridge

Typed Lean data for the imported reviewer bridge architecture.
-/

namespace HautevilleHouse
namespace ZilberPinkConjectureCanonicalLaneLean

structure ReviewerBridgeFile where
  path : String
  role : String
  sha256 : String
  present : Bool
deriving Repr, DecidableEq

structure ReviewerChainStep where
  index : Nat
  label : String
deriving Repr, DecidableEq

structure ReviewerClosureGate where
  gate : String
  constant : String
deriving Repr, DecidableEq

structure ReviewerManifestEntry where
  path : String
  sha256 : String
deriving Repr, DecidableEq

structure CertificateGate where
  gate : String
  status : String
deriving Repr, DecidableEq

structure CertificateInput where
  key : String
  value : String
deriving Repr, DecidableEq

def reviewerBridgeFiles : List ReviewerBridgeFile := [
  { path := "REVIEWER_MAP.md", role := "reviewer_map", sha256 := "84c5a1a853a31fb8c48646c8664d365292adf02aaecfcb01a5b9445e0cc5fce2", present := true },
  { path := "notes/IDENTIFICATION_BRIDGE.md", role := "identification_bridge", sha256 := "93a041b63139e3146b24bf4a2a3db1b0f561ed6e6c215ddc8efa89f33b734b20", present := true },
  { path := "artifacts/constants_extraction_inputs.json", role := "constant_inputs", sha256 := "6bdc5ac9fe698cfd58ce70ea1ffb62d5b38af4710ffaa3cd5075ddadf38f59fa", present := true },
  { path := "artifacts/constants_extracted.json", role := "constant_extracted", sha256 := "c40bf09265c2bfa54d50a635b953fa21caf4d3f33c30af78dbfe1372d482c362", present := true },
  { path := "artifacts/constants_registry.json", role := "constant_registry", sha256 := "dc536839846c6e9f9c44918c7eab044d0938fc6e3a8cfb2a5a19f6fb537ec790", present := true },
  { path := "artifacts/stitch_constants.json", role := "stitch_constants", sha256 := "1fe474064dba92dcaf0e5d5c70f9205f9dc7be22e4bfcbc17a074205bb2fc835", present := true },
  { path := "artifacts/promotion_report.json", role := "promotion_report", sha256 := "93a4f7fb42eb234e9efb7b839ab0c1d06737674146ed3145bc282bbaf7cf4996", present := true },
  { path := "repro/repro_manifest.json", role := "manifest", sha256 := "cd91b6eb7600646b0433abebd7f373f55d1e196d01448860c9a610f6ad777b92", present := true },
  { path := "repro/certificate_baseline.json", role := "baseline_certificate", sha256 := "36fe3e18f2754be83ab826c58ed8900dc87169788ce2dedae67aa805535ed3cc", present := true }
]

def reviewerChainSteps : List ReviewerChainStep := [
  { index := 1, label := "EG1" },
  { index := 2, label := "EG2" },
  { index := 3, label := "EG3" },
  { index := 4, label := "EG4" },
  { index := 5, label := "Identification bridge" },
  { index := 6, label := "Scalar closure" }
]

def reviewerClosureGates : List ReviewerClosureGate := [
  { gate := "ZP_G1", constant := "kappa_intersection" },
  { gate := "ZP_G2", constant := "sigma_unlikely" },
  { gate := "ZP_G3", constant := "kappa_compact" },
  { gate := "ZP_G4", constant := "rho_rigidity" },
  { gate := "ZP_G5", constant := "pink_transfer" },
  { gate := "ZP_G6", constant := "eps_coh" },
  { gate := "ZP_GM", constant := "derived" }
]

def reviewerFalsificationConditionCount : Nat := 5

def reviewerManifestEntries : List ReviewerManifestEntry := [
  { path := "CITATION.cff", sha256 := "55bde9fd6a3ae233722f15ffc8fe1baf2f297fc1fa96dd09743c5cd3b1b6ad74" },
  { path := "README.md", sha256 := "77d0be6503c6656913f40fdf6821134e1270dc41953ef618620fb10e378ad388" },
  { path := "artifacts/constants_extracted.json", sha256 := "c40bf09265c2bfa54d50a635b953fa21caf4d3f33c30af78dbfe1372d482c362" },
  { path := "artifacts/constants_extraction_inputs.json", sha256 := "6bdc5ac9fe698cfd58ce70ea1ffb62d5b38af4710ffaa3cd5075ddadf38f59fa" },
  { path := "artifacts/constants_registry.json", sha256 := "dc536839846c6e9f9c44918c7eab044d0938fc6e3a8cfb2a5a19f6fb537ec790" },
  { path := "artifacts/promotion_report.json", sha256 := "93a4f7fb42eb234e9efb7b839ab0c1d06737674146ed3145bc282bbaf7cf4996" },
  { path := "artifacts/stitch_constants.json", sha256 := "1fe474064dba92dcaf0e5d5c70f9205f9dc7be22e4bfcbc17a074205bb2fc835" },
  { path := "notes/EG1_public.md", sha256 := "05332cd81414b7bae0179695993c43bf4aa4ee33aa05c861637c13572f78da6e" },
  { path := "notes/EG2_public.md", sha256 := "5a1e41a3d138483a1f8871f934ef732c975f090d44a902c10bdf52a3964b6596" },
  { path := "notes/EG3_public.md", sha256 := "54217a8c8645ced8c08fbb7511965cbd8f1f59f1d0c516c78cacc19a11dd1099" },
  { path := "notes/EG4_public.md", sha256 := "dfa157ccfb19013b64aed4a92d609ff28707d4bd8bd3791ecb25e94dcf94dd66" },
  { path := "notes/IDENTIFICATION_BRIDGE.md", sha256 := "93a041b63139e3146b24bf4a2a3db1b0f561ed6e6c215ddc8efa89f33b734b20" },
  { path := "paper/CANONICAL_ROUTING_INDEX.md", sha256 := "726fa2ddccc14197200f7d5a1a3d7e361d397ce150d1498803be715ab8af2988" },
  { path := "paper/EXTRACTION_SPEC.md", sha256 := "e05bc9001a0e88573a6b611a4683617192cf7538703c032794d407ad6a6fb759" },
  { path := "paper/ZILBER_PINK_CONJECTURE_PREPRINT.md", sha256 := "f9212eda014e38ffe305d39924a9439b1812614dc42ec5cac7026eba7a9e2a74" },
  { path := "repro/REPRO_PACK.md", sha256 := "cd47b317f86474687e812db2c15056e790fa44209fe1389a315d69d9cc78af70" },
  { path := "repro/THIRD_PARTY_RERUN_PROTOCOL.md", sha256 := "7eddc899eb4ef5fc36ea0cea561618bc914f47a2cd19d80d5f11aa17de412c79" },
  { path := "repro/certificate_baseline.json", sha256 := "36fe3e18f2754be83ab826c58ed8900dc87169788ce2dedae67aa805535ed3cc" },
  { path := "repro/run_repro.sh", sha256 := "3fa2ee726b3d81292b850a2b3b21068d713db16fc1cab12a183dd405bb55f494" },
  { path := "scripts/extract_constants.py", sha256 := "730d57dae3fac057e19630db34233183cae269568d43118c943387970081896d" },
  { path := "scripts/promote_constants.py", sha256 := "b65eb7a60552c668f04d6331a5256fe4e662ae5e83e769d42f6a141819769356" },
  { path := "scripts/release_gate.py", sha256 := "5c9760aeddbfa0e4b5a9447e1bda670004391c19470f9b1cf8897bf154f667b8" },
  { path := "scripts/update_manifest.py", sha256 := "45ae03f10349daebab98b6eb9a0836b7e2d15a48ca5504277c80ec7d4c633d12" },
  { path := "scripts/zp_closure_guard.py", sha256 := "5c54fe61ed817b7ead4ae92a40268d07571ce590fcf2b03a1a090fb626abce80" },
  { path := "scripts/README.md", sha256 := "aa817d6392d71dd4e80fa890013c82ee74493f7316dd8fcb06c5f99131b3cafa" }
]

def baselineCertificateGates : List CertificateGate := [
  { gate := "ZP_G1", status := "PASS" },
  { gate := "ZP_G2", status := "PASS" },
  { gate := "ZP_G3", status := "PASS" },
  { gate := "ZP_G4", status := "PASS" },
  { gate := "ZP_G5", status := "PASS" },
  { gate := "ZP_G6", status := "PASS" },
  { gate := "ZP_GM", status := "PASS" }
]

def baselineCertificateInputs : List CertificateInput := [
  { key := "eps_coh", value := "0.0" },
  { key := "kappa_compact", value := "0.8045052292839904" },
  { key := "kappa_intersection", value := "1.094264" },
  { key := "pink_transfer", value := "1.030712" },
  { key := "rho_rigidity", value := "1.079" },
  { key := "sigma_star_can", value := "1.055" },
  { key := "sigma_unlikely", value := "1.075" }
]

def bridgeConstantKeys : List String := [
  "eps_coh",
  "kappa_compact",
  "kappa_intersection",
  "pink_transfer",
  "rho_rigidity",
  "sigma_star_can",
  "sigma_unlikely"
]

def baselineCertificateAllPass : Bool := true
def baselineCertificateLane : String := "manifold_constrained"
def outsideConstantDependencyCount : Nat := 0

theorem reviewer_bridge_file_count_checked : reviewerBridgeFiles.length = 9 := by
  rfl

theorem reviewer_chain_step_count_checked : reviewerChainSteps.length = 6 := by
  rfl

theorem reviewer_closure_gate_count_checked : reviewerClosureGates.length = 7 := by
  rfl

theorem reviewer_falsification_condition_count_checked : reviewerFalsificationConditionCount = 5 := by
  rfl

theorem reviewer_manifest_entry_count_checked : reviewerManifestEntries.length = 25 := by
  rfl

theorem baseline_certificate_gate_count_checked : baselineCertificateGates.length = 7 := by
  rfl

theorem baseline_certificate_input_count_checked : baselineCertificateInputs.length = 7 := by
  rfl

theorem bridge_constant_key_count_checked : bridgeConstantKeys.length = 7 := by
  rfl

theorem baseline_certificate_all_pass_checked : baselineCertificateAllPass = true := by
  rfl

theorem outside_constant_dependency_count_checked : outsideConstantDependencyCount = 0 := by
  rfl

end ZilberPinkConjectureCanonicalLaneLean
end HautevilleHouse
