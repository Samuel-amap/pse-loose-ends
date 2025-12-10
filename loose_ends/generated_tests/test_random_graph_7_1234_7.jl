module generated_test_1234_7
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
PlantSimEngine.@process "p17" verbose = false
PlantSimEngine.@process "p18" verbose = false
PlantSimEngine.@process "p19" verbose = false

struct Model1_E1 <: AbstractP1Model
 end

struct Model2_E1 <: AbstractP2Model
 end

struct Model3_E1 <: AbstractP3Model
 end

struct Model4_E1 <: AbstractP4Model
 end

struct Model5_E2 <: AbstractP5Model
 end

struct Model6_E1 <: AbstractP6Model
 end

struct Model7_E1 <: AbstractP7Model
 end

struct Model8_E3 <: AbstractP8Model
 end

struct Model9_E4 <: AbstractP9Model
 end

struct Model10_E5 <: AbstractP10Model
 end

struct Model11_E1 <: AbstractP11Model
 end

struct Model12_E1 <: AbstractP12Model
 end

struct Model13_E7 <: AbstractP13Model
 end

struct Model14_E8 <: AbstractP14Model
 end

struct Model15_E1 <: AbstractP15Model
 end

struct Model16_E9 <: AbstractP16Model
 end

struct Model17_E4 <: AbstractP17Model
 end

struct Model18_E10 <: AbstractP18Model
 end

struct Model19_E3 <: AbstractP19Model
 end


function PlantSimEngine.inputs_(::Model1_E1)
	NamedTuple()
end
function PlantSimEngine.inputs_(::Model2_E1)
	NamedTuple()
end
function PlantSimEngine.inputs_(::Model3_E1)
	(a2_3 = -Inf, )
end
function PlantSimEngine.inputs_(::Model4_E1)
	NamedTuple()
end
function PlantSimEngine.inputs_(::Model5_E2)
	(a3_5 = -Inf, )
end
function PlantSimEngine.inputs_(::Model6_E1)
	NamedTuple()
end
function PlantSimEngine.inputs_(::Model7_E1)
	(a2_7 = -Inf, )
end
function PlantSimEngine.inputs_(::Model8_E3)
	(a4_8 = -Inf, )
end
function PlantSimEngine.inputs_(::Model9_E4)
	(a5_9 = -Inf, )
end
function PlantSimEngine.inputs_(::Model10_E5)
	(a8_10 = -Inf, )
end
function PlantSimEngine.inputs_(::Model11_E1)
	(a8_11 = -Inf, )
end
function PlantSimEngine.inputs_(::Model12_E1)
	NamedTuple()
end
function PlantSimEngine.inputs_(::Model13_E7)
	(a5_13 = -Inf, )
end
function PlantSimEngine.inputs_(::Model14_E8)
	(a11_14 = -Inf, )
end
function PlantSimEngine.inputs_(::Model15_E1)
	NamedTuple()
end
function PlantSimEngine.inputs_(::Model16_E9)
	(a3_16 = -Inf, )
end
function PlantSimEngine.inputs_(::Model17_E4)
	(a16_17 = -Inf, )
end
function PlantSimEngine.inputs_(::Model18_E10)
	(a9_18 = -Inf, )
end
function PlantSimEngine.inputs_(::Model19_E3)
	NamedTuple()
end

function PlantSimEngine.outputs_(::Model1_E1)
	(out1 = -Inf, )
end
function PlantSimEngine.outputs_(::Model2_E1)
	(a2_3 = -Inf, a2_7 = -Inf, out2 = -Inf, )
end
function PlantSimEngine.outputs_(::Model3_E1)
	(a3_5 = -Inf, a3_16 = -Inf, out3 = -Inf, )
end
function PlantSimEngine.outputs_(::Model4_E1)
	(a4_8 = -Inf, out4 = -Inf, )
end
function PlantSimEngine.outputs_(::Model5_E2)
	(a5_9 = -Inf, a5_13 = -Inf, out5 = -Inf, )
end
function PlantSimEngine.outputs_(::Model6_E1)
	(out6 = -Inf, )
end
function PlantSimEngine.outputs_(::Model7_E1)
	(out7 = -Inf, )
end
function PlantSimEngine.outputs_(::Model8_E3)
	(a8_10 = -Inf, a8_11 = -Inf, out8 = -Inf, )
end
function PlantSimEngine.outputs_(::Model9_E4)
	(a9_18 = -Inf, out9 = -Inf, )
end
function PlantSimEngine.outputs_(::Model10_E5)
	(out10 = -Inf, )
end
function PlantSimEngine.outputs_(::Model11_E1)
	(a11_14 = -Inf, out11 = -Inf, )
end
function PlantSimEngine.outputs_(::Model12_E1)
	(out12 = -Inf, )
end
function PlantSimEngine.outputs_(::Model13_E7)
	(out13 = -Inf, )
end
function PlantSimEngine.outputs_(::Model14_E8)
	(out14 = -Inf, )
end
function PlantSimEngine.outputs_(::Model15_E1)
	(out15 = -Inf, )
end
function PlantSimEngine.outputs_(::Model16_E9)
	(a16_17 = -Inf, out16 = -Inf, )
end
function PlantSimEngine.outputs_(::Model17_E4)
	(out17 = -Inf, )
end
function PlantSimEngine.outputs_(::Model18_E10)
	(out18 = -Inf, )
end
function PlantSimEngine.outputs_(::Model19_E3)
	(out19 = -Inf, )
end

PlantSimEngine.dep(::Model1_E1) = (p2=AbstractP2Model,)
PlantSimEngine.dep(::Model1_E1) = (p19=AbstractP19Model => ("E3",),)
function PlantSimEngine.run!(::Model1_E1, models, status, meteo, constants=nothing, sim_object=nothing)
	run!(models.p2, models, status, meteo, constants, sim_object)
	status_E3 = sim_object.statuses["E3"][1]
	run!(sim_object.models["E3"].p19, models, status_E3, meteo, constants, sim_object)
status.out1 = 1.0
end
function PlantSimEngine.run!(::Model2_E1, models, status, meteo, constants=nothing, sim_object=nothing)
	status.a2_3 = 1.0
	status.a2_7 = 1.0
status.out2 = 1.0
end
function PlantSimEngine.run!(::Model3_E1, models, status, meteo, constants=nothing, sim_object=nothing)
	status.a3_5 = 1.0+ status.a2_3
	status.a3_16 = 1.0+ status.a2_3
status.out3 = 1.0
end
function PlantSimEngine.run!(::Model4_E1, models, status, meteo, constants=nothing, sim_object=nothing)
	status.a4_8 = 1.0
status.out4 = 1.0
end
function PlantSimEngine.run!(::Model5_E2, models, status, meteo, constants=nothing, sim_object=nothing)
	status.a5_9 = 1.0+ status.a3_5
	status.a5_13 = 1.0+ status.a3_5
status.out5 = 1.0
end
function PlantSimEngine.run!(::Model6_E1, models, status, meteo, constants=nothing, sim_object=nothing)
status.out6 = 1.0
end
function PlantSimEngine.run!(::Model7_E1, models, status, meteo, constants=nothing, sim_object=nothing)
status.out7 = 1.0
end
function PlantSimEngine.run!(::Model8_E3, models, status, meteo, constants=nothing, sim_object=nothing)
	status.a8_10 = 1.0+ status.a4_8
	status.a8_11 = 1.0+ status.a4_8
status.out8 = 1.0
end
function PlantSimEngine.run!(::Model9_E4, models, status, meteo, constants=nothing, sim_object=nothing)
	status.a9_18 = 1.0+ status.a5_9
status.out9 = 1.0
end
function PlantSimEngine.run!(::Model10_E5, models, status, meteo, constants=nothing, sim_object=nothing)
status.out10 = 1.0
end
function PlantSimEngine.run!(::Model11_E1, models, status, meteo, constants=nothing, sim_object=nothing)
	status.a11_14 = 1.0+ status.a8_11
status.out11 = 1.0
end
function PlantSimEngine.run!(::Model12_E1, models, status, meteo, constants=nothing, sim_object=nothing)
status.out12 = 1.0
end
function PlantSimEngine.run!(::Model13_E7, models, status, meteo, constants=nothing, sim_object=nothing)
status.out13 = 1.0
end
function PlantSimEngine.run!(::Model14_E8, models, status, meteo, constants=nothing, sim_object=nothing)
status.out14 = 1.0
end
function PlantSimEngine.run!(::Model15_E1, models, status, meteo, constants=nothing, sim_object=nothing)
status.out15 = 1.0
end
function PlantSimEngine.run!(::Model16_E9, models, status, meteo, constants=nothing, sim_object=nothing)
	status.a16_17 = 1.0+ status.a3_16
status.out16 = 1.0
end
function PlantSimEngine.run!(::Model17_E4, models, status, meteo, constants=nothing, sim_object=nothing)
status.out17 = 1.0
end
function PlantSimEngine.run!(::Model18_E10, models, status, meteo, constants=nothing, sim_object=nothing)
status.out18 = 1.0
end
function PlantSimEngine.run!(::Model19_E3, models, status, meteo, constants=nothing, sim_object=nothing)
status.out19 = 1.0
end

mapping = Dict( "E1" => (
Model1_E1(),
Model2_E1(),
Model3_E1(),
Model4_E1(),
Model6_E1(),
Model7_E1(),
MultiScaleModel(
model = Model11_E1(),
mapped_variables=[:a8_11 => "E3" => :a8_11,]
),
Model12_E1(),
Model15_E1(),
Status(a2_3 = 1.0, a2_7 = 1.0, a3_5 = 1.0, a3_16 = 1.0, a4_8 = 1.0, a11_14 = 1.0, ),
),
"E2" => (
MultiScaleModel(
model = Model5_E2(),
mapped_variables=[:a3_5 => "E1" => :a3_5,]
),
Status(a5_9 = 1.0, a5_13 = 1.0, ),
),
"E3" => (
MultiScaleModel(
model = Model8_E3(),
mapped_variables=[:a4_8 => "E1" => :a4_8,]
),
Model19_E3(),
Status(a8_10 = 1.0, a8_11 = 1.0, ),
),
"E4" => (
MultiScaleModel(
model = Model9_E4(),
mapped_variables=[:a5_9 => "E2" => :a5_9,]
),
MultiScaleModel(
model = Model17_E4(),
mapped_variables=[:a16_17 => "E9" => :a16_17,]
),
Status(a9_18 = 1.0, ),
),
"E5" => (
MultiScaleModel(
model = Model10_E5(),
mapped_variables=[:a8_10 => "E3" => :a8_10,]
),
Status(),
),
"E6" => (
Status(),
),
"E7" => (
MultiScaleModel(
model = Model13_E7(),
mapped_variables=[:a5_13 => "E2" => :a5_13,]
),
Status(),
),
"E8" => (
MultiScaleModel(
model = Model14_E8(),
mapped_variables=[:a11_14 => "E1" => :a11_14,]
),
Status(),
),
"E9" => (
MultiScaleModel(
model = Model16_E9(),
mapped_variables=[:a3_16 => "E1" => :a3_16,]
),
Status(a16_17 = 1.0, ),
),
"E10" => (
MultiScaleModel(
model = Model18_E10(),
mapped_variables=[:a9_18 => "E4" => :a9_18,]
),
Status(),
),
)

outs = Dict("E1" => (:out1,:out2,:out3,:out4,:out6,:out7,:out11,:out12,:out15,),
"E2" => (:out5,),
"E3" => (:out8,:out19,),
"E4" => (:out9,:out17,),
"E5" => (:out10,),
"E6" => (),
"E7" => (:out13,),
"E8" => (:out14,),
"E9" => (:out16,),
"E10" => (:out18,),
)

meteo = Weather([
Atmosphere(T=25.0, Wind=1.0, Rh=0.6, Ri_PAR_f=200.0),
Atmosphere(T=10.0, Wind=0.5, Rh=0.6, Ri_PAR_f=200.0)
])

using MultiScaleTreeGraph

mtg = MultiScaleTreeGraph.Node(MultiScaleTreeGraph.NodeMTG("/", "E1", 0, 0),)

sim = run!(mtg, mapping, meteo, outputs = outs)

end
generated_test_1234_7_sim = generated_test_1234_7.run!(generated_test_1234_7.mtg, generated_test_1234_7.mapping, generated_test_1234_7.meteo, outputs = generated_test_1234_7.outs)