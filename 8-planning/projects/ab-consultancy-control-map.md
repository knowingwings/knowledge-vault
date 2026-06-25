---
type: reference
date: 2026-06-24
tags: [consultancy, control-systems, system-id, ab-dynamics, study]
---
# Control deep-dive map: AB consultancy

Study scaffold for the control-systems deep-dive. Weighted heavily to **system characterisation** (my section), with classical auto-tuning and ML kept to "enough to converse."

**How the three workstreams fit:** system characterisation produces a *model of the plant*; classical auto-tuning turns that model into PID gains via rules; ML tunes via optimisation/learning. **Characterisation is the foundation both tuners consume** - get it right and they have something real to work against; get it wrong and they are both tuning against a bad model. That is why my section is load-bearing.

## System characterisation (my section, the deep bit)

**1. What I am trying to find.** A usable plant model from input/output data: structure (order, dead time), parameters (static gain K, time constant(s) tau, delay theta), and frequency behaviour (bandwidth, resonances, gain/phase margins). Plus the meta-questions: linear or nonlinear? Time-invariant or drifting?

**2. Two method families.**

*Non-parametric (quick, model-light):*
- **Step response** -> read off a FOPDT model (first-order-plus-dead-time: K, tau, theta) or second-order params. Fast, intuitive, basis for open-loop Ziegler-Nichols.
- **Frequency response** (swept sine / chirp / multisine) -> Bode magnitude + phase, bandwidth, resonances, gain & phase margins. Best for dynamics *and* robustness.
- **Relay feedback test (Astrom-Hagglund)** -> controlled limit cycle, returns ultimate gain Ku and period Tu directly. The classic bridge from characterisation into auto-tuning.

*Parametric (model fitting / system ID):*
- **Model structure:** ARX (simplest), ARMAX, OE / Box-Jenkins (separate process vs noise dynamics better), or state-space via subspace methods (N4SID).
- **Estimation:** least-squares for ARX, prediction-error method (PEM) for the rest.
- **Tools (MATLAB System ID Toolbox):** `tfest` (transfer function), `ssest` / `n4sid` (state-space), `arx` / `armax` / `oe` / `bj`, then `compare()` and `resid()` to check.

**3. Excitation design (the step people skip and regret).** The model is only as good as the input that excited it. A single step gives FOPDT but will not reveal higher-order or frequency behaviour; for that use PRBS (pseudo-random binary), chirp, or multisine. Concept to name: *persistent excitation*. Amplitude is a trade-off: big enough for signal-to-noise, small enough to stay linear and not stress the rig.

**4. Validation (proving the model is any good).**
- Fit metrics: % fit / NRMSE (`compare()`).
- Residual analysis: residuals should be white and uncorrelated with the input (`resid()`); correlation = unmodelled dynamics.
- Cross-validate: fit on one dataset, test prediction on a *different* one. Never judge on training data alone.

**5. Practical gotchas (AB rig context).** Sampling rate vs Nyquist + anti-aliasing; nonlinearities in electromechanical/hydraulic rigs (friction, backlash, saturation) -> linearise around an operating point or flag where the linear model breaks; drift over temperature/wear -> may need re-characterisation; preprocessing (detrend, de-offset, filter).

**6. My deliverable to the tuners.** A clean model (FOPDT params, or a transfer function / state-space) *plus* its validity range and confidence. That is the handoff the classical and ML pairs build on.

## Classical auto-tuning (broad only)
Rules mapping a characterised model -> PID gains. **Ziegler-Nichols** (from step or relay Ku/Tu, classic but aggressive); **IMC / lambda tuning** (model-based, one robustness knob lambda, smoother, industry favourite); **Cohen-Coon** (dead-time-heavy systems); **AMIGO** (Astrom-Hagglund's modern Z-N replacement). Eternal tension: performance vs robustness (margins).

## ML methods (broad only)
Tune from data/optimisation instead of fixed rules. **Bayesian optimisation** (tuning as sample-efficient black-box cost minimisation over gains, the popular one); **reinforcement learning** (learn a tuning policy; powerful, data-hungry, harder to guarantee); **surrogate / neural plant models**. Pitch vs classical: handles nonlinearity and coupling the rules miss, and consumes *my* characterisation data.

## One read per area
- System ID: Ljung basics + the MATLAB System ID Toolbox getting-started.
- Classical: Astrom & Hagglund, *Advanced PID Control*.
- ML: any Bayesian-optimisation-for-controller-tuning survey.

---
*Related: [[ab-dynamics-consultancy]]*
