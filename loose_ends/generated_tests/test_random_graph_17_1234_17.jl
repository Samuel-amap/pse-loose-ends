module generated_test_1234_17
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
PlantSimEngine.@process "p23" verbose = false

struct Model1_E1 <: AbstractP1Model
 end

struct Model2_E2 <: AbstractP2Model
 end

struct Model3_E3 <: AbstractP3Model
 end

struct Model4_E2 <: AbstractP4Model
 end

struct Model5_E1 <: AbstractP5Model
 end

struct Model6_E1 <: AbstractP6Model
 end

struct Model7_E4 <: AbstractP7Model
 end

struct Model8_E5 <: AbstractP8Model
 end

struct Model9_E6 <: AbstractP9Model
 end

struct Model10_E6 <: AbstractP10Model
 end

struct Model11_E7 <: AbstractP11Model
 end

struct Model12_E1 <: AbstractP12Model
 end

struct Model13_E9 <: AbstractP13Model
 end

struct Model14_E4 <: AbstractP14Model
 end

struct Model15_E1 <: AbstractP15Model
 end

struct Model16_E4 <: AbstractP16Model
 end

struct Model17_E10 <: AbstractP17Model
 end

struct Model18_E1 <: AbstractP18Model
 end

struct Model19_E1 <: AbstractP19Model
 end

struct Model20_E7 <: AbstractP20Model
 end

struct Model21_E5 <: AbstractP21Model
 end

struct Model22_E11 <: AbstractP22Model
 end

struct Model23_E1 <: AbstractP23Model
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
function PlantSimEngine.inputs_(::Model4_E2)
	(a2_4 = -Inf, )
end
function PlantSimEngine.inputs_(::Model5_E1)
	NamedTuple()
end
function PlantSimEngine.inputs_(::Model6_E1)
	NamedTuple()
end
function PlantSimEngine.inputs_(::Model7_E4)
	(a6_7 = -Inf, )
end
function PlantSimEngine.inputs_(::Model8_E5)
	(a4_8 = -Inf, )
end
function PlantSimEngine.inputs_(::Model9_E6)
	NamedTuple()
end
function PlantSimEngine.inputs_(::Model10_E6)
	(a3_10 = -Inf, )
end
function PlantSimEngine.inputs_(::Model11_E7)
	(a1_11 = -Inf, )
end
function PlantSimEngine.inputs_(::Model12_E1)
	NamedTuple()
end
function PlantSimEngine.inputs_(::Model13_E9)
	NamedTuple()
end
function PlantSimEngine.inputs_(::Model14_E4)
	(a4_14 = -Inf, )
end
function PlantSimEngine.inputs_(::Model15_E1)
	(a2_15 = -Inf, )
end
function PlantSimEngine.inputs_(::Model16_E4)
	(a9_16 = -Inf, )
end
function PlantSimEngine.inputs_(::Model17_E10)
	NamedTuple()
end
function PlantSimEngine.inputs_(::Model18_E1)
	NamedTuple()
end
function PlantSimEngine.inputs_(::Model19_E1)
	NamedTuple()
end
function PlantSimEngine.inputs_(::Model20_E7)
	(a19_20 = -Inf, )
end
function PlantSimEngine.inputs_(::Model21_E5)
	(a14_21 = -Inf, )
end
function PlantSimEngine.inputs_(::Model22_E11)
	(a4_22 = -Inf, )
end
function PlantSimEngine.inputs_(::Model23_E1)
	NamedTuple()
end

function PlantSimEngine.outputs_(::Model1_E1)
	(a1_2 = -Inf, a1_11 = -Inf, out1 = -Inf, )
end
function PlantSimEngine.outputs_(::Model2_E2)
	(a2_4 = -Inf, a2_15 = -Inf, out2 = -Inf, )
end
function PlantSimEngine.outputs_(::Model3_E3)
	(a3_10 = -Inf, out3 = -Inf, )
end
function PlantSimEngine.outputs_(::Model4_E2)
	(a4_8 = -Inf, a4_14 = -Inf, a4_22 = -Inf, out4 = -Inf, )
end
function PlantSimEngine.outputs_(::Model5_E1)
	(out5 = -Inf, )
end
function PlantSimEngine.outputs_(::Model6_E1)
	(a6_7 = -Inf, out6 = -Inf, )
end
function PlantSimEngine.outputs_(::Model7_E4)
	(out7 = -Inf, )
end
function PlantSimEngine.outputs_(::Model8_E5)
	(out8 = -Inf, )
end
function PlantSimEngine.outputs_(::Model9_E6)
	(a9_16 = -Inf, out9 = -Inf, )
end
function PlantSimEngine.outputs_(::Model10_E6)
	(out10 = -Inf, )
end
function PlantSimEngine.outputs_(::Model11_E7)
	(out11 = -Inf, )
end
function PlantSimEngine.outputs_(::Model12_E1)
	(out12 = -Inf, )
end
function PlantSimEngine.outputs_(::Model13_E9)
	(out13 = -Inf, )
end
function PlantSimEngine.outputs_(::Model14_E4)
	(a14_21 = -Inf, out14 = -Inf, )
end
function PlantSimEngine.outputs_(::Model15_E1)
	(out15 = -Inf, )
end
function PlantSimEngine.outputs_(::Model16_E4)
	(out16 = -Inf, )
end
function PlantSimEngine.outputs_(::Model17_E10)
	(out17 = -Inf, )
end
function PlantSimEngine.outputs_(::Model18_E1)
	(out18 = -Inf, )
end
function PlantSimEngine.outputs_(::Model19_E1)
	(a19_20 = -Inf, out19 = -Inf, )
end
function PlantSimEngine.outputs_(::Model20_E7)
	(out20 = -Inf, )
end
function PlantSimEngine.outputs_(::Model21_E5)
	(out21 = -Inf, )
end
function PlantSimEngine.outputs_(::Model22_E11)
	(out22 = -Inf, )
end
function PlantSimEngine.outputs_(::Model23_E1)
	(out23 = -Inf, )
end

PlantSimEngine.dep(::Model1_E1) = (p3=AbstractP3Model => ("E3",),)
function PlantSimEngine.run!(::Model1_E1, models, status, meteo, constants=nothing, sim_object=nothing)
	status_E3 = sim_object.statuses["E3"][1]
	run!(sim_object.models["E3"].p3, models, status_E3, meteo, constants, sim_object)
	status.a1_2 = 1.0+ status_E3.out3
	status.a1_11 = 1.0+ status_E3.out3
status.out1 = 1.0
end
function PlantSimEngine.run!(::Model2_E2, models, status, meteo, constants=nothing, sim_object=nothing)
	status.a2_4 = 1.0+ status.a1_2
	status.a2_15 = 1.0+ status.a1_2
status.out2 = 1.0
end
function PlantSimEngine.run!(::Model3_E3, models, status, meteo, constants=nothing, sim_object=nothing)
	status.a3_10 = 1.0
status.out3 = 1.0
end
PlantSimEngine.dep(::Model4_E2) = (p13=AbstractP13Model => ("E9",),)
function PlantSimEngine.run!(::Model4_E2, models, status, meteo, constants=nothing, sim_object=nothing)
	status_E9 = sim_object.statuses["E9"][1]
	run!(sim_object.models["E9"].p13, models, status_E9, meteo, constants, sim_object)
	status.a4_8 = 1.0+ status_E9.out13+ status.a2_4
	status.a4_14 = 1.0+ status_E9.out13+ status.a2_4
	status.a4_22 = 1.0+ status_E9.out13+ status.a2_4
status.out4 = 1.0
end
function PlantSimEngine.run!(::Model5_E1, models, status, meteo, constants=nothing, sim_object=nothing)
status.out5 = 1.0
end
function PlantSimEngine.run!(::Model6_E1, models, status, meteo, constants=nothing, sim_object=nothing)
	status.a6_7 = 1.0
status.out6 = 1.0
end
PlantSimEngine.dep(::Model7_E4) = (p9=AbstractP9Model => ("E6",),)
function PlantSimEngine.run!(::Model7_E4, models, status, meteo, constants=nothing, sim_object=nothing)
	status_E6 = sim_object.statuses["E6"][1]
	run!(sim_object.models["E6"].p9, models, status_E6, meteo, constants, sim_object)
status.out7 = 1.0
end
function PlantSimEngine.run!(::Model8_E5, models, status, meteo, constants=nothing, sim_object=nothing)
status.out8 = 1.0
end
PlantSimEngine.dep(::Model9_E6) = (p17=AbstractP17Model => ("E10",),)
function PlantSimEngine.run!(::Model9_E6, models, status, meteo, constants=nothing, sim_object=nothing)
	status_E10 = sim_object.statuses["E10"][1]
	run!(sim_object.models["E10"].p17, models, status_E10, meteo, constants, sim_object)
	status.a9_16 = 1.0+ status_E10.out17
status.out9 = 1.0
end
function PlantSimEngine.run!(::Model10_E6, models, status, meteo, constants=nothing, sim_object=nothing)
status.out10 = 1.0
end
function PlantSimEngine.run!(::Model11_E7, models, status, meteo, constants=nothing, sim_object=nothing)
status.out11 = 1.0
end
function PlantSimEngine.run!(::Model12_E1, models, status, meteo, constants=nothing, sim_object=nothing)
status.out12 = 1.0
end
function PlantSimEngine.run!(::Model13_E9, models, status, meteo, constants=nothing, sim_object=nothing)
status.out13 = 1.0
end
function PlantSimEngine.run!(::Model14_E4, models, status, meteo, constants=nothing, sim_object=nothing)
	status.a14_21 = 1.0+ status.a4_14
status.out14 = 1.0
end
function PlantSimEngine.run!(::Model15_E1, models, status, meteo, constants=nothing, sim_object=nothing)
status.out15 = 1.0
end
function PlantSimEngine.run!(::Model16_E4, models, status, meteo, constants=nothing, sim_object=nothing)
status.out16 = 1.0
end
function PlantSimEngine.run!(::Model17_E10, models, status, meteo, constants=nothing, sim_object=nothing)
status.out17 = 1.0
end
function PlantSimEngine.run!(::Model18_E1, models, status, meteo, constants=nothing, sim_object=nothing)
status.out18 = 1.0
end
function PlantSimEngine.run!(::Model19_E1, models, status, meteo, constants=nothing, sim_object=nothing)
	status.a19_20 = 1.0
status.out19 = 1.0
end
function PlantSimEngine.run!(::Model20_E7, models, status, meteo, constants=nothing, sim_object=nothing)
status.out20 = 1.0
end
function PlantSimEngine.run!(::Model21_E5, models, status, meteo, constants=nothing, sim_object=nothing)
status.out21 = 1.0
end
function PlantSimEngine.run!(::Model22_E11, models, status, meteo, constants=nothing, sim_object=nothing)
status.out22 = 1.0
end
function PlantSimEngine.run!(::Model23_E1, models, status, meteo, constants=nothing, sim_object=nothing)
status.out23 = 1.0
end

mapping = Dict( "E1" => (
Model1_E1(),
Model5_E1(),
Model6_E1(),
Model12_E1(),
MultiScaleModel(
model = Model15_E1(),
mapped_variables=[:a2_15 => "E2" => :a2_15,]
),
Model18_E1(),
Model19_E1(),
Model23_E1(),
Status(a1_2 = 1.0, a1_11 = 1.0, a6_7 = 1.0, a19_20 = 1.0, ),
),
"E2" => (
MultiScaleModel(
model = Model2_E2(),
mapped_variables=[:a1_2 => "E1" => :a1_2,]
),
Model4_E2(),
Status(a2_4 = 1.0, a2_15 = 1.0, a4_8 = 1.0, a4_14 = 1.0, a4_22 = 1.0, ),
),
"E3" => (
Model3_E3(),
Status(a3_10 = 1.0, ),
),
"E4" => (
MultiScaleModel(
model = Model7_E4(),
mapped_variables=[:a6_7 => "E1" => :a6_7,]
),
MultiScaleModel(
model = Model14_E4(),
mapped_variables=[:a4_14 => "E2" => :a4_14,]
),
MultiScaleModel(
model = Model16_E4(),
mapped_variables=[:a9_16 => "E6" => :a9_16,]
),
Status(a14_21 = 1.0, ),
),
"E5" => (
MultiScaleModel(
model = Model8_E5(),
mapped_variables=[:a4_8 => "E2" => :a4_8,]
),
MultiScaleModel(
model = Model21_E5(),
mapped_variables=[:a14_21 => "E4" => :a14_21,]
),
Status(),
),
"E6" => (
Model9_E6(),
MultiScaleModel(
model = Model10_E6(),
mapped_variables=[:a3_10 => "E3" => :a3_10,]
),
Status(a9_16 = 1.0, ),
),
"E7" => (
MultiScaleModel(
model = Model11_E7(),
mapped_variables=[:a1_11 => "E1" => :a1_11,]
),
MultiScaleModel(
model = Model20_E7(),
mapped_variables=[:a19_20 => "E1" => :a19_20,]
),
Status(),
),
"E8" => (
Status(),
),
"E9" => (
Model13_E9(),
Status(),
),
"E10" => (
Model17_E10(),
Status(),
),
"E11" => (
MultiScaleModel(
model = Model22_E11(),
mapped_variables=[:a4_22 => "E2" => :a4_22,]
),
Status(),
),
"E12" => (
Status(),
),
)

outs = Dict("E1" => (:out1,:out5,:out6,:out12,:out15,:out18,:out19,:out23,),
"E2" => (:out2,:out4,),
"E3" => (:out3,),
"E4" => (:out7,:out14,:out16,),
"E5" => (:out8,:out21,),
"E6" => (:out9,:out10,),
"E7" => (:out11,:out20,),
"E8" => (),
"E9" => (:out13,),
"E10" => (:out17,),
"E11" => (:out22,),
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
generated_test_1234_17_sim = generated_test_1234_17.run!(generated_test_1234_17.mtg, generated_test_1234_17.mapping, generated_test_1234_17.meteo, outputs = generated_test_1234_17.outs)