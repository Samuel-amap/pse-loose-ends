module generated_test_1234_5
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
PlantSimEngine.@process "p24" verbose = false
PlantSimEngine.@process "p25" verbose = false
PlantSimEngine.@process "p26" verbose = false
PlantSimEngine.@process "p27" verbose = false
PlantSimEngine.@process "p28" verbose = false
PlantSimEngine.@process "p29" verbose = false
PlantSimEngine.@process "p30" verbose = false

struct Model1_E1 <: AbstractP1Model
 end

struct Model2_E1 <: AbstractP2Model
 end

struct Model3_E1 <: AbstractP3Model
 end

struct Model4_E1 <: AbstractP4Model
 end

struct Model5_E4 <: AbstractP5Model
 end

struct Model6_E4 <: AbstractP6Model
 end

struct Model7_E5 <: AbstractP7Model
 end

struct Model8_E1 <: AbstractP8Model
 end

struct Model9_E6 <: AbstractP9Model
 end

struct Model10_E7 <: AbstractP10Model
 end

struct Model11_E8 <: AbstractP11Model
 end

struct Model12_E1 <: AbstractP12Model
 end

struct Model13_E7 <: AbstractP13Model
 end

struct Model14_E1 <: AbstractP14Model
 end

struct Model15_E11 <: AbstractP15Model
 end

struct Model16_E12 <: AbstractP16Model
 end

struct Model17_E13 <: AbstractP17Model
 end

struct Model18_E4 <: AbstractP18Model
 end

struct Model19_E8 <: AbstractP19Model
 end

struct Model20_E1 <: AbstractP20Model
 end

struct Model21_E13 <: AbstractP21Model
 end

struct Model22_E1 <: AbstractP22Model
 end

struct Model23_E12 <: AbstractP23Model
 end

struct Model24_E14 <: AbstractP24Model
 end

struct Model25_E6 <: AbstractP25Model
 end

struct Model26_E15 <: AbstractP26Model
 end

struct Model27_E7 <: AbstractP27Model
 end

struct Model28_E6 <: AbstractP28Model
 end

struct Model29_E15 <: AbstractP29Model
 end

struct Model30_E1 <: AbstractP30Model
 end


function PlantSimEngine.inputs_(::Model1_E1)
	NamedTuple()
end
function PlantSimEngine.inputs_(::Model2_E1)
	NamedTuple()
end
function PlantSimEngine.inputs_(::Model3_E1)
	NamedTuple()
end
function PlantSimEngine.inputs_(::Model4_E1)
	NamedTuple()
end
function PlantSimEngine.inputs_(::Model5_E4)
	(a2_5 = -Inf, )
end
function PlantSimEngine.inputs_(::Model6_E4)
	(a5_6 = -Inf, )
end
function PlantSimEngine.inputs_(::Model7_E5)
	(a3_7 = -Inf, )
end
function PlantSimEngine.inputs_(::Model8_E1)
	(a6_8 = -Inf, )
end
function PlantSimEngine.inputs_(::Model9_E6)
	(a2_9 = -Inf, )
end
function PlantSimEngine.inputs_(::Model10_E7)
	(a2_10 = -Inf, )
end
function PlantSimEngine.inputs_(::Model11_E8)
	NamedTuple()
end
function PlantSimEngine.inputs_(::Model12_E1)
	NamedTuple()
end
function PlantSimEngine.inputs_(::Model13_E7)
	(a5_13 = -Inf, )
end
function PlantSimEngine.inputs_(::Model14_E1)
	NamedTuple()
end
function PlantSimEngine.inputs_(::Model15_E11)
	(a7_15 = -Inf, )
end
function PlantSimEngine.inputs_(::Model16_E12)
	(a15_16 = -Inf, )
end
function PlantSimEngine.inputs_(::Model17_E13)
	(a7_17 = -Inf, )
end
function PlantSimEngine.inputs_(::Model18_E4)
	(a16_18 = -Inf, )
end
function PlantSimEngine.inputs_(::Model19_E8)
	NamedTuple()
end
function PlantSimEngine.inputs_(::Model20_E1)
	NamedTuple()
end
function PlantSimEngine.inputs_(::Model21_E13)
	(a10_21 = -Inf, )
end
function PlantSimEngine.inputs_(::Model22_E1)
	NamedTuple()
end
function PlantSimEngine.inputs_(::Model23_E12)
	(a6_23 = -Inf, )
end
function PlantSimEngine.inputs_(::Model24_E14)
	(a1_24 = -Inf, )
end
function PlantSimEngine.inputs_(::Model25_E6)
	(a7_25 = -Inf, )
end
function PlantSimEngine.inputs_(::Model26_E15)
	(a9_26 = -Inf, )
end
function PlantSimEngine.inputs_(::Model27_E7)
	(a17_27 = -Inf, )
end
function PlantSimEngine.inputs_(::Model28_E6)
	(a18_28 = -Inf, )
end
function PlantSimEngine.inputs_(::Model29_E15)
	(a14_29 = -Inf, )
end
function PlantSimEngine.inputs_(::Model30_E1)
	NamedTuple()
end

function PlantSimEngine.outputs_(::Model1_E1)
	(a1_24 = -Inf, out1 = -Inf, )
end
function PlantSimEngine.outputs_(::Model2_E1)
	(a2_5 = -Inf, a2_9 = -Inf, a2_10 = -Inf, out2 = -Inf, )
end
function PlantSimEngine.outputs_(::Model3_E1)
	(a3_7 = -Inf, out3 = -Inf, )
end
function PlantSimEngine.outputs_(::Model4_E1)
	(out4 = -Inf, )
end
function PlantSimEngine.outputs_(::Model5_E4)
	(a5_6 = -Inf, a5_13 = -Inf, out5 = -Inf, )
end
function PlantSimEngine.outputs_(::Model6_E4)
	(a6_8 = -Inf, a6_23 = -Inf, out6 = -Inf, )
end
function PlantSimEngine.outputs_(::Model7_E5)
	(a7_15 = -Inf, a7_17 = -Inf, a7_25 = -Inf, out7 = -Inf, )
end
function PlantSimEngine.outputs_(::Model8_E1)
	(out8 = -Inf, )
end
function PlantSimEngine.outputs_(::Model9_E6)
	(a9_26 = -Inf, out9 = -Inf, )
end
function PlantSimEngine.outputs_(::Model10_E7)
	(a10_21 = -Inf, out10 = -Inf, )
end
function PlantSimEngine.outputs_(::Model11_E8)
	(out11 = -Inf, )
end
function PlantSimEngine.outputs_(::Model12_E1)
	(out12 = -Inf, )
end
function PlantSimEngine.outputs_(::Model13_E7)
	(out13 = -Inf, )
end
function PlantSimEngine.outputs_(::Model14_E1)
	(a14_29 = -Inf, out14 = -Inf, )
end
function PlantSimEngine.outputs_(::Model15_E11)
	(a15_16 = -Inf, out15 = -Inf, )
end
function PlantSimEngine.outputs_(::Model16_E12)
	(a16_18 = -Inf, out16 = -Inf, )
end
function PlantSimEngine.outputs_(::Model17_E13)
	(a17_27 = -Inf, out17 = -Inf, )
end
function PlantSimEngine.outputs_(::Model18_E4)
	(a18_28 = -Inf, out18 = -Inf, )
end
function PlantSimEngine.outputs_(::Model19_E8)
	(out19 = -Inf, )
end
function PlantSimEngine.outputs_(::Model20_E1)
	(out20 = -Inf, )
end
function PlantSimEngine.outputs_(::Model21_E13)
	(out21 = -Inf, )
end
function PlantSimEngine.outputs_(::Model22_E1)
	(out22 = -Inf, )
end
function PlantSimEngine.outputs_(::Model23_E12)
	(out23 = -Inf, )
end
function PlantSimEngine.outputs_(::Model24_E14)
	(out24 = -Inf, )
end
function PlantSimEngine.outputs_(::Model25_E6)
	(out25 = -Inf, )
end
function PlantSimEngine.outputs_(::Model26_E15)
	(out26 = -Inf, )
end
function PlantSimEngine.outputs_(::Model27_E7)
	(out27 = -Inf, )
end
function PlantSimEngine.outputs_(::Model28_E6)
	(out28 = -Inf, )
end
function PlantSimEngine.outputs_(::Model29_E15)
	(out29 = -Inf, )
end
function PlantSimEngine.outputs_(::Model30_E1)
	(out30 = -Inf, )
end

PlantSimEngine.dep(::Model1_E1) = (p4=AbstractP4Model,)
function PlantSimEngine.run!(::Model1_E1, models, status, meteo, constants=nothing, sim_object=nothing)
	run!(models.p4, models, status, meteo, constants, sim_object)
	status.a1_24 = 1.0+ status.out4
status.out1 = 1.0
end
function PlantSimEngine.run!(::Model2_E1, models, status, meteo, constants=nothing, sim_object=nothing)
	status.a2_5 = 1.0
	status.a2_9 = 1.0
	status.a2_10 = 1.0
status.out2 = 1.0
end
function PlantSimEngine.run!(::Model3_E1, models, status, meteo, constants=nothing, sim_object=nothing)
	status.a3_7 = 1.0
status.out3 = 1.0
end
function PlantSimEngine.run!(::Model4_E1, models, status, meteo, constants=nothing, sim_object=nothing)
status.out4 = 1.0
end
function PlantSimEngine.run!(::Model5_E4, models, status, meteo, constants=nothing, sim_object=nothing)
	status.a5_6 = 1.0+ status.a2_5
	status.a5_13 = 1.0+ status.a2_5
status.out5 = 1.0
end
PlantSimEngine.dep(::Model6_E4) = (p11=AbstractP11Model => ("E8",),)
function PlantSimEngine.run!(::Model6_E4, models, status, meteo, constants=nothing, sim_object=nothing)
	status_E8 = sim_object.statuses["E8"][1]
	run!(sim_object.models["E8"].p11, models, status_E8, meteo, constants, sim_object)
	status.a6_8 = 1.0+ status_E8.out11+ status.a5_6
	status.a6_23 = 1.0+ status_E8.out11+ status.a5_6
status.out6 = 1.0
end
function PlantSimEngine.run!(::Model7_E5, models, status, meteo, constants=nothing, sim_object=nothing)
	status.a7_15 = 1.0+ status.a3_7
	status.a7_17 = 1.0+ status.a3_7
	status.a7_25 = 1.0+ status.a3_7
status.out7 = 1.0
end
function PlantSimEngine.run!(::Model8_E1, models, status, meteo, constants=nothing, sim_object=nothing)
status.out8 = 1.0
end
function PlantSimEngine.run!(::Model9_E6, models, status, meteo, constants=nothing, sim_object=nothing)
	status.a9_26 = 1.0+ status.a2_9
status.out9 = 1.0
end
function PlantSimEngine.run!(::Model10_E7, models, status, meteo, constants=nothing, sim_object=nothing)
	status.a10_21 = 1.0+ status.a2_10
status.out10 = 1.0
end
function PlantSimEngine.run!(::Model11_E8, models, status, meteo, constants=nothing, sim_object=nothing)
status.out11 = 1.0
end
function PlantSimEngine.run!(::Model12_E1, models, status, meteo, constants=nothing, sim_object=nothing)
status.out12 = 1.0
end
function PlantSimEngine.run!(::Model13_E7, models, status, meteo, constants=nothing, sim_object=nothing)
status.out13 = 1.0
end
PlantSimEngine.dep(::Model14_E1) = (p19=AbstractP19Model => ("E8",),)
function PlantSimEngine.run!(::Model14_E1, models, status, meteo, constants=nothing, sim_object=nothing)
	status_E8 = sim_object.statuses["E8"][1]
	run!(sim_object.models["E8"].p19, models, status_E8, meteo, constants, sim_object)
	status.a14_29 = 1.0+ status_E8.out19
status.out14 = 1.0
end
function PlantSimEngine.run!(::Model15_E11, models, status, meteo, constants=nothing, sim_object=nothing)
	status.a15_16 = 1.0+ status.a7_15
status.out15 = 1.0
end
function PlantSimEngine.run!(::Model16_E12, models, status, meteo, constants=nothing, sim_object=nothing)
	status.a16_18 = 1.0+ status.a15_16
status.out16 = 1.0
end
function PlantSimEngine.run!(::Model17_E13, models, status, meteo, constants=nothing, sim_object=nothing)
	status.a17_27 = 1.0+ status.a7_17
status.out17 = 1.0
end
function PlantSimEngine.run!(::Model18_E4, models, status, meteo, constants=nothing, sim_object=nothing)
	status.a18_28 = 1.0+ status.a16_18
status.out18 = 1.0
end
function PlantSimEngine.run!(::Model19_E8, models, status, meteo, constants=nothing, sim_object=nothing)
status.out19 = 1.0
end
function PlantSimEngine.run!(::Model20_E1, models, status, meteo, constants=nothing, sim_object=nothing)
status.out20 = 1.0
end
function PlantSimEngine.run!(::Model21_E13, models, status, meteo, constants=nothing, sim_object=nothing)
status.out21 = 1.0
end
function PlantSimEngine.run!(::Model22_E1, models, status, meteo, constants=nothing, sim_object=nothing)
status.out22 = 1.0
end
function PlantSimEngine.run!(::Model23_E12, models, status, meteo, constants=nothing, sim_object=nothing)
status.out23 = 1.0
end
function PlantSimEngine.run!(::Model24_E14, models, status, meteo, constants=nothing, sim_object=nothing)
status.out24 = 1.0
end
function PlantSimEngine.run!(::Model25_E6, models, status, meteo, constants=nothing, sim_object=nothing)
status.out25 = 1.0
end
function PlantSimEngine.run!(::Model26_E15, models, status, meteo, constants=nothing, sim_object=nothing)
status.out26 = 1.0
end
function PlantSimEngine.run!(::Model27_E7, models, status, meteo, constants=nothing, sim_object=nothing)
status.out27 = 1.0
end
function PlantSimEngine.run!(::Model28_E6, models, status, meteo, constants=nothing, sim_object=nothing)
status.out28 = 1.0
end
function PlantSimEngine.run!(::Model29_E15, models, status, meteo, constants=nothing, sim_object=nothing)
status.out29 = 1.0
end
function PlantSimEngine.run!(::Model30_E1, models, status, meteo, constants=nothing, sim_object=nothing)
status.out30 = 1.0
end

mapping = Dict( "E1" => (
Model1_E1(),
Model2_E1(),
Model3_E1(),
Model4_E1(),
MultiScaleModel(
model = Model8_E1(),
mapped_variables=[:a6_8 => "E4" => :a6_8,]
),
Model12_E1(),
Model14_E1(),
Model20_E1(),
Model22_E1(),
Model30_E1(),
Status(a1_24 = 1.0, a2_5 = 1.0, a2_9 = 1.0, a2_10 = 1.0, a3_7 = 1.0, a14_29 = 1.0, ),
),
"E2" => (
Status(),
),
"E3" => (
Status(),
),
"E4" => (
MultiScaleModel(
model = Model5_E4(),
mapped_variables=[:a2_5 => "E1" => :a2_5,]
),
Model6_E4(),
MultiScaleModel(
model = Model18_E4(),
mapped_variables=[:a16_18 => "E12" => :a16_18,]
),
Status(a5_6 = 1.0, a5_13 = 1.0, a6_8 = 1.0, a6_23 = 1.0, a18_28 = 1.0, ),
),
"E5" => (
MultiScaleModel(
model = Model7_E5(),
mapped_variables=[:a3_7 => "E1" => :a3_7,]
),
Status(a7_15 = 1.0, a7_17 = 1.0, a7_25 = 1.0, ),
),
"E6" => (
MultiScaleModel(
model = Model9_E6(),
mapped_variables=[:a2_9 => "E1" => :a2_9,]
),
MultiScaleModel(
model = Model25_E6(),
mapped_variables=[:a7_25 => "E5" => :a7_25,]
),
MultiScaleModel(
model = Model28_E6(),
mapped_variables=[:a18_28 => "E4" => :a18_28,]
),
Status(a9_26 = 1.0, ),
),
"E7" => (
MultiScaleModel(
model = Model10_E7(),
mapped_variables=[:a2_10 => "E1" => :a2_10,]
),
MultiScaleModel(
model = Model13_E7(),
mapped_variables=[:a5_13 => "E4" => :a5_13,]
),
MultiScaleModel(
model = Model27_E7(),
mapped_variables=[:a17_27 => "E13" => :a17_27,]
),
Status(a10_21 = 1.0, ),
),
"E8" => (
Model11_E8(),
Model19_E8(),
Status(),
),
"E9" => (
Status(),
),
"E10" => (
Status(),
),
"E11" => (
MultiScaleModel(
model = Model15_E11(),
mapped_variables=[:a7_15 => "E5" => :a7_15,]
),
Status(a15_16 = 1.0, ),
),
"E12" => (
MultiScaleModel(
model = Model16_E12(),
mapped_variables=[:a15_16 => "E11" => :a15_16,]
),
MultiScaleModel(
model = Model23_E12(),
mapped_variables=[:a6_23 => "E4" => :a6_23,]
),
Status(a16_18 = 1.0, ),
),
"E13" => (
MultiScaleModel(
model = Model17_E13(),
mapped_variables=[:a7_17 => "E5" => :a7_17,]
),
MultiScaleModel(
model = Model21_E13(),
mapped_variables=[:a10_21 => "E7" => :a10_21,]
),
Status(a17_27 = 1.0, ),
),
"E14" => (
MultiScaleModel(
model = Model24_E14(),
mapped_variables=[:a1_24 => "E1" => :a1_24,]
),
Status(),
),
"E15" => (
MultiScaleModel(
model = Model26_E15(),
mapped_variables=[:a9_26 => "E6" => :a9_26,]
),
MultiScaleModel(
model = Model29_E15(),
mapped_variables=[:a14_29 => "E1" => :a14_29,]
),
Status(),
),
"E16" => (
Status(),
),
)

outs = Dict("E1" => (:out1,:out2,:out3,:out4,:out8,:out12,:out14,:out20,:out22,:out30,),
"E2" => (),
"E3" => (),
"E4" => (:out5,:out6,:out18,),
"E5" => (:out7,),
"E6" => (:out9,:out25,:out28,),
"E7" => (:out10,:out13,:out27,),
"E8" => (:out11,:out19,),
"E9" => (),
"E10" => (),
"E11" => (:out15,),
"E12" => (:out16,:out23,),
"E13" => (:out17,:out21,),
"E14" => (:out24,),
"E15" => (:out26,:out29,),
"E16" => (),
)

meteo = Weather([
Atmosphere(T=25.0, Wind=1.0, Rh=0.6, Ri_PAR_f=200.0),
Atmosphere(T=10.0, Wind=0.5, Rh=0.6, Ri_PAR_f=200.0)
])

using MultiScaleTreeGraph

mtg = MultiScaleTreeGraph.Node(MultiScaleTreeGraph.NodeMTG("/", "E1", 0, 0),)

sim = run!(mtg, mapping, meteo, outputs = outs)

end
generated_test_1234_5_sim = generated_test_1234_5.run!(generated_test_1234_5.mtg, generated_test_1234_5.mapping, generated_test_1234_5.meteo, outputs = generated_test_1234_5.outs)