module generated_test_1234_6
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
PlantSimEngine.@process "p14" verbose = false

struct Model1_E1 <: AbstractP1Model
 end

struct Model2_E2 <: AbstractP2Model
 end

struct Model3_E1 <: AbstractP3Model
 end

struct Model4_E1 <: AbstractP4Model
 end

struct Model5_E1 <: AbstractP5Model
 end

struct Model6_E1 <: AbstractP6Model
 end

struct Model7_E1 <: AbstractP7Model
 end

struct Model8_E2 <: AbstractP8Model
 end

struct Model9_E1 <: AbstractP9Model
 end

struct Model10_E3 <: AbstractP10Model
 end

struct Model11_E2 <: AbstractP11Model
 end

struct Model12_E3 <: AbstractP12Model
 end

struct Model13_E4 <: AbstractP13Model
 end

struct Model14_E4 <: AbstractP14Model
 end


function PlantSimEngine.inputs_(::Model1_E1)
	NamedTuple()
end
function PlantSimEngine.inputs_(::Model2_E2)
	(a1_2 = -Inf, )
end
function PlantSimEngine.inputs_(::Model3_E1)
	(a1_3 = -Inf, )
end
function PlantSimEngine.inputs_(::Model4_E1)
	NamedTuple()
end
function PlantSimEngine.inputs_(::Model5_E1)
	NamedTuple()
end
function PlantSimEngine.inputs_(::Model6_E1)
	NamedTuple()
end
function PlantSimEngine.inputs_(::Model7_E1)
	NamedTuple()
end
function PlantSimEngine.inputs_(::Model8_E2)
	(a2_8 = -Inf, )
end
function PlantSimEngine.inputs_(::Model9_E1)
	NamedTuple()
end
function PlantSimEngine.inputs_(::Model10_E3)
	(a4_10 = -Inf, )
end
function PlantSimEngine.inputs_(::Model11_E2)
	(a10_11 = -Inf, )
end
function PlantSimEngine.inputs_(::Model12_E3)
	(a6_12 = -Inf, )
end
function PlantSimEngine.inputs_(::Model13_E4)
	(a2_13 = -Inf, )
end
function PlantSimEngine.inputs_(::Model14_E4)
	(a7_14 = -Inf, )
end

function PlantSimEngine.outputs_(::Model1_E1)
	(a1_2 = -Inf, a1_3 = -Inf, out1 = -Inf, )
end
function PlantSimEngine.outputs_(::Model2_E2)
	(a2_8 = -Inf, a2_13 = -Inf, out2 = -Inf, )
end
function PlantSimEngine.outputs_(::Model3_E1)
	(out3 = -Inf, )
end
function PlantSimEngine.outputs_(::Model4_E1)
	(a4_10 = -Inf, out4 = -Inf, )
end
function PlantSimEngine.outputs_(::Model5_E1)
	(out5 = -Inf, )
end
function PlantSimEngine.outputs_(::Model6_E1)
	(a6_12 = -Inf, out6 = -Inf, )
end
function PlantSimEngine.outputs_(::Model7_E1)
	(a7_14 = -Inf, out7 = -Inf, )
end
function PlantSimEngine.outputs_(::Model8_E2)
	(out8 = -Inf, )
end
function PlantSimEngine.outputs_(::Model9_E1)
	(out9 = -Inf, )
end
function PlantSimEngine.outputs_(::Model10_E3)
	(a10_11 = -Inf, out10 = -Inf, )
end
function PlantSimEngine.outputs_(::Model11_E2)
	(out11 = -Inf, )
end
function PlantSimEngine.outputs_(::Model12_E3)
	(out12 = -Inf, )
end
function PlantSimEngine.outputs_(::Model13_E4)
	(out13 = -Inf, )
end
function PlantSimEngine.outputs_(::Model14_E4)
	(out14 = -Inf, )
end

function PlantSimEngine.run!(::Model1_E1, models, status, meteo, constants=nothing, sim_object=nothing)
	status.a1_2 = 1.0
	status.a1_3 = 1.0
status.out1 = 1.0
end
function PlantSimEngine.run!(::Model2_E2, models, status, meteo, constants=nothing, sim_object=nothing)
	status.a2_8 = 1.0+ status.a1_2
	status.a2_13 = 1.0+ status.a1_2
status.out2 = 1.0
end
PlantSimEngine.dep(::Model3_E1) = (p7=AbstractP7Model,)
function PlantSimEngine.run!(::Model3_E1, models, status, meteo, constants=nothing, sim_object=nothing)
	run!(models.p7, models, status, meteo, constants, sim_object)
status.out3 = 1.0
end
function PlantSimEngine.run!(::Model4_E1, models, status, meteo, constants=nothing, sim_object=nothing)
	status.a4_10 = 1.0
status.out4 = 1.0
end
function PlantSimEngine.run!(::Model5_E1, models, status, meteo, constants=nothing, sim_object=nothing)
status.out5 = 1.0
end
function PlantSimEngine.run!(::Model6_E1, models, status, meteo, constants=nothing, sim_object=nothing)
	status.a6_12 = 1.0
status.out6 = 1.0
end
function PlantSimEngine.run!(::Model7_E1, models, status, meteo, constants=nothing, sim_object=nothing)
	status.a7_14 = 1.0
status.out7 = 1.0
end
function PlantSimEngine.run!(::Model8_E2, models, status, meteo, constants=nothing, sim_object=nothing)
status.out8 = 1.0
end
function PlantSimEngine.run!(::Model9_E1, models, status, meteo, constants=nothing, sim_object=nothing)
status.out9 = 1.0
end
function PlantSimEngine.run!(::Model10_E3, models, status, meteo, constants=nothing, sim_object=nothing)
	status.a10_11 = 1.0+ status.a4_10
status.out10 = 1.0
end
function PlantSimEngine.run!(::Model11_E2, models, status, meteo, constants=nothing, sim_object=nothing)
status.out11 = 1.0
end
function PlantSimEngine.run!(::Model12_E3, models, status, meteo, constants=nothing, sim_object=nothing)
status.out12 = 1.0
end
function PlantSimEngine.run!(::Model13_E4, models, status, meteo, constants=nothing, sim_object=nothing)
status.out13 = 1.0
end
function PlantSimEngine.run!(::Model14_E4, models, status, meteo, constants=nothing, sim_object=nothing)
status.out14 = 1.0
end

mapping = Dict( "E1" => (
Model1_E1(),
Model3_E1(),
Model4_E1(),
Model5_E1(),
Model6_E1(),
Model7_E1(),
Model9_E1(),
Status(a1_2 = 1.0, a1_3 = 1.0, a4_10 = 1.0, a6_12 = 1.0, a7_14 = 1.0, ),
),
"E2" => (
MultiScaleModel(
model = Model2_E2(),
mapped_variables=[:a1_2 => "E1" => :a1_2,]
),
Model8_E2(),
MultiScaleModel(
model = Model11_E2(),
mapped_variables=[:a10_11 => "E3" => :a10_11,]
),
Status(a2_8 = 1.0, a2_13 = 1.0, ),
),
"E3" => (
MultiScaleModel(
model = Model10_E3(),
mapped_variables=[:a4_10 => "E1" => :a4_10,]
),
MultiScaleModel(
model = Model12_E3(),
mapped_variables=[:a6_12 => "E1" => :a6_12,]
),
Status(a10_11 = 1.0, ),
),
"E4" => (
MultiScaleModel(
model = Model13_E4(),
mapped_variables=[:a2_13 => "E2" => :a2_13,]
),
MultiScaleModel(
model = Model14_E4(),
mapped_variables=[:a7_14 => "E1" => :a7_14,]
),
Status(),
),
)

outs = Dict("E1" => (:out1,:out3,:out4,:out5,:out6,:out7,:out9,),
"E2" => (:out2,:out8,:out11,),
"E3" => (:out10,:out12,),
"E4" => (:out13,:out14,),
)

meteo = Weather([
Atmosphere(T=25.0, Wind=1.0, Rh=0.6, Ri_PAR_f=200.0),
Atmosphere(T=10.0, Wind=0.5, Rh=0.6, Ri_PAR_f=200.0)
])

using MultiScaleTreeGraph

mtg = MultiScaleTreeGraph.Node(MultiScaleTreeGraph.NodeMTG("/", "E1", 0, 0),)

sim = run!(mtg, mapping, meteo, outputs = outs)

end
generated_test_1234_6_sim = generated_test_1234_6.run!(generated_test_1234_6.mtg, generated_test_1234_6.mapping, generated_test_1234_6.meteo, outputs = generated_test_1234_6.outs)