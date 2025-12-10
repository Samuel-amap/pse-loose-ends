module generated_test_1234_8
using PlantSimEngine

PlantSimEngine.@process "p1" verbose = false

struct Model1_E1 <: AbstractP1Model
 end


function PlantSimEngine.inputs_(::Model1_E1)
	NamedTuple()
end

function PlantSimEngine.outputs_(::Model1_E1)
	(out1 = -Inf, )
end

function PlantSimEngine.run!(::Model1_E1, models, status, meteo, constants=nothing, sim_object=nothing)
status.out1 = 1.0
end

mapping = Dict( "E1" => (
Model1_E1(),
Status(),
),
)

outs = Dict("E1" => (:out1,),
)

meteo = Weather([
Atmosphere(T=25.0, Wind=1.0, Rh=0.6, Ri_PAR_f=200.0),
Atmosphere(T=10.0, Wind=0.5, Rh=0.6, Ri_PAR_f=200.0)
])

using MultiScaleTreeGraph

mtg = MultiScaleTreeGraph.Node(MultiScaleTreeGraph.NodeMTG("/", "E1", 0, 0),)

sim = run!(mtg, mapping, meteo, outputs = outs)

end
generated_test_1234_8_sim = generated_test_1234_8.run!(generated_test_1234_8.mtg, generated_test_1234_8.mapping, generated_test_1234_8.meteo, outputs = generated_test_1234_8.outs)