module generated_test_1234_10
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

struct Model1_E1 <: AbstractP1Model
 end

struct Model2_E1 <: AbstractP2Model
 end

struct Model3_E3 <: AbstractP3Model
 end

struct Model4_E1 <: AbstractP4Model
 end

struct Model5_E4 <: AbstractP5Model
 end

struct Model6_E1 <: AbstractP6Model
 end

struct Model7_E1 <: AbstractP7Model
 end

struct Model8_E6 <: AbstractP8Model
 end

struct Model9_E1 <: AbstractP9Model
 end

struct Model10_E4 <: AbstractP10Model
 end

struct Model11_E8 <: AbstractP11Model
 end

struct Model12_E1 <: AbstractP12Model
 end

struct Model13_E1 <: AbstractP13Model
 end

struct Model14_E2 <: AbstractP14Model
 end

struct Model15_E10 <: AbstractP15Model
 end

struct Model16_E7 <: AbstractP16Model
 end

struct Model17_E11 <: AbstractP17Model
 end

struct Model18_E1 <: AbstractP18Model
 end


function PlantSimEngine.inputs_(::Model1_E1)
	NamedTuple()
end
function PlantSimEngine.inputs_(::Model2_E1)
	NamedTuple()
end
function PlantSimEngine.inputs_(::Model3_E3)
	(a1_3 = -Inf, )
end
function PlantSimEngine.inputs_(::Model4_E1)
	NamedTuple()
end
function PlantSimEngine.inputs_(::Model5_E4)
	(a1_5 = -Inf, )
end
function PlantSimEngine.inputs_(::Model6_E1)
	NamedTuple()
end
function PlantSimEngine.inputs_(::Model7_E1)
	NamedTuple()
end
function PlantSimEngine.inputs_(::Model8_E6)
	(a1_8 = -Inf, )
end
function PlantSimEngine.inputs_(::Model9_E1)
	NamedTuple()
end
function PlantSimEngine.inputs_(::Model10_E4)
	(a8_10 = -Inf, )
end
function PlantSimEngine.inputs_(::Model11_E8)
	(a8_11 = -Inf, )
end
function PlantSimEngine.inputs_(::Model12_E1)
	NamedTuple()
end
function PlantSimEngine.inputs_(::Model13_E1)
	(a4_13 = -Inf, )
end
function PlantSimEngine.inputs_(::Model14_E2)
	(a2_14 = -Inf, )
end
function PlantSimEngine.inputs_(::Model15_E10)
	(a14_15 = -Inf, )
end
function PlantSimEngine.inputs_(::Model16_E7)
	NamedTuple()
end
function PlantSimEngine.inputs_(::Model17_E11)
	(a15_17 = -Inf, )
end
function PlantSimEngine.inputs_(::Model18_E1)
	NamedTuple()
end

function PlantSimEngine.outputs_(::Model1_E1)
	(a1_3 = -Inf, a1_5 = -Inf, a1_8 = -Inf, out1 = -Inf, )
end
function PlantSimEngine.outputs_(::Model2_E1)
	(a2_14 = -Inf, out2 = -Inf, )
end
function PlantSimEngine.outputs_(::Model3_E3)
	(out3 = -Inf, )
end
function PlantSimEngine.outputs_(::Model4_E1)
	(a4_13 = -Inf, out4 = -Inf, )
end
function PlantSimEngine.outputs_(::Model5_E4)
	(out5 = -Inf, )
end
function PlantSimEngine.outputs_(::Model6_E1)
	(out6 = -Inf, )
end
function PlantSimEngine.outputs_(::Model7_E1)
	(out7 = -Inf, )
end
function PlantSimEngine.outputs_(::Model8_E6)
	(a8_10 = -Inf, a8_11 = -Inf, out8 = -Inf, )
end
function PlantSimEngine.outputs_(::Model9_E1)
	(out9 = -Inf, )
end
function PlantSimEngine.outputs_(::Model10_E4)
	(out10 = -Inf, )
end
function PlantSimEngine.outputs_(::Model11_E8)
	(out11 = -Inf, )
end
function PlantSimEngine.outputs_(::Model12_E1)
	(out12 = -Inf, )
end
function PlantSimEngine.outputs_(::Model13_E1)
	(out13 = -Inf, )
end
function PlantSimEngine.outputs_(::Model14_E2)
	(a14_15 = -Inf, out14 = -Inf, )
end
function PlantSimEngine.outputs_(::Model15_E10)
	(a15_17 = -Inf, out15 = -Inf, )
end
function PlantSimEngine.outputs_(::Model16_E7)
	(out16 = -Inf, )
end
function PlantSimEngine.outputs_(::Model17_E11)
	(out17 = -Inf, )
end
function PlantSimEngine.outputs_(::Model18_E1)
	(out18 = -Inf, )
end

function PlantSimEngine.run!(::Model1_E1, models, status, meteo, constants=nothing, sim_object=nothing)
	status.a1_3 = 1.0
	status.a1_5 = 1.0
	status.a1_8 = 1.0
status.out1 = 1.0
end
function PlantSimEngine.run!(::Model2_E1, models, status, meteo, constants=nothing, sim_object=nothing)
	status.a2_14 = 1.0
status.out2 = 1.0
end
function PlantSimEngine.run!(::Model3_E3, models, status, meteo, constants=nothing, sim_object=nothing)
status.out3 = 1.0
end
function PlantSimEngine.run!(::Model4_E1, models, status, meteo, constants=nothing, sim_object=nothing)
	status.a4_13 = 1.0
status.out4 = 1.0
end
function PlantSimEngine.run!(::Model5_E4, models, status, meteo, constants=nothing, sim_object=nothing)
status.out5 = 1.0
end
function PlantSimEngine.run!(::Model6_E1, models, status, meteo, constants=nothing, sim_object=nothing)
status.out6 = 1.0
end
function PlantSimEngine.run!(::Model7_E1, models, status, meteo, constants=nothing, sim_object=nothing)
status.out7 = 1.0
end
function PlantSimEngine.run!(::Model8_E6, models, status, meteo, constants=nothing, sim_object=nothing)
	status.a8_10 = 1.0+ status.a1_8
	status.a8_11 = 1.0+ status.a1_8
status.out8 = 1.0
end
function PlantSimEngine.run!(::Model9_E1, models, status, meteo, constants=nothing, sim_object=nothing)
status.out9 = 1.0
end
function PlantSimEngine.run!(::Model10_E4, models, status, meteo, constants=nothing, sim_object=nothing)
status.out10 = 1.0
end
function PlantSimEngine.run!(::Model11_E8, models, status, meteo, constants=nothing, sim_object=nothing)
status.out11 = 1.0
end
PlantSimEngine.dep(::Model12_E1) = (p16=AbstractP16Model => ("E7",),)
function PlantSimEngine.run!(::Model12_E1, models, status, meteo, constants=nothing, sim_object=nothing)
	status_E7 = sim_object.statuses["E7"][1]
	run!(sim_object.models["E7"].p16, models, status_E7, meteo, constants, sim_object)
status.out12 = 1.0
end
function PlantSimEngine.run!(::Model13_E1, models, status, meteo, constants=nothing, sim_object=nothing)
status.out13 = 1.0
end
function PlantSimEngine.run!(::Model14_E2, models, status, meteo, constants=nothing, sim_object=nothing)
	status.a14_15 = 1.0+ status.a2_14
status.out14 = 1.0
end
function PlantSimEngine.run!(::Model15_E10, models, status, meteo, constants=nothing, sim_object=nothing)
	status.a15_17 = 1.0+ status.a14_15
status.out15 = 1.0
end
function PlantSimEngine.run!(::Model16_E7, models, status, meteo, constants=nothing, sim_object=nothing)
status.out16 = 1.0
end
function PlantSimEngine.run!(::Model17_E11, models, status, meteo, constants=nothing, sim_object=nothing)
status.out17 = 1.0
end
function PlantSimEngine.run!(::Model18_E1, models, status, meteo, constants=nothing, sim_object=nothing)
status.out18 = 1.0
end

mapping = Dict( "E1" => (
Model1_E1(),
Model2_E1(),
Model4_E1(),
Model6_E1(),
Model7_E1(),
Model9_E1(),
Model12_E1(),
Model13_E1(),
Model18_E1(),
Status(a1_3 = 1.0, a1_5 = 1.0, a1_8 = 1.0, a2_14 = 1.0, a4_13 = 1.0, ),
),
"E2" => (
MultiScaleModel(
model = Model14_E2(),
mapped_variables=[:a2_14 => "E1" => :a2_14,]
),
Status(a14_15 = 1.0, ),
),
"E3" => (
MultiScaleModel(
model = Model3_E3(),
mapped_variables=[:a1_3 => "E1" => :a1_3,]
),
Status(),
),
"E4" => (
MultiScaleModel(
model = Model5_E4(),
mapped_variables=[:a1_5 => "E1" => :a1_5,]
),
MultiScaleModel(
model = Model10_E4(),
mapped_variables=[:a8_10 => "E6" => :a8_10,]
),
Status(),
),
"E5" => (
Status(),
),
"E6" => (
MultiScaleModel(
model = Model8_E6(),
mapped_variables=[:a1_8 => "E1" => :a1_8,]
),
Status(a8_10 = 1.0, a8_11 = 1.0, ),
),
"E7" => (
Model16_E7(),
Status(),
),
"E8" => (
MultiScaleModel(
model = Model11_E8(),
mapped_variables=[:a8_11 => "E6" => :a8_11,]
),
Status(),
),
"E9" => (
Status(),
),
"E10" => (
MultiScaleModel(
model = Model15_E10(),
mapped_variables=[:a14_15 => "E2" => :a14_15,]
),
Status(a15_17 = 1.0, ),
),
"E11" => (
MultiScaleModel(
model = Model17_E11(),
mapped_variables=[:a15_17 => "E10" => :a15_17,]
),
Status(),
),
"E12" => (
Status(),
),
)

outs = Dict("E1" => (:out1,:out2,:out4,:out6,:out7,:out9,:out12,:out13,:out18,),
"E2" => (:out14,),
"E3" => (:out3,),
"E4" => (:out5,:out10,),
"E5" => (),
"E6" => (:out8,),
"E7" => (:out16,),
"E8" => (:out11,),
"E9" => (),
"E10" => (:out15,),
"E11" => (:out17,),
"E12" => (),
)

meteo = Weather([
Atmosphere(T=25.0, Wind=1.0, Rh=0.6, Ri_PAR_f=200.0),
Atmosphere(T=10.0, Wind=0.5, Rh=0.6, Ri_PAR_f=200.0)
])

using MultiScaleTreeGraph

mtg = MultiScaleTreeGraph.Node(MultiScaleTreeGraph.NodeMTG("/", "E1", 0, 0),)

sim = run!(mtg, mapping, meteo, outputs = outs)

end
generated_test_1234_10_sim = generated_test_1234_10.run!(generated_test_1234_10.mtg, generated_test_1234_10.mapping, generated_test_1234_10.meteo, outputs = generated_test_1234_10.outs)