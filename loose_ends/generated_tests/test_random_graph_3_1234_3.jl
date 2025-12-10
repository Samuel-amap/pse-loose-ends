module generated_test_1234_3
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
PlantSimEngine.@process "p15" verbose = false
PlantSimEngine.@process "p16" verbose = false

struct Model1_E1 <: AbstractP1Model
 end

struct Model2_E2 <: AbstractP2Model
 end

struct Model3_E3 <: AbstractP3Model
 end

struct Model4_E1 <: AbstractP4Model
 end

struct Model5_E1 <: AbstractP5Model
 end

struct Model6_E1 <: AbstractP6Model
 end

struct Model7_E2 <: AbstractP7Model
 end

struct Model8_E4 <: AbstractP8Model
 end

struct Model9_E5 <: AbstractP9Model
 end

struct Model10_E1 <: AbstractP10Model
 end

struct Model11_E1 <: AbstractP11Model
 end

struct Model12_E4 <: AbstractP12Model
 end

struct Model13_E1 <: AbstractP13Model
 end

struct Model14_E1 <: AbstractP14Model
 end

struct Model15_E1 <: AbstractP15Model
 end

struct Model16_E1 <: AbstractP16Model
 end


function PlantSimEngine.inputs_(::Model1_E1)
	NamedTuple()
end
function PlantSimEngine.inputs_(::Model2_E2)
	(a1_2 = -Inf, )
end
function PlantSimEngine.inputs_(::Model3_E3)
	NamedTuple()
end
function PlantSimEngine.inputs_(::Model4_E1)
	(a2_4 = -Inf, )
end
function PlantSimEngine.inputs_(::Model5_E1)
	(a3_5 = -Inf, )
end
function PlantSimEngine.inputs_(::Model6_E1)
	(a1_6 = -Inf, )
end
function PlantSimEngine.inputs_(::Model7_E2)
	(a2_7 = -Inf, )
end
function PlantSimEngine.inputs_(::Model8_E4)
	(a4_8 = -Inf, )
end
function PlantSimEngine.inputs_(::Model9_E5)
	(a7_9 = -Inf, )
end
function PlantSimEngine.inputs_(::Model10_E1)
	NamedTuple()
end
function PlantSimEngine.inputs_(::Model11_E1)
	NamedTuple()
end
function PlantSimEngine.inputs_(::Model12_E4)
	(a5_12 = -Inf, )
end
function PlantSimEngine.inputs_(::Model13_E1)
	NamedTuple()
end
function PlantSimEngine.inputs_(::Model14_E1)
	(a2_14 = -Inf, )
end
function PlantSimEngine.inputs_(::Model15_E1)
	NamedTuple()
end
function PlantSimEngine.inputs_(::Model16_E1)
	NamedTuple()
end

function PlantSimEngine.outputs_(::Model1_E1)
	(a1_2 = -Inf, a1_6 = -Inf, out1 = -Inf, )
end
function PlantSimEngine.outputs_(::Model2_E2)
	(a2_4 = -Inf, a2_7 = -Inf, a2_14 = -Inf, out2 = -Inf, )
end
function PlantSimEngine.outputs_(::Model3_E3)
	(a3_5 = -Inf, out3 = -Inf, )
end
function PlantSimEngine.outputs_(::Model4_E1)
	(a4_8 = -Inf, out4 = -Inf, )
end
function PlantSimEngine.outputs_(::Model5_E1)
	(a5_12 = -Inf, out5 = -Inf, )
end
function PlantSimEngine.outputs_(::Model6_E1)
	(out6 = -Inf, )
end
function PlantSimEngine.outputs_(::Model7_E2)
	(a7_9 = -Inf, out7 = -Inf, )
end
function PlantSimEngine.outputs_(::Model8_E4)
	(out8 = -Inf, )
end
function PlantSimEngine.outputs_(::Model9_E5)
	(out9 = -Inf, )
end
function PlantSimEngine.outputs_(::Model10_E1)
	(out10 = -Inf, )
end
function PlantSimEngine.outputs_(::Model11_E1)
	(out11 = -Inf, )
end
function PlantSimEngine.outputs_(::Model12_E4)
	(out12 = -Inf, )
end
function PlantSimEngine.outputs_(::Model13_E1)
	(out13 = -Inf, )
end
function PlantSimEngine.outputs_(::Model14_E1)
	(out14 = -Inf, )
end
function PlantSimEngine.outputs_(::Model15_E1)
	(out15 = -Inf, )
end
function PlantSimEngine.outputs_(::Model16_E1)
	(out16 = -Inf, )
end

PlantSimEngine.dep(::Model1_E1) = (p3=AbstractP3Model => ("E3",),)
function PlantSimEngine.run!(::Model1_E1, models, status, meteo, constants=nothing, sim_object=nothing)
	status_E3 = sim_object.statuses["E3"][1]
	run!(sim_object.models["E3"].p3, models, status_E3, meteo, constants, sim_object)
	status.a1_2 = 1.0+ status_E3.out3
	status.a1_6 = 1.0+ status_E3.out3
status.out1 = 1.0
end
function PlantSimEngine.run!(::Model2_E2, models, status, meteo, constants=nothing, sim_object=nothing)
	status.a2_4 = 1.0+ status.a1_2
	status.a2_7 = 1.0+ status.a1_2
	status.a2_14 = 1.0+ status.a1_2
status.out2 = 1.0
end
function PlantSimEngine.run!(::Model3_E3, models, status, meteo, constants=nothing, sim_object=nothing)
	status.a3_5 = 1.0
status.out3 = 1.0
end
function PlantSimEngine.run!(::Model4_E1, models, status, meteo, constants=nothing, sim_object=nothing)
	status.a4_8 = 1.0+ status.a2_4
status.out4 = 1.0
end
function PlantSimEngine.run!(::Model5_E1, models, status, meteo, constants=nothing, sim_object=nothing)
	status.a5_12 = 1.0+ status.a3_5
status.out5 = 1.0
end
function PlantSimEngine.run!(::Model6_E1, models, status, meteo, constants=nothing, sim_object=nothing)
status.out6 = 1.0
end
function PlantSimEngine.run!(::Model7_E2, models, status, meteo, constants=nothing, sim_object=nothing)
	status.a7_9 = 1.0+ status.a2_7
status.out7 = 1.0
end
function PlantSimEngine.run!(::Model8_E4, models, status, meteo, constants=nothing, sim_object=nothing)
status.out8 = 1.0
end
function PlantSimEngine.run!(::Model9_E5, models, status, meteo, constants=nothing, sim_object=nothing)
status.out9 = 1.0
end
function PlantSimEngine.run!(::Model10_E1, models, status, meteo, constants=nothing, sim_object=nothing)
status.out10 = 1.0
end
function PlantSimEngine.run!(::Model11_E1, models, status, meteo, constants=nothing, sim_object=nothing)
status.out11 = 1.0
end
function PlantSimEngine.run!(::Model12_E4, models, status, meteo, constants=nothing, sim_object=nothing)
status.out12 = 1.0
end
function PlantSimEngine.run!(::Model13_E1, models, status, meteo, constants=nothing, sim_object=nothing)
status.out13 = 1.0
end
function PlantSimEngine.run!(::Model14_E1, models, status, meteo, constants=nothing, sim_object=nothing)
status.out14 = 1.0
end
function PlantSimEngine.run!(::Model15_E1, models, status, meteo, constants=nothing, sim_object=nothing)
status.out15 = 1.0
end
function PlantSimEngine.run!(::Model16_E1, models, status, meteo, constants=nothing, sim_object=nothing)
status.out16 = 1.0
end

mapping = Dict( "E1" => (
Model1_E1(),
MultiScaleModel(
model = Model4_E1(),
mapped_variables=[:a2_4 => "E2" => :a2_4,]
),
MultiScaleModel(
model = Model5_E1(),
mapped_variables=[:a3_5 => "E3" => :a3_5,]
),
Model6_E1(),
Model10_E1(),
Model11_E1(),
Model13_E1(),
MultiScaleModel(
model = Model14_E1(),
mapped_variables=[:a2_14 => "E2" => :a2_14,]
),
Model15_E1(),
Model16_E1(),
Status(a1_2 = 1.0, a1_6 = 1.0, a4_8 = 1.0, a5_12 = 1.0, ),
),
"E2" => (
MultiScaleModel(
model = Model2_E2(),
mapped_variables=[:a1_2 => "E1" => :a1_2,]
),
Model7_E2(),
Status(a2_4 = 1.0, a2_7 = 1.0, a2_14 = 1.0, a7_9 = 1.0, ),
),
"E3" => (
Model3_E3(),
Status(a3_5 = 1.0, ),
),
"E4" => (
MultiScaleModel(
model = Model8_E4(),
mapped_variables=[:a4_8 => "E1" => :a4_8,]
),
MultiScaleModel(
model = Model12_E4(),
mapped_variables=[:a5_12 => "E1" => :a5_12,]
),
Status(),
),
"E5" => (
MultiScaleModel(
model = Model9_E5(),
mapped_variables=[:a7_9 => "E2" => :a7_9,]
),
Status(),
),
"E6" => (
Status(),
),
"E7" => (
Status(),
),
)

outs = Dict("E1" => (:out1,:out4,:out5,:out6,:out10,:out11,:out13,:out14,:out15,:out16,),
"E2" => (:out2,:out7,),
"E3" => (:out3,),
"E4" => (:out8,:out12,),
"E5" => (:out9,),
"E6" => (),
"E7" => (),
)

meteo = Weather([
Atmosphere(T=25.0, Wind=1.0, Rh=0.6, Ri_PAR_f=200.0),
Atmosphere(T=10.0, Wind=0.5, Rh=0.6, Ri_PAR_f=200.0)
])

using MultiScaleTreeGraph

mtg = MultiScaleTreeGraph.Node(MultiScaleTreeGraph.NodeMTG("/", "E1", 0, 0),)

sim = run!(mtg, mapping, meteo, outputs = outs)

end


