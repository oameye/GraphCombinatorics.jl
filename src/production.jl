@stable default_mode = "disable" default_codegen_level = "min" begin
    include("MultiGraphWrap.jl")
    include("utils.jl")
    include("partition_canonicalization.jl")
    include("matrix_canonicalization.jl")
    include("direct_generation.jl")
    include("row_state_reduction.jl")
    include("colored_port_generation.jl")
    include("colored_port_pruning.jl")
    include("colored_port_api.jl")
    include("generation.jl")
end
