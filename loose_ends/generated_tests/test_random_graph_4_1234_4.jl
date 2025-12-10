module generated_test_1234_4
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
PlantSimEngine.@process "p20" verbose = false
PlantSimEngine.@process "p21" verbose = false
PlantSimEngine.@process "p22" verbose = false

struct Model1_E1 <: AbstractP1Model
 end

struct Model2_E1 <: AbstractP2Model
 end

struct Model3_E3 <: AbstractP3Model
 end

struct Model4_E2 <: AbstractP4Model
 end

struct Model5_E1 <: AbstractP5Model
 end

struct Model6_E1 <: AbstractP6Model
 end

struct Model7_E1 <: AbstractP7Model
 end

struct Model8_E1 <: AbstractP8Model
 end

struct Model9_E5 <: AbstractP9Model
 end

struct Model10_E1 <: AbstractP10Model
 end

struct Model11_E6 <: AbstractP11Model
 end

struct Model12_E1 <: AbstractP12Model
 end

struct Model13_E2 <: AbstractP13Model
 end

struct Model14_E1 <: AbstractP14Model
 end

struct Model15_E7 <: AbstractP15Model
 end

struct Model16_E8 <: AbstractP16Model
 end

struct Model17_E9 <: AbstractP17Model
 end

struct Model18_E1 <: AbstractP18Model
 end

struct Model19_E1 <: AbstractP19Model
 end

struct Model20_E3 <: AbstractP20Model
 end

struct Model21_E4 <: AbstractP21Model
 end

struct Model22_E10 <: AbstractP22Model
 end


function PlantSimEngine.inputs_(::Model1_E1)
	NamedTuple()
end
function PlantSimEngine.inputs_(::Model2_E1)
	NamedTuple()
end
function PlantSimEngine.inputs_(::Model3_E3)
	NamedTuple()
end
function PlantSimEngine.inputs_(::Model4_E2)
	(a2_4 = -Inf, )
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
function PlantSimEngine.inputs_(::Model8_E1)
	NamedTuple()
end
function PlantSimEngine.inputs_(::Model9_E5)
	(a5_9 = -Inf, )
end
function PlantSimEngine.inputs_(::Model10_E1)
	NamedTuple()
end
function PlantSimEngine.inputs_(::Model11_E6)
	(a9_11 = -Inf, )
end
function PlantSimEngine.inputs_(::Model12_E1)
	NamedTuple()
end
function PlantSimEngine.inputs_(::Model13_E2)
	(a9_13 = -Inf, )
end
function PlantSimEngine.inputs_(::Model14_E1)
	NamedTuple()
end
function PlantSimEngine.inputs_(::Model15_E7)
	(a3_15 = -Inf, )
end
function PlantSimEngine.inputs_(::Model16_E8)
	(a11_16 = -Inf, )
end
function PlantSimEngine.inputs_(::Model17_E9)
	(a8_17 = -Inf, )
end
function PlantSimEngine.inputs_(::Model18_E1)
	NamedTuple()
end
function PlantSimEngine.inputs_(::Model19_E1)
	NamedTuple()
end
function PlantSimEngine.inputs_(::Model20_E3)
	(a8_20 = -Inf, )
end
function PlantSimEngine.inputs_(::Model21_E4)
	(a7_21 = -Inf, )
end
function PlantSimEngine.inputs_(::Model22_E10)
	(a5_22 = -Inf, )
end

function PlantSimEngine.outputs_(::Model1_E1)
	(out1 = -Inf, )
end
function PlantSimEngine.outputs_(::Model2_E1)
	(a2_4 = -Inf, out2 = -Inf, )
end
function PlantSimEngine.outputs_(::Model3_E3)
	(a3_15 = -Inf, out3 = -Inf, )
end
function PlantSimEngine.outputs_(::Model4_E2)
	(out4 = -Inf, )
end
function PlantSimEngine.outputs_(::Model5_E1)
	(a5_9 = -Inf, a5_22 = -Inf, out5 = -Inf, )
end
function PlantSimEngine.outputs_(::Model6_E1)
	(out6 = -Inf, )
end
function PlantSimEngine.outputs_(::Model7_E1)
	(a7_21 = -Inf, out7 = -Inf, )
end
function PlantSimEngine.outputs_(::Model8_E1)
	(a8_17 = -Inf, a8_20 = -Inf, out8 = -Inf, )
end
function PlantSimEngine.outputs_(::Model9_E5)
	(a9_11 = -Inf, a9_13 = -Inf, out9 = -Inf, )
end
function PlantSimEngine.outputs_(::Model10_E1)
	(out10 = -Inf, )
end
function PlantSimEngine.outputs_(::Model11_E6)
	(a11_16 = -Inf, out11 = -Inf, )
end
function PlantSimEngine.outputs_(::Model12_E1)
	(out12 = -Inf, )
end
function PlantSimEngine.outputs_(::Model13_E2)
	(out13 = -Inf, )
end
function PlantSimEngine.outputs_(::Model14_E1)
	(out14 = -Inf, )
end
function PlantSimEngine.outputs_(::Model15_E7)
	(out15 = -Inf, )
end
function PlantSimEngine.outputs_(::Model16_E8)
	(out16 = -Inf, )
end
function PlantSimEngine.outputs_(::Model17_E9)
	(out17 = -Inf, )
end
function PlantSimEngine.outputs_(::Model18_E1)
	(out18 = -Inf, )
end
function PlantSimEngine.outputs_(::Model19_E1)
	(out19 = -Inf, )
end
function PlantSimEngine.outputs_(::Model20_E3)
	(out20 = -Inf, )
end
function PlantSimEngine.outputs_(::Model21_E4)
	(out21 = -Inf, )
end
function PlantSimEngine.outputs_(::Model22_E10)
	(out22 = -Inf, )
end

PlantSimEngine.dep(::Model1_E1) = (p3=AbstractP3Model => ("E3",),)
function PlantSimEngine.run!(::Model1_E1, models, status, meteo, constants=nothing, sim_object=nothing)
	status_E3 = sim_object.statuses["E3"][1]
	run!(sim_object.models["E3"].p3, models, status_E3, meteo, constants, sim_object)
status.out1 = 1.0
end
function PlantSimEngine.run!(::Model2_E1, models, status, meteo, constants=nothing, sim_object=nothing)
	status.a2_4 = 1.0
status.out2 = 1.0
end
function PlantSimEngine.run!(::Model3_E3, models, status, meteo, constants=nothing, sim_object=nothing)
	status.a3_15 = 1.0
status.out3 = 1.0
end
function PlantSimEngine.run!(::Model4_E2, models, status, meteo, constants=nothing, sim_object=nothing)
status.out4 = 1.0
end
function PlantSimEngine.run!(::Model5_E1, models, status, meteo, constants=nothing, sim_object=nothing)
	status.a5_9 = 1.0
	status.a5_22 = 1.0
status.out5 = 1.0
end
function PlantSimEngine.run!(::Model6_E1, models, status, meteo, constants=nothing, sim_object=nothing)
status.out6 = 1.0
end
function PlantSimEngine.run!(::Model7_E1, models, status, meteo, constants=nothing, sim_object=nothing)
	status.a7_21 = 1.0
status.out7 = 1.0
end
function PlantSimEngine.run!(::Model8_E1, models, status, meteo, constants=nothing, sim_object=nothing)
	status.a8_17 = 1.0
	status.a8_20 = 1.0
status.out8 = 1.0
end
function PlantSimEngine.run!(::Model9_E5, models, status, meteo, constants=nothing, sim_object=nothing)
	status.a9_11 = 1.0+ status.a5_9
	status.a9_13 = 1.0+ status.a5_9
status.out9 = 1.0
end
function PlantSimEngine.run!(::Model10_E1, models, status, meteo, constants=nothing, sim_object=nothing)
status.out10 = 1.0
end
function PlantSimEngine.run!(::Model11_E6, models, status, meteo, constants=nothing, sim_object=nothing)
	status.a11_16 = 1.0+ status.a9_11
status.out11 = 1.0
end
function PlantSimEngine.run!(::Model12_E1, models, status, meteo, constants=nothing, sim_object=nothing)
status.out12 = 1.0
end
function PlantSimEngine.run!(::Model13_E2, models, status, meteo, constants=nothing, sim_object=nothing)
status.out13 = 1.0
end
function PlantSimEngine.run!(::Model14_E1, models, status, meteo, constants=nothing, sim_object=nothing)
status.out14 = 1.0
end
function PlantSimEngine.run!(::Model15_E7, models, status, meteo, constants=nothing, sim_object=nothing)
status.out15 = 1.0
end
function PlantSimEngine.run!(::Model16_E8, models, status, meteo, constants=nothing, sim_object=nothing)
status.out16 = 1.0
end
function PlantSimEngine.run!(::Model17_E9, models, status, meteo, constants=nothing, sim_object=nothing)
status.out17 = 1.0
end
function PlantSimEngine.run!(::Model18_E1, models, status, meteo, constants=nothing, sim_object=nothing)
status.out18 = 1.0
end
function PlantSimEngine.run!(::Model19_E1, models, status, meteo, constants=nothing, sim_object=nothing)
status.out19 = 1.0
end
function PlantSimEngine.run!(::Model20_E3, models, status, meteo, constants=nothing, sim_object=nothing)
status.out20 = 1.0
end
function PlantSimEngine.run!(::Model21_E4, models, status, meteo, constants=nothing, sim_object=nothing)
status.out21 = 1.0
end
function PlantSimEngine.run!(::Model22_E10, models, status, meteo, constants=nothing, sim_object=nothing)
status.out22 = 1.0
end

mapping = Dict( "E1" => (
Model1_E1(),
Model2_E1(),
Model5_E1(),
Model6_E1(),
Model7_E1(),
Model8_E1(),
Model10_E1(),
Model12_E1(),
Model14_E1(),
Model18_E1(),
Model19_E1(),
Status(a2_4 = 1.0, a5_9 = 1.0, a5_22 = 1.0, a7_21 = 1.0, a8_17 = 1.0, a8_20 = 1.0, ),
),
"E2" => (
MultiScaleModel(
model = Model4_E2(),
mapped_variables=[:a2_4 => "E1" => :a2_4,]
),
MultiScaleModel(
model = Model13_E2(),
mapped_variables=[:a9_13 => "E5" => :a9_13,]
),
Status(),
),
"E3" => (
Model3_E3(),
MultiScaleModel(
model = Model20_E3(),
mapped_variables=[:a8_20 => "E1" => :a8_20,]
),
Status(a3_15 = 1.0, ),
),
"E4" => (
MultiScaleModel(
model = Model21_E4(),
mapped_variables=[:a7_21 => "E1" => :a7_21,]
),
Status(),
),
"E5" => (
MultiScaleModel(
model = Model9_E5(),
mapped_variables=[:a5_9 => "E1" => :a5_9,]
),
Status(a9_11 = 1.0, a9_13 = 1.0, ),
),
"E6" => (
MultiScaleModel(
model = Model11_E6(),
mapped_variables=[:a9_11 => "E5" => :a9_11,]
),
Status(a11_16 = 1.0, ),
),
"E7" => (
MultiScaleModel(
model = Model15_E7(),
mapped_variables=[:a3_15 => "E3" => :a3_15,]
),
Status(),
),
"E8" => (
MultiScaleModel(
model = Model16_E8(),
mapped_variables=[:a11_16 => "E6" => :a11_16,]
),
Status(),
),
"E9" => (
MultiScaleModel(
model = Model17_E9(),
mapped_variables=[:a8_17 => "E1" => :a8_17,]
),
Status(),
),
"E10" => (
MultiScaleModel(
model = Model22_E10(),
mapped_variables=[:a5_22 => "E1" => :a5_22,]
),
Status(),
),
)

outs = Dict("E1" => (:out1,:out2,:out5,:out6,:out7,:out8,:out10,:out12,:out14,:out18,:out19,),
"E2" => (:out4,:out13,),
"E3" => (:out3,:out20,),
"E4" => (:out21,),
"E5" => (:out9,),
"E6" => (:out11,),
"E7" => (:out15,),
"E8" => (:out16,),
"E9" => (:out17,),
"E10" => (:out22,),
)

meteo = Weather([
Atmosphere(T=25.0, Wind=1.0, Rh=0.6, Ri_PAR_f=200.0),
Atmosphere(T=10.0, Wind=0.5, Rh=0.6, Ri_PAR_f=200.0)
])

using MultiScaleTreeGraph

mtg = MultiScaleTreeGraph.Node(MultiScaleTreeGraph.NodeMTG("/", "E1", 0, 0),)

sim = run!(mtg, mapping, meteo, outputs = outs)

end
generated_test_1234_4_sim = generated_test_1234_4.run!(generated_test_1234_4.mtg, generated_test_1234_4.mapping, generated_test_1234_4.meteo, outputs = generated_test_1234_4.outs)