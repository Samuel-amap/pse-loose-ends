module generated_test_1234_13
using PlantSimEngine

PlantSimEngine.@process "p1" verbose = false
PlantSimEngine.@process "p2" verbose = false
PlantSimEngine.@process "p3" verbose = false
PlantSimEngine.@process "p4" verbose = false
PlantSimEngine.@process "p5" verbose = false
PlantSimEngine.@process "p6" verbose = false
PlantSimEngine.@process "p7" verbose = false
PlantSimEngine.@process "p8" verbose = false
PlantSimEngine.@process "p9" verbose = false

struct Model1_E1 <: AbstractP1Model
 end

struct Model2_E1 <: AbstractP2Model
 end

struct Model3_E2 <: AbstractP3Model
 end

struct Model4_E1 <: AbstractP4Model
 end

struct Model5_E3 <: AbstractP5Model
 end

struct Model6_E4 <: AbstractP6Model
 end

struct Model7_E5 <: AbstractP7Model
 end

struct Model8_E1 <: AbstractP8Model
 end

struct Model9_E4 <: AbstractP9Model
 end


function PlantSimEngine.inputs_(::Model1_E1)
	NamedTuple()
end
function PlantSimEngine.inputs_(::Model2_E1)
	NamedTuple()
end
function PlantSimEngine.inputs_(::Model3_E2)
	(a1_3 = -Inf, )
end
function PlantSimEngine.inputs_(::Model4_E1)
	(a3_4 = -Inf, )
end
function PlantSimEngine.inputs_(::Model5_E3)
	NamedTuple()
end
function PlantSimEngine.inputs_(::Model6_E4)
	NamedTuple()
end
function PlantSimEngine.inputs_(::Model7_E5)
	(a6_7 = -Inf, )
end
function PlantSimEngine.inputs_(::Model8_E1)
	NamedTuple()
end
function PlantSimEngine.inputs_(::Model9_E4)
	NamedTuple()
end

function PlantSimEngine.outputs_(::Model1_E1)
	(a1_3 = -Inf, out1 = -Inf, )
end
function PlantSimEngine.outputs_(::Model2_E1)
	(out2 = -Inf, )
end
function PlantSimEngine.outputs_(::Model3_E2)
	(a3_4 = -Inf, out3 = -Inf, )
end
function PlantSimEngine.outputs_(::Model4_E1)
	(out4 = -Inf, )
end
function PlantSimEngine.outputs_(::Model5_E3)
	(out5 = -Inf, )
end
function PlantSimEngine.outputs_(::Model6_E4)
	(a6_7 = -Inf, out6 = -Inf, )
end
function PlantSimEngine.outputs_(::Model7_E5)
	(out7 = -Inf, )
end
function PlantSimEngine.outputs_(::Model8_E1)
	(out8 = -Inf, )
end
function PlantSimEngine.outputs_(::Model9_E4)
	(out9 = -Inf, )
end

PlantSimEngine.dep(::Model1_E1) = (p6=AbstractP6Model => ("E4",),)
function PlantSimEngine.run!(::Model1_E1, models, status, meteo, constants=nothing, sim_object=nothing)
	status_E4 = sim_object.statuses["E4"][1]
	run!(sim_object.models["E4"].p6, models, status_E4, meteo, constants, sim_object)
	status.a1_3 = 1.0+ status_E4.out6
status.out1 = 1.0
end
function PlantSimEngine.run!(::Model2_E1, models, status, meteo, constants=nothing, sim_object=nothing)
status.out2 = 1.0
end
PlantSimEngine.dep(::Model3_E2) = (p5=AbstractP5Model => ("E3",),)
function PlantSimEngine.run!(::Model3_E2, models, status, meteo, constants=nothing, sim_object=nothing)
	status_E3 = sim_object.statuses["E3"][1]
	run!(sim_object.models["E3"].p5, models, status_E3, meteo, constants, sim_object)
	status.a3_4 = 1.0+ status_E3.out5+ status.a1_3
status.out3 = 1.0
end
PlantSimEngine.dep(::Model4_E1) = (p9=AbstractP9Model => ("E4",),)
function PlantSimEngine.run!(::Model4_E1, models, status, meteo, constants=nothing, sim_object=nothing)
	status_E4 = sim_object.statuses["E4"][1]
	run!(sim_object.models["E4"].p9, models, status_E4, meteo, constants, sim_object)
status.out4 = 1.0
end
function PlantSimEngine.run!(::Model5_E3, models, status, meteo, constants=nothing, sim_object=nothing)
status.out5 = 1.0
end
function PlantSimEngine.run!(::Model6_E4, models, status, meteo, constants=nothing, sim_object=nothing)
	status.a6_7 = 1.0
status.out6 = 1.0
end
function PlantSimEngine.run!(::Model7_E5, models, status, meteo, constants=nothing, sim_object=nothing)
status.out7 = 1.0
end
function PlantSimEngine.run!(::Model8_E1, models, status, meteo, constants=nothing, sim_object=nothing)
status.out8 = 1.0
end
function PlantSimEngine.run!(::Model9_E4, models, status, meteo, constants=nothing, sim_object=nothing)
status.out9 = 1.0
end

mapping = Dict( "E1" => (
Model1_E1(),
Model2_E1(),
MultiScaleModel(
model = Model4_E1(),
mapped_variables=[:a3_4 => "E2" => :a3_4,]
),
Model8_E1(),
Status(a1_3 = 1.0, ),
),
"E2" => (
MultiScaleModel(
model = Model3_E2(),
mapped_variables=[:a1_3 => "E1" => :a1_3,]
),
Status(a3_4 = 1.0, ),
),
"E3" => (
Model5_E3(),
Status(),
),
"E4" => (
Model6_E4(),
Model9_E4(),
Status(a6_7 = 1.0, ),
),
"E5" => (
MultiScaleModel(
model = Model7_E5(),
mapped_variables=[:a6_7 => "E4" => :a6_7,]
),
Status(),
),
)

outs = Dict("E1" => (:out1,:out2,:out4,:out8,),
"E2" => (:out3,),
"E3" => (:out5,),
"E4" => (:out6,:out9,),
"E5" => (:out7,),
)

meteo = Weather([
Atmosphere(T=25.0, Wind=1.0, Rh=0.6, Ri_PAR_f=200.0),
Atmosphere(T=10.0, Wind=0.5, Rh=0.6, Ri_PAR_f=200.0)
])

using MultiScaleTreeGraph

mtg = MultiScaleTreeGraph.Node(MultiScaleTreeGraph.NodeMTG("/", "E1", 0, 0),)

sim = run!(mtg, mapping, meteo, outputs = outs)

end
generated_test_1234_13_sim = generated_test_1234_13.run!(generated_test_1234_13.mtg, generated_test_1234_13.mapping, generated_test_1234_13.meteo, outputs = generated_test_1234_13.outs)