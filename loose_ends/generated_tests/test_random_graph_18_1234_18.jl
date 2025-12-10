module generated_test_1234_18
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
PlantSimEngine.@process "p10" verbose = false
PlantSimEngine.@process "p11" verbose = false
PlantSimEngine.@process "p12" verbose = false
PlantSimEngine.@process "p13" verbose = false

struct Model1_E1 <: AbstractP1Model
 end

struct Model2_E2 <: AbstractP2Model
 end

struct Model3_E1 <: AbstractP3Model
 end

struct Model4_E4 <: AbstractP4Model
 end

struct Model5_E2 <: AbstractP5Model
 end

struct Model6_E4 <: AbstractP6Model
 end

struct Model7_E3 <: AbstractP7Model
 end

struct Model8_E5 <: AbstractP8Model
 end

struct Model9_E1 <: AbstractP9Model
 end

struct Model10_E1 <: AbstractP10Model
 end

struct Model11_E6 <: AbstractP11Model
 end

struct Model12_E3 <: AbstractP12Model
 end

struct Model13_E1 <: AbstractP13Model
 end


function PlantSimEngine.inputs_(::Model1_E1)
	NamedTuple()
end
function PlantSimEngine.inputs_(::Model2_E2)
	(a1_2 = -Inf, )
end
function PlantSimEngine.inputs_(::Model3_E1)
	NamedTuple()
end
function PlantSimEngine.inputs_(::Model4_E4)
	(a2_4 = -Inf, )
end
function PlantSimEngine.inputs_(::Model5_E2)
	NamedTuple()
end
function PlantSimEngine.inputs_(::Model6_E4)
	(a2_6 = -Inf, )
end
function PlantSimEngine.inputs_(::Model7_E3)
	NamedTuple()
end
function PlantSimEngine.inputs_(::Model8_E5)
	(a1_8 = -Inf, )
end
function PlantSimEngine.inputs_(::Model9_E1)
	(a7_9 = -Inf, )
end
function PlantSimEngine.inputs_(::Model10_E1)
	NamedTuple()
end
function PlantSimEngine.inputs_(::Model11_E6)
	(a4_11 = -Inf, )
end
function PlantSimEngine.inputs_(::Model12_E3)
	(a10_12 = -Inf, )
end
function PlantSimEngine.inputs_(::Model13_E1)
	NamedTuple()
end

function PlantSimEngine.outputs_(::Model1_E1)
	(a1_2 = -Inf, a1_8 = -Inf, out1 = -Inf, )
end
function PlantSimEngine.outputs_(::Model2_E2)
	(a2_4 = -Inf, a2_6 = -Inf, out2 = -Inf, )
end
function PlantSimEngine.outputs_(::Model3_E1)
	(out3 = -Inf, )
end
function PlantSimEngine.outputs_(::Model4_E4)
	(a4_11 = -Inf, out4 = -Inf, )
end
function PlantSimEngine.outputs_(::Model5_E2)
	(out5 = -Inf, )
end
function PlantSimEngine.outputs_(::Model6_E4)
	(out6 = -Inf, )
end
function PlantSimEngine.outputs_(::Model7_E3)
	(a7_9 = -Inf, out7 = -Inf, )
end
function PlantSimEngine.outputs_(::Model8_E5)
	(out8 = -Inf, )
end
function PlantSimEngine.outputs_(::Model9_E1)
	(out9 = -Inf, )
end
function PlantSimEngine.outputs_(::Model10_E1)
	(a10_12 = -Inf, out10 = -Inf, )
end
function PlantSimEngine.outputs_(::Model11_E6)
	(out11 = -Inf, )
end
function PlantSimEngine.outputs_(::Model12_E3)
	(out12 = -Inf, )
end
function PlantSimEngine.outputs_(::Model13_E1)
	(out13 = -Inf, )
end

function PlantSimEngine.run!(::Model1_E1, models, status, meteo, constants=nothing, sim_object=nothing)
	status.a1_2 = 1.0
	status.a1_8 = 1.0
status.out1 = 1.0
end
PlantSimEngine.dep(::Model2_E2) = (p7=AbstractP7Model => ("E3",),)
function PlantSimEngine.run!(::Model2_E2, models, status, meteo, constants=nothing, sim_object=nothing)
	status_E3 = sim_object.statuses["E3"][1]
	run!(sim_object.models["E3"].p7, models, status_E3, meteo, constants, sim_object)
	status.a2_4 = 1.0+ status_E3.out7+ status.a1_2
	status.a2_6 = 1.0+ status_E3.out7+ status.a1_2
status.out2 = 1.0
end
function PlantSimEngine.run!(::Model3_E1, models, status, meteo, constants=nothing, sim_object=nothing)
status.out3 = 1.0
end
PlantSimEngine.dep(::Model4_E4) = (p5=AbstractP5Model => ("E2",),)
function PlantSimEngine.run!(::Model4_E4, models, status, meteo, constants=nothing, sim_object=nothing)
	status_E2 = sim_object.statuses["E2"][1]
	run!(sim_object.models["E2"].p5, models, status_E2, meteo, constants, sim_object)
	status.a4_11 = 1.0+ status_E2.out5+ status.a2_4
status.out4 = 1.0
end
function PlantSimEngine.run!(::Model5_E2, models, status, meteo, constants=nothing, sim_object=nothing)
status.out5 = 1.0
end
function PlantSimEngine.run!(::Model6_E4, models, status, meteo, constants=nothing, sim_object=nothing)
status.out6 = 1.0
end
function PlantSimEngine.run!(::Model7_E3, models, status, meteo, constants=nothing, sim_object=nothing)
	status.a7_9 = 1.0
status.out7 = 1.0
end
function PlantSimEngine.run!(::Model8_E5, models, status, meteo, constants=nothing, sim_object=nothing)
status.out8 = 1.0
end
function PlantSimEngine.run!(::Model9_E1, models, status, meteo, constants=nothing, sim_object=nothing)
status.out9 = 1.0
end
function PlantSimEngine.run!(::Model10_E1, models, status, meteo, constants=nothing, sim_object=nothing)
	status.a10_12 = 1.0
status.out10 = 1.0
end
function PlantSimEngine.run!(::Model11_E6, models, status, meteo, constants=nothing, sim_object=nothing)
status.out11 = 1.0
end
function PlantSimEngine.run!(::Model12_E3, models, status, meteo, constants=nothing, sim_object=nothing)
status.out12 = 1.0
end
function PlantSimEngine.run!(::Model13_E1, models, status, meteo, constants=nothing, sim_object=nothing)
status.out13 = 1.0
end

mapping = Dict( "E1" => (
Model1_E1(),
Model3_E1(),
MultiScaleModel(
model = Model9_E1(),
mapped_variables=[:a7_9 => "E3" => :a7_9,]
),
Model10_E1(),
Model13_E1(),
Status(a1_2 = 1.0, a1_8 = 1.0, a10_12 = 1.0, ),
),
"E2" => (
MultiScaleModel(
model = Model2_E2(),
mapped_variables=[:a1_2 => "E1" => :a1_2,]
),
Model5_E2(),
Status(a2_4 = 1.0, a2_6 = 1.0, ),
),
"E3" => (
Model7_E3(),
MultiScaleModel(
model = Model12_E3(),
mapped_variables=[:a10_12 => "E1" => :a10_12,]
),
Status(a7_9 = 1.0, ),
),
"E4" => (
MultiScaleModel(
model = Model4_E4(),
mapped_variables=[:a2_4 => "E2" => :a2_4,]
),
MultiScaleModel(
model = Model6_E4(),
mapped_variables=[:a2_6 => "E2" => :a2_6,]
),
Status(a4_11 = 1.0, ),
),
"E5" => (
MultiScaleModel(
model = Model8_E5(),
mapped_variables=[:a1_8 => "E1" => :a1_8,]
),
Status(),
),
"E6" => (
MultiScaleModel(
model = Model11_E6(),
mapped_variables=[:a4_11 => "E4" => :a4_11,]
),
Status(),
),
)

outs = Dict("E1" => (:out1,:out3,:out9,:out10,:out13,),
"E2" => (:out2,:out5,),
"E3" => (:out7,:out12,),
"E4" => (:out4,:out6,),
"E5" => (:out8,),
"E6" => (:out11,),
)

meteo = Weather([
Atmosphere(T=25.0, Wind=1.0, Rh=0.6, Ri_PAR_f=200.0),
Atmosphere(T=10.0, Wind=0.5, Rh=0.6, Ri_PAR_f=200.0)
])

using MultiScaleTreeGraph

mtg = MultiScaleTreeGraph.Node(MultiScaleTreeGraph.NodeMTG("/", "E1", 0, 0),)

sim = run!(mtg, mapping, meteo, outputs = outs)

end
generated_test_1234_18_sim = generated_test_1234_18.run!(generated_test_1234_18.mtg, generated_test_1234_18.mapping, generated_test_1234_18.meteo, outputs = generated_test_1234_18.outs)