module generated_test_1234_20
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

struct Model1_E1 <: AbstractP1Model
 end

struct Model2_E1 <: AbstractP2Model
 end

struct Model3_E2 <: AbstractP3Model
 end

struct Model4_E1 <: AbstractP4Model
 end

struct Model5_E4 <: AbstractP5Model
 end

struct Model6_E2 <: AbstractP6Model
 end

struct Model7_E5 <: AbstractP7Model
 end

struct Model8_E6 <: AbstractP8Model
 end

struct Model9_E1 <: AbstractP9Model
 end

struct Model10_E8 <: AbstractP10Model
 end

struct Model11_E1 <: AbstractP11Model
 end

struct Model12_E1 <: AbstractP12Model
 end

struct Model13_E10 <: AbstractP13Model
 end

struct Model14_E3 <: AbstractP14Model
 end

struct Model15_E5 <: AbstractP15Model
 end

struct Model16_E7 <: AbstractP16Model
 end

struct Model17_E1 <: AbstractP17Model
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
function PlantSimEngine.inputs_(::Model5_E4)
	(a1_5 = -Inf, )
end
function PlantSimEngine.inputs_(::Model6_E2)
	(a1_6 = -Inf, )
end
function PlantSimEngine.inputs_(::Model7_E5)
	(a2_7 = -Inf, )
end
function PlantSimEngine.inputs_(::Model8_E6)
	(a4_8 = -Inf, )
end
function PlantSimEngine.inputs_(::Model9_E1)
	NamedTuple()
end
function PlantSimEngine.inputs_(::Model10_E8)
	NamedTuple()
end
function PlantSimEngine.inputs_(::Model11_E1)
	NamedTuple()
end
function PlantSimEngine.inputs_(::Model12_E1)
	NamedTuple()
end
function PlantSimEngine.inputs_(::Model13_E10)
	(a6_13 = -Inf, )
end
function PlantSimEngine.inputs_(::Model14_E3)
	(a12_14 = -Inf, )
end
function PlantSimEngine.inputs_(::Model15_E5)
	(a5_15 = -Inf, )
end
function PlantSimEngine.inputs_(::Model16_E7)
	(a2_16 = -Inf, )
end
function PlantSimEngine.inputs_(::Model17_E1)
	NamedTuple()
end

function PlantSimEngine.outputs_(::Model1_E1)
	(a1_3 = -Inf, a1_5 = -Inf, a1_6 = -Inf, out1 = -Inf, )
end
function PlantSimEngine.outputs_(::Model2_E1)
	(a2_7 = -Inf, a2_16 = -Inf, out2 = -Inf, )
end
function PlantSimEngine.outputs_(::Model3_E2)
	(out3 = -Inf, )
end
function PlantSimEngine.outputs_(::Model4_E1)
	(a4_8 = -Inf, out4 = -Inf, )
end
function PlantSimEngine.outputs_(::Model5_E4)
	(a5_15 = -Inf, out5 = -Inf, )
end
function PlantSimEngine.outputs_(::Model6_E2)
	(a6_13 = -Inf, out6 = -Inf, )
end
function PlantSimEngine.outputs_(::Model7_E5)
	(out7 = -Inf, )
end
function PlantSimEngine.outputs_(::Model8_E6)
	(out8 = -Inf, )
end
function PlantSimEngine.outputs_(::Model9_E1)
	(out9 = -Inf, )
end
function PlantSimEngine.outputs_(::Model10_E8)
	(out10 = -Inf, )
end
function PlantSimEngine.outputs_(::Model11_E1)
	(out11 = -Inf, )
end
function PlantSimEngine.outputs_(::Model12_E1)
	(a12_14 = -Inf, out12 = -Inf, )
end
function PlantSimEngine.outputs_(::Model13_E10)
	(out13 = -Inf, )
end
function PlantSimEngine.outputs_(::Model14_E3)
	(out14 = -Inf, )
end
function PlantSimEngine.outputs_(::Model15_E5)
	(out15 = -Inf, )
end
function PlantSimEngine.outputs_(::Model16_E7)
	(out16 = -Inf, )
end
function PlantSimEngine.outputs_(::Model17_E1)
	(out17 = -Inf, )
end

PlantSimEngine.dep(::Model1_E1) = (p2=AbstractP2Model,)
function PlantSimEngine.run!(::Model1_E1, models, status, meteo, constants=nothing, sim_object=nothing)
	run!(models.p2, models, status, meteo, constants, sim_object)
	status.a1_3 = 1.0+ status.out2
	status.a1_5 = 1.0+ status.out2
	status.a1_6 = 1.0+ status.out2
status.out1 = 1.0
end
function PlantSimEngine.run!(::Model2_E1, models, status, meteo, constants=nothing, sim_object=nothing)
	status.a2_7 = 1.0
	status.a2_16 = 1.0
status.out2 = 1.0
end
function PlantSimEngine.run!(::Model3_E2, models, status, meteo, constants=nothing, sim_object=nothing)
status.out3 = 1.0
end
function PlantSimEngine.run!(::Model4_E1, models, status, meteo, constants=nothing, sim_object=nothing)
	status.a4_8 = 1.0
status.out4 = 1.0
end
function PlantSimEngine.run!(::Model5_E4, models, status, meteo, constants=nothing, sim_object=nothing)
	status.a5_15 = 1.0+ status.a1_5
status.out5 = 1.0
end
function PlantSimEngine.run!(::Model6_E2, models, status, meteo, constants=nothing, sim_object=nothing)
	status.a6_13 = 1.0+ status.a1_6
status.out6 = 1.0
end
function PlantSimEngine.run!(::Model7_E5, models, status, meteo, constants=nothing, sim_object=nothing)
status.out7 = 1.0
end
PlantSimEngine.dep(::Model8_E6) = (p10=AbstractP10Model => ("E8",),)
function PlantSimEngine.run!(::Model8_E6, models, status, meteo, constants=nothing, sim_object=nothing)
	status_E8 = sim_object.statuses["E8"][1]
	run!(sim_object.models["E8"].p10, models, status_E8, meteo, constants, sim_object)
status.out8 = 1.0
end
function PlantSimEngine.run!(::Model9_E1, models, status, meteo, constants=nothing, sim_object=nothing)
status.out9 = 1.0
end
function PlantSimEngine.run!(::Model10_E8, models, status, meteo, constants=nothing, sim_object=nothing)
status.out10 = 1.0
end
function PlantSimEngine.run!(::Model11_E1, models, status, meteo, constants=nothing, sim_object=nothing)
status.out11 = 1.0
end
function PlantSimEngine.run!(::Model12_E1, models, status, meteo, constants=nothing, sim_object=nothing)
	status.a12_14 = 1.0
status.out12 = 1.0
end
function PlantSimEngine.run!(::Model13_E10, models, status, meteo, constants=nothing, sim_object=nothing)
status.out13 = 1.0
end
function PlantSimEngine.run!(::Model14_E3, models, status, meteo, constants=nothing, sim_object=nothing)
status.out14 = 1.0
end
function PlantSimEngine.run!(::Model15_E5, models, status, meteo, constants=nothing, sim_object=nothing)
status.out15 = 1.0
end
function PlantSimEngine.run!(::Model16_E7, models, status, meteo, constants=nothing, sim_object=nothing)
status.out16 = 1.0
end
function PlantSimEngine.run!(::Model17_E1, models, status, meteo, constants=nothing, sim_object=nothing)
status.out17 = 1.0
end

mapping = Dict( "E1" => (
Model1_E1(),
Model2_E1(),
Model4_E1(),
Model9_E1(),
Model11_E1(),
Model12_E1(),
Model17_E1(),
Status(a1_3 = 1.0, a1_5 = 1.0, a1_6 = 1.0, a2_7 = 1.0, a2_16 = 1.0, a4_8 = 1.0, a12_14 = 1.0, ),
),
"E2" => (
MultiScaleModel(
model = Model3_E2(),
mapped_variables=[:a1_3 => "E1" => :a1_3,]
),
MultiScaleModel(
model = Model6_E2(),
mapped_variables=[:a1_6 => "E1" => :a1_6,]
),
Status(a6_13 = 1.0, ),
),
"E3" => (
MultiScaleModel(
model = Model14_E3(),
mapped_variables=[:a12_14 => "E1" => :a12_14,]
),
Status(),
),
"E4" => (
MultiScaleModel(
model = Model5_E4(),
mapped_variables=[:a1_5 => "E1" => :a1_5,]
),
Status(a5_15 = 1.0, ),
),
"E5" => (
MultiScaleModel(
model = Model7_E5(),
mapped_variables=[:a2_7 => "E1" => :a2_7,]
),
MultiScaleModel(
model = Model15_E5(),
mapped_variables=[:a5_15 => "E4" => :a5_15,]
),
Status(),
),
"E6" => (
MultiScaleModel(
model = Model8_E6(),
mapped_variables=[:a4_8 => "E1" => :a4_8,]
),
Status(),
),
"E7" => (
MultiScaleModel(
model = Model16_E7(),
mapped_variables=[:a2_16 => "E1" => :a2_16,]
),
Status(),
),
"E8" => (
Model10_E8(),
Status(),
),
"E9" => (
Status(),
),
"E10" => (
MultiScaleModel(
model = Model13_E10(),
mapped_variables=[:a6_13 => "E2" => :a6_13,]
),
Status(),
),
)

outs = Dict("E1" => (:out1,:out2,:out4,:out9,:out11,:out12,:out17,),
"E2" => (:out3,:out6,),
"E3" => (:out14,),
"E4" => (:out5,),
"E5" => (:out7,:out15,),
"E6" => (:out8,),
"E7" => (:out16,),
"E8" => (:out10,),
"E9" => (),
"E10" => (:out13,),
)

meteo = Weather([
Atmosphere(T=25.0, Wind=1.0, Rh=0.6, Ri_PAR_f=200.0),
Atmosphere(T=10.0, Wind=0.5, Rh=0.6, Ri_PAR_f=200.0)
])

using MultiScaleTreeGraph

mtg = MultiScaleTreeGraph.Node(MultiScaleTreeGraph.NodeMTG("/", "E1", 0, 0),)

sim = run!(mtg, mapping, meteo, outputs = outs)

end
generated_test_1234_20_sim = generated_test_1234_20.run!(generated_test_1234_20.mtg, generated_test_1234_20.mapping, generated_test_1234_20.meteo, outputs = generated_test_1234_20.outs)