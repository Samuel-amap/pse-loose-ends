module generated_test_1234_19
using PlantSimEngine

PlantSimEngine.@process "p1" verbose = false
PlantSimEngine.@process "p2" verbose = false
PlantSimEngine.@process "p3" verbose = false

struct Model1_E1 <: AbstractP1Model
 end

struct Model2_E1 <: AbstractP2Model
 end

struct Model3_E1 <: AbstractP3Model
 end


function PlantSimEngine.inputs_(::Model1_E1)
	NamedTuple()
end
function PlantSimEngine.inputs_(::Model2_E1)
	NamedTuple()
end
function PlantSimEngine.inputs_(::Model3_E1)
	(a1_3 = -Inf, )
end

function PlantSimEngine.outputs_(::Model1_E1)
	(a1_3 = -Inf, out1 = -Inf, )
end
function PlantSimEngine.outputs_(::Model2_E1)
	(out2 = -Inf, )
end
function PlantSimEngine.outputs_(::Model3_E1)
	(out3 = -Inf, )
end

function PlantSimEngine.run!(::Model1_E1, models, status, meteo, constants=nothing, sim_object=nothing)
	status.a1_3 = 1.0
status.out1 = 1.0
end
function PlantSimEngine.run!(::Model2_E1, models, status, meteo, constants=nothing, sim_object=nothing)
status.out2 = 1.0
end
function PlantSimEngine.run!(::Model3_E1, models, status, meteo, constants=nothing, sim_object=nothing)
status.out3 = 1.0
end

mapping = Dict( "E1" => (
Model1_E1(),
Model2_E1(),
Model3_E1(),
Status(a1_3 = 1.0, ),
),
)

outs = Dict("E1" => (:out1,:out2,:out3,),
)

meteo = Weather([
Atmosphere(T=25.0, Wind=1.0, Rh=0.6, Ri_PAR_f=200.0),
Atmosphere(T=10.0, Wind=0.5, Rh=0.6, Ri_PAR_f=200.0)
])

using MultiScaleTreeGraph

mtg = MultiScaleTreeGraph.Node(MultiScaleTreeGraph.NodeMTG("/", "E1", 0, 0),)

sim = run!(mtg, mapping, meteo, outputs = outs)

end
generated_test_1234_19_sim = generated_test_1234_19.run!(generated_test_1234_19.mtg, generated_test_1234_19.mapping, generated_test_1234_19.meteo, outputs = generated_test_1234_19.outs)