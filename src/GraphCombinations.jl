"""
$(DocStringExtensions.README)
"""
module GraphCombinations

using DocStringExtensions
using DispatchDoctor: @stable

using Graphs, Multigraphs

@stable default_mode = "disable" default_codegen_level = "min" begin
    include(joinpath(@__DIR__, "MultiGraphWrap.jl"))
    include(joinpath(@__DIR__, "utils.jl"))
    include(joinpath(@__DIR__, "partition_canonicalization.jl"))
    include(joinpath(@__DIR__, "matrix_canonicalization.jl"))
    include(joinpath(@__DIR__, "direct_generation.jl"))
    include(joinpath(@__DIR__, "row_state_reduction.jl"))
    include(joinpath(@__DIR__, "colored_port_generation.jl"))
    include(joinpath(@__DIR__, "colored_port_pruning.jl"))
    include(joinpath(@__DIR__, "colored_port_api.jl"))
    include(joinpath(@__DIR__, "generation.jl"))

    export allgraphs, combinatoric_factor, build_graph, total_degree, canonical_form
    export ColoredPortEdge,
        ColoredPortProblem,
        ColoredPortState,
        PortRelabeling,
        WeightedPortCompletion,
        PortGenerationStats,
        AcceptAllPortPolicy,
        MultiplicityPortTransport,
        generate_weighted,
        generate_weighted_with_stats,
        generation_statistics,
        canonical_relabeling,
        relabel_port_state,
        port_edges,
        source_port_counts,
        target_port_counts,
        initial_port_weight,
        transport_port_weight
end

end # module GraphCombinations
