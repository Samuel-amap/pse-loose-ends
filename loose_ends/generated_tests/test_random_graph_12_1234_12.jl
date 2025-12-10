module generated_test_1234_12
using PlantSimEngine

PlantSimEngine.@process "p1" verbose = false
PlantSimEngine.@process "p2" verbose = false
PlantSimEngine.@process "p3" verbose = false
PlantSimEngine.@process "p4" verbose = false
PlantSimEngine.@process "p5" verbose = false

struct Model1_E1 <: AbstractP1Model
 end

struct Model2_E2 <: AbstractP2Model
 end

struct Model3_E1 <: AbstractP3Model
 end

struct Model4_E2 <: AbstractP4Model
 end

struct Model5_E2 <: AbstractP5Model
 end


function PlantSimEngine.inputs_(::Model1_E1)
	NamedTuple()
end
function PlantSimEngine.inputs_(::Model2_E2)
	(a1_2 = -Inf, )
end
function PlantSimEngine.inputs_(::Model3_E1)
	(a2_3 = -Inf, )
end
function PlantSimEngine.inputs_(::Model4_E2)
	(a3_4 = -Inf, )
end
function PlantSimEngine.inputs_(::Model5_E2)
	(a4_5 = -Inf, )
end

function PlantSimEngine.outputs_(::Model1_E1)
	(a1_2 = -Inf, out1 = -Inf, )
end
function PlantSimEngine.outputs_(::Model2_E2)
	(a2_3 = -Inf, out2 = -Inf, )
end
function PlantSimEngine.outputs_(::Model3_E1)
	(a3_4 = -Inf, out3 = -Inf, )
end
function PlantSimEngine.outputs_(::Model4_E2)
	(a4_5 = -Inf, out4 = -Inf, )
end
function PlantSimEngine.outputs_(::Model5_E2)
	(out5 = -Inf, )
end

function PlantSimEngine.run!(::Model1_E1, models, status, meteo, constants=nothing, sim_object=nothing)
	status.a1_2 = 1.0
status.out1 = 1.0
end
function PlantSimEngine.run!(::Model2_E2, models, status, meteo, constants=nothing, sim_object=nothing)
	status.a2_3 = 1.0+ status.a1_2
status.out2 = 1.0
end
function PlantSimEngine.run!(::Model3_E1, models, status, meteo, constants=nothing, sim_object=nothing)
	status.a3_4 = 1.0+ status.a2_3
status.out3 = 1.0
end
function PlantSimEngine.run!(::Model4_E2, models, status, meteo, constants=nothing, sim_object=nothing)
	status.a4_5 = 1.0+ status.a3_4
status.out4 = 1.0
end
function PlantSimEngine.run!(::Model5_E2, models, status, meteo, constants=nothing, sim_object=nothing)
status.out5 = 1.0
end

mapping = Dict( "E1" => (
Model1_E1(),
MultiScaleModel(
model = Model3_E1(),
mapped_variables=[:a2_3 => "E2" => :a2_3,]
),
Status(a1_2 = 1.0, a3_4 = 1.0, ),
),
"E2" => (
MultiScaleModel(
model = Model2_E2(),
mapped_variables=[:a1_2 => "E1" => :a1_2,]
),
MultiScaleModel(
model = Model4_E2(),
mapped_variables=[:a3_4 => "E1" => :a3_4,]
),
Model5_E2(),
Status(a2_3 = 1.0, a4_5 = 1.0, ),
),
)

outs = Dict("E1" => (:out1,:out3,),
"E2" => (:out2,:out4,:out5,),
)

meteo = Weather([
Atmosphere(T=25.0, Wind=1.0, Rh=0.6, Ri_PAR_f=200.0),
Atmosphere(T=10.0, Wind=0.5, Rh=0.6, Ri_PAR_f=200.0)
])

using MultiScaleTreeGraph

mtg = MultiScaleTreeGraph.Node(MultiScaleTreeGraph.NodeMTG("/", "E1", 0, 0),)

sim = run!(mtg, mapping, meteo, outputs = outs)

end
generated_test_1234_12_sim = generated_test_1234_12.run!(generated_test_1234_12.mtg, generated_test_1234_12.mapping, generated_test_1234_12.meteo, outputs = generated_test_1234_12.outs)