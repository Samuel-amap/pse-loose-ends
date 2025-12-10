module generated_test_1234_2
using PlantSimEngine

PlantSimEngine.@process "p1" verbose = false
PlantSimEngine.@process "p2" verbose = false
PlantSimEngine.@process "p3" verbose = false
PlantSimEngine.@process "p4" verbose = false
PlantSimEngine.@process "p5" verbose = false

struct Model1_E1 <: AbstractP1Model
 end

struct Model2_E1 <: AbstractP2Model
 end

struct Model3_E2 <: AbstractP3Model
 end

struct Model4_E1 <: AbstractP4Model
 end

struct Model5_E2 <: AbstractP5Model
 end


function PlantSimEngine.inputs_(::Model1_E1)
	NamedTuple()
end
function PlantSimEngine.inputs_(::Model2_E1)
	NamedTuple()
end
function PlantSimEngine.inputs_(::Model3_E2)
	NamedTuple()
end
function PlantSimEngine.inputs_(::Model4_E1)
	NamedTuple()
end
function PlantSimEngine.inputs_(::Model5_E2)
	NamedTuple()
end

function PlantSimEngine.outputs_(::Model1_E1)
	(out1 = -Inf, )
end
function PlantSimEngine.outputs_(::Model2_E1)
	(out2 = -Inf, )
end
function PlantSimEngine.outputs_(::Model3_E2)
	(out3 = -Inf, )
end
function PlantSimEngine.outputs_(::Model4_E1)
	(out4 = -Inf, )
end
function PlantSimEngine.outputs_(::Model5_E2)
	(out5 = -Inf, )
end

PlantSimEngine.dep(::Model1_E1) = (p2=AbstractP2Model,)
function PlantSimEngine.run!(::Model1_E1, models, status, meteo, constants=nothing, sim_object=nothing)
	run!(models.p2, models, status, meteo, constants, sim_object)
status.out1 = 1.0
end
PlantSimEngine.dep(::Model2_E1) = (p3=AbstractP3Model => ("E2",),)
function PlantSimEngine.run!(::Model2_E1, models, status, meteo, constants=nothing, sim_object=nothing)
	status_E2 = sim_object.statuses["E2"][1]
	run!(sim_object.models["E2"].p3, models, status_E2, meteo, constants, sim_object)
status.out2 = 1.0
end
PlantSimEngine.dep(::Model3_E2) = (p5=AbstractP5Model,)
function PlantSimEngine.run!(::Model3_E2, models, status, meteo, constants=nothing, sim_object=nothing)
	run!(models.p5, models, status, meteo, constants, sim_object)
status.out3 = 1.0
end
function PlantSimEngine.run!(::Model4_E1, models, status, meteo, constants=nothing, sim_object=nothing)
status.out4 = 1.0
end
function PlantSimEngine.run!(::Model5_E2, models, status, meteo, constants=nothing, sim_object=nothing)
status.out5 = 1.0
end

mapping = Dict( "E1" => (
Model1_E1(),
Model2_E1(),
Model4_E1(),
Status(),
),
"E2" => (
Model3_E2(),
Model5_E2(),
Status(),
),
)

outs = Dict("E1" => (:out1,:out2,:out4,),
"E2" => (:out3,:out5,),
)

meteo = Weather([
Atmosphere(T=25.0, Wind=1.0, Rh=0.6, Ri_PAR_f=200.0),
Atmosphere(T=10.0, Wind=0.5, Rh=0.6, Ri_PAR_f=200.0)
])

using MultiScaleTreeGraph

mtg = MultiScaleTreeGraph.Node(MultiScaleTreeGraph.NodeMTG("/", "E1", 0, 0),)

sim = run!(mtg, mapping, meteo, outputs = outs)

end
@enter generated_test_1234_2_sim = generated_test_1234_2.run!(generated_test_1234_2.mtg, generated_test_1234_2.mapping, generated_test_1234_2.meteo, outputs = generated_test_1234_2.outs)