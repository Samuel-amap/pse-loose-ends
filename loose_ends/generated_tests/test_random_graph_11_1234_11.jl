module generated_test_1234_11
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

struct Model3_E2 <: AbstractP3Model
 end

struct Model4_E1 <: AbstractP4Model
 end

struct Model5_E2 <: AbstractP5Model
 end

struct Model6_E1 <: AbstractP6Model
 end

struct Model7_E1 <: AbstractP7Model
 end

struct Model8_E2 <: AbstractP8Model
 end

struct Model9_E1 <: AbstractP9Model
 end

struct Model10_E1 <: AbstractP10Model
 end

struct Model11_E4 <: AbstractP11Model
 end

struct Model12_E1 <: AbstractP12Model
 end

struct Model13_E2 <: AbstractP13Model
 end

struct Model14_E5 <: AbstractP14Model
 end

struct Model15_E6 <: AbstractP15Model
 end

struct Model16_E7 <: AbstractP16Model
 end

struct Model17_E1 <: AbstractP17Model
 end

struct Model18_E9 <: AbstractP18Model
 end

struct Model19_E1 <: AbstractP19Model
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
	NamedTuple()
end
function PlantSimEngine.inputs_(::Model5_E2)
	(a3_5 = -Inf, )
end
function PlantSimEngine.inputs_(::Model6_E1)
	(a3_6 = -Inf, )
end
function PlantSimEngine.inputs_(::Model7_E1)
	(a5_7 = -Inf, )
end
function PlantSimEngine.inputs_(::Model8_E2)
	(a4_8 = -Inf, )
end
function PlantSimEngine.inputs_(::Model9_E1)
	NamedTuple()
end
function PlantSimEngine.inputs_(::Model10_E1)
	(a9_10 = -Inf, )
end
function PlantSimEngine.inputs_(::Model11_E4)
	(a8_11 = -Inf, )
end
function PlantSimEngine.inputs_(::Model12_E1)
	NamedTuple()
end
function PlantSimEngine.inputs_(::Model13_E2)
	NamedTuple()
end
function PlantSimEngine.inputs_(::Model14_E5)
	(a13_14 = -Inf, )
end
function PlantSimEngine.inputs_(::Model15_E6)
	(a6_15 = -Inf, )
end
function PlantSimEngine.inputs_(::Model16_E7)
	(a13_16 = -Inf, )
end
function PlantSimEngine.inputs_(::Model17_E1)
	NamedTuple()
end
function PlantSimEngine.inputs_(::Model18_E9)
	NamedTuple()
end
function PlantSimEngine.inputs_(::Model19_E1)
	NamedTuple()
end

function PlantSimEngine.outputs_(::Model1_E1)
	(a1_3 = -Inf, out1 = -Inf, )
end
function PlantSimEngine.outputs_(::Model2_E1)
	(out2 = -Inf, )
end
function PlantSimEngine.outputs_(::Model3_E2)
	(a3_5 = -Inf, a3_6 = -Inf, out3 = -Inf, )
end
function PlantSimEngine.outputs_(::Model4_E1)
	(a4_8 = -Inf, out4 = -Inf, )
end
function PlantSimEngine.outputs_(::Model5_E2)
	(a5_7 = -Inf, out5 = -Inf, )
end
function PlantSimEngine.outputs_(::Model6_E1)
	(a6_15 = -Inf, out6 = -Inf, )
end
function PlantSimEngine.outputs_(::Model7_E1)
	(out7 = -Inf, )
end
function PlantSimEngine.outputs_(::Model8_E2)
	(a8_11 = -Inf, out8 = -Inf, )
end
function PlantSimEngine.outputs_(::Model9_E1)
	(a9_10 = -Inf, out9 = -Inf, )
end
function PlantSimEngine.outputs_(::Model10_E1)
	(out10 = -Inf, )
end
function PlantSimEngine.outputs_(::Model11_E4)
	(out11 = -Inf, )
end
function PlantSimEngine.outputs_(::Model12_E1)
	(out12 = -Inf, )
end
function PlantSimEngine.outputs_(::Model13_E2)
	(a13_14 = -Inf, a13_16 = -Inf, out13 = -Inf, )
end
function PlantSimEngine.outputs_(::Model14_E5)
	(out14 = -Inf, )
end
function PlantSimEngine.outputs_(::Model15_E6)
	(out15 = -Inf, )
end
function PlantSimEngine.outputs_(::Model16_E7)
	(out16 = -Inf, )
end
function PlantSimEngine.outputs_(::Model17_E1)
	(out17 = -Inf, )
end
function PlantSimEngine.outputs_(::Model18_E9)
	(out18 = -Inf, )
end
function PlantSimEngine.outputs_(::Model19_E1)
	(out19 = -Inf, )
end

function PlantSimEngine.run!(::Model1_E1, models, status, meteo, constants=nothing, sim_object=nothing)
	status.a1_3 = 1.0
status.out1 = 1.0
end
function PlantSimEngine.run!(::Model2_E1, models, status, meteo, constants=nothing, sim_object=nothing)
status.out2 = 1.0
end
PlantSimEngine.dep(::Model3_E2) = (p4=AbstractP4Model => ("E1",),)
function PlantSimEngine.run!(::Model3_E2, models, status, meteo, constants=nothing, sim_object=nothing)
	status_E1 = sim_object.statuses["E1"][1]
	run!(sim_object.models["E1"].p4, models, status_E1, meteo, constants, sim_object)
	status.a3_5 = 1.0+ status_E1.out4+ status.a1_3
	status.a3_6 = 1.0+ status_E1.out4+ status.a1_3
status.out3 = 1.0
end
function PlantSimEngine.run!(::Model4_E1, models, status, meteo, constants=nothing, sim_object=nothing)
	status.a4_8 = 1.0
status.out4 = 1.0
end
function PlantSimEngine.run!(::Model5_E2, models, status, meteo, constants=nothing, sim_object=nothing)
	status.a5_7 = 1.0+ status.a3_5
status.out5 = 1.0
end
function PlantSimEngine.run!(::Model6_E1, models, status, meteo, constants=nothing, sim_object=nothing)
	status.a6_15 = 1.0+ status.a3_6
status.out6 = 1.0
end
function PlantSimEngine.run!(::Model7_E1, models, status, meteo, constants=nothing, sim_object=nothing)
status.out7 = 1.0
end
function PlantSimEngine.run!(::Model8_E2, models, status, meteo, constants=nothing, sim_object=nothing)
	status.a8_11 = 1.0+ status.a4_8
status.out8 = 1.0
end
function PlantSimEngine.run!(::Model9_E1, models, status, meteo, constants=nothing, sim_object=nothing)
	status.a9_10 = 1.0
status.out9 = 1.0
end
function PlantSimEngine.run!(::Model10_E1, models, status, meteo, constants=nothing, sim_object=nothing)
status.out10 = 1.0
end
function PlantSimEngine.run!(::Model11_E4, models, status, meteo, constants=nothing, sim_object=nothing)
status.out11 = 1.0
end
PlantSimEngine.dep(::Model12_E1) = (p13=AbstractP13Model => ("E2",),)
function PlantSimEngine.run!(::Model12_E1, models, status, meteo, constants=nothing, sim_object=nothing)
	status_E2 = sim_object.statuses["E2"][1]
	run!(sim_object.models["E2"].p13, models, status_E2, meteo, constants, sim_object)
status.out12 = 1.0
end
function PlantSimEngine.run!(::Model13_E2, models, status, meteo, constants=nothing, sim_object=nothing)
	status.a13_14 = 1.0
	status.a13_16 = 1.0
status.out13 = 1.0
end
function PlantSimEngine.run!(::Model14_E5, models, status, meteo, constants=nothing, sim_object=nothing)
status.out14 = 1.0
end
function PlantSimEngine.run!(::Model15_E6, models, status, meteo, constants=nothing, sim_object=nothing)
status.out15 = 1.0
end
function PlantSimEngine.run!(::Model16_E7, models, status, meteo, constants=nothing, sim_object=nothing)
status.out16 = 1.0
end
PlantSimEngine.dep(::Model17_E1) = (p18=AbstractP18Model => ("E9",),)
function PlantSimEngine.run!(::Model17_E1, models, status, meteo, constants=nothing, sim_object=nothing)
	status_E9 = sim_object.statuses["E9"][1]
	run!(sim_object.models["E9"].p18, models, status_E9, meteo, constants, sim_object)
status.out17 = 1.0
end
function PlantSimEngine.run!(::Model18_E9, models, status, meteo, constants=nothing, sim_object=nothing)
status.out18 = 1.0
end
function PlantSimEngine.run!(::Model19_E1, models, status, meteo, constants=nothing, sim_object=nothing)
status.out19 = 1.0
end

mapping = Dict( "E1" => (
Model1_E1(),
Model2_E1(),
Model4_E1(),
MultiScaleModel(
model = Model6_E1(),
mapped_variables=[:a3_6 => "E2" => :a3_6,]
),
MultiScaleModel(
model = Model7_E1(),
mapped_variables=[:a5_7 => "E2" => :a5_7,]
),
Model9_E1(),
Model10_E1(),
Model12_E1(),
Model17_E1(),
Model19_E1(),
Status(a1_3 = 1.0, a4_8 = 1.0, a6_15 = 1.0, a9_10 = 1.0, ),
),
"E2" => (
MultiScaleModel(
model = Model3_E2(),
mapped_variables=[:a1_3 => "E1" => :a1_3,]
),
Model5_E2(),
MultiScaleModel(
model = Model8_E2(),
mapped_variables=[:a4_8 => "E1" => :a4_8,]
),
Model13_E2(),
Status(a3_5 = 1.0, a3_6 = 1.0, a5_7 = 1.0, a8_11 = 1.0, a13_14 = 1.0, a13_16 = 1.0, ),
),
"E3" => (
Status(),
),
"E4" => (
MultiScaleModel(
model = Model11_E4(),
mapped_variables=[:a8_11 => "E2" => :a8_11,]
),
Status(),
),
"E5" => (
MultiScaleModel(
model = Model14_E5(),
mapped_variables=[:a13_14 => "E2" => :a13_14,]
),
Status(),
),
"E6" => (
MultiScaleModel(
model = Model15_E6(),
mapped_variables=[:a6_15 => "E1" => :a6_15,]
),
Status(),
),
"E7" => (
MultiScaleModel(
model = Model16_E7(),
mapped_variables=[:a13_16 => "E2" => :a13_16,]
),
Status(),
),
"E8" => (
Status(),
),
"E9" => (
Model18_E9(),
Status(),
),
"E10" => (
Status(),
),
)

outs = Dict("E1" => (:out1,:out2,:out4,:out6,:out7,:out9,:out10,:out12,:out17,:out19,),
"E2" => (:out3,:out5,:out8,:out13,),
"E3" => (),
"E4" => (:out11,),
"E5" => (:out14,),
"E6" => (:out15,),
"E7" => (:out16,),
"E8" => (),
"E9" => (:out18,),
"E10" => (),
)

meteo = Weather([
Atmosphere(T=25.0, Wind=1.0, Rh=0.6, Ri_PAR_f=200.0),
Atmosphere(T=10.0, Wind=0.5, Rh=0.6, Ri_PAR_f=200.0)
])

using MultiScaleTreeGraph

mtg = MultiScaleTreeGraph.Node(MultiScaleTreeGraph.NodeMTG("/", "E1", 0, 0),)

sim = run!(mtg, mapping, meteo, outputs = outs)

end
generated_test_1234_11_sim = generated_test_1234_11.run!(generated_test_1234_11.mtg, generated_test_1234_11.mapping, generated_test_1234_11.meteo, outputs = generated_test_1234_11.outs)