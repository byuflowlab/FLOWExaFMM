"""
# DESCRIPTION
    Julia wrapper of ExaFMM with modifications for a vortex solver.

# AUTHORSHIP
  * Original authors            : Rio Yokota and Lorena Barba (ExaFMM)
  * Refactorization author      : Eduardo J. Alvarez
  * Email                       : Edo.AlvarezR@gmail.com
  * Created                     : Aug 2020
  * License                     : Retaining original license (BSD 3-Clause).
"""
module FLOWExaFMM
# ------------ GENERIC MODULES -------------------------------------------------
using CxxWrap

# ------------ FLOW CODES ------------------------------------------------------
# None required

# ------------ GLOBAL VARIABLES ------------------------------------------------
const module_path = splitdir(@__FILE__)[1]      # Path to this module

# ------------ CODE ------------------------------------------------------------
@wrapmodule( () -> joinpath(module_path, "fmm" * (Sys.isapple() ? ".dylib" : ".so")) )

function __init__()
    @initcxx
end

# Type of Body reference
const BodyRef = CxxWrap.CxxWrapCore.CxxPtr{Body}

end # END OF MODULE
