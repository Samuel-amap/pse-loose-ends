using PlantSimEngine

PlantSimEngine.@process "1" verbose = false
PlantSimEngine.@process "2" verbose = false
PlantSimEngine.@process "3" verbose = false
PlantSimEngine.@process "4" verbose = false
PlantSimEngine.@process "5" verbose = false
PlantSimEngine.@process "6" verbose = false
PlantSimEngine.@process "7" verbose = false
PlantSimEngine.@process "8" verbose = false
PlantSimEngine.@process "9" verbose = false
PlantSimEngine.@process "10" verbose = false

struct Model1_E1 <: Abstract1Model
 end

struct Model2_E2 <: Abstract2Model
 end

struct Model3_E2 <: Abstract3Model
 end

struct Model4_E3 <: Abstract4Model
 end

struct Model5_E4 <: Abstract5Model
 end

struct Model6_E5 <: Abstract6Model
 end

struct Model7_E6 <: Abstract7Model
 end

struct Model8_E1 <: Abstract8Model
 end

struct Model9_E7 <: Abstract9Model
 end

struct Model10_E4 <: Abstract10Model
 end


function PlantSimEngine.inputs_(::Model1_E1)
	NamedTuple()
end
function PlantSimEngine.inputs_(::Model2_E2)
	(a1_2 = -Inf, )
end
function PlantSimEngine.inputs_(::Model3_E2)
	NamedTuple()
end
function PlantSimEngine.inputs_(::Model4_E3)
	(a3_4 = -Inf, )
end
function PlantSimEngine.inputs_(::Model5_E4)
	(a3_5 = -Inf, )
end
function PlantSimEngine.inputs_(::Model6_E5)
	(a4_6 = -Inf, )
end
function PlantSimEngine.inputs_(::Model7_E6)
	(a4_7 = -Inf, )
end
function PlantSimEngine.inputs_(::Model8_E1)
	(a3_8 = -Inf, )
end
function PlantSimEngine.inputs_(::Model9_E7)
	(a8_9 = -Inf, )
end
function PlantSimEngine.inputs_(::Model10_E4)
	(a8_10 = -Inf, )
end

function PlantSimEngine.outputs_(::Model1_E1)
	(a1_2 = -Inf, out1 = -Inf, )
end
function PlantSimEngine.outputs_(::Model2_E2)
	(out2 = -Inf, )
end
function PlantSimEngine.outputs_(::Model3_E2)
	(a3_4 = -Inf, a3_5 = -Inf, a3_8 = -Inf, out3 = -Inf, )
end
function PlantSimEngine.outputs_(::Model4_E3)
	(a4_6 = -Inf, a4_7 = -Inf, out4 = -Inf, )
end
function PlantSimEngine.outputs_(::Model5_E4)
	(out5 = -Inf, )
end
function PlantSimEngine.outputs_(::Model6_E5)
	(out6 = -Inf, )
end
function PlantSimEngine.outputs_(::Model7_E6)
	(out7 = -Inf, )
end
function PlantSimEngine.outputs_(::Model8_E1)
	(a8_9 = -Inf, a8_10 = -Inf, out8 = -Inf, )
end
function PlantSimEngine.outputs_(::Model9_E7)
	(out9 = -Inf, )
end
function PlantSimEngine.outputs_(::Model10_E4)
	(out10 = -Inf, )
end

PlantSimEngine.dep(::Model1_E1) = (hard_dep_model3=Abstract3Model => ("E2",),)
function PlantSimEngine.run!(::Model1_E1, models, status, meteo, constants=nothing, sim_object=nothing)
	status_E2 = sim_object.statuses["E2"][1]
	run!(sim_object.models["E2"].hard_dep_model3, models, status_E2, meteo, constants, sim_object)
	status.a1_2 = 1.0+ status_E2.out3
	status.a1_3 = 1.0+ status_E2.out3
status.out1 = 1.0
end
function PlantSimEngine.run!(::Model2_E2, models, status, meteo, constants=nothing, sim_object=nothing)
status.out2 = 1.0
end
function PlantSimEngine.run!(::Model3_E2, models, status, meteo, constants=nothing, sim_object=nothing)
	status.a3_4 = 1.0+ status.a1_3
	status.a3_5 = 1.0+ status.a1_3
	status.a3_8 = 1.0+ status.a1_3
status.out3 = 1.0
end
function PlantSimEngine.run!(::Model4_E3, models, status, meteo, constants=nothing, sim_object=nothing)
	status.a4_6 = 1.0+ status.a3_4
	status.a4_7 = 1.0+ status.a3_4
status.out4 = 1.0
end
function PlantSimEngine.run!(::Model5_E4, models, status, meteo, constants=nothing, sim_object=nothing)
status.out5 = 1.0
end
function PlantSimEngine.run!(::Model6_E5, models, status, meteo, constants=nothing, sim_object=nothing)
status.out6 = 1.0
end
function PlantSimEngine.run!(::Model7_E6, models, status, meteo, constants=nothing, sim_object=nothing)
status.out7 = 1.0
end
function PlantSimEngine.run!(::Model8_E1, models, status, meteo, constants=nothing, sim_object=nothing)
	status.a8_9 = 1.0+ status.a3_8
	status.a8_10 = 1.0+ status.a3_8
status.out8 = 1.0
end
function PlantSimEngine.run!(::Model9_E7, models, status, meteo, constants=nothing, sim_object=nothing)
status.out9 = 1.0
end
function PlantSimEngine.run!(::Model10_E4, models, status, meteo, constants=nothing, sim_object=nothing)
status.out10 = 1.0
end

mapping = Dict( "E1" => (
Model1_E1(),
MultiScaleModel(
model = Model8_E1(),
mapped_variables=[:a3_8 => "E2" => :a3_8,]
),
Status(a1_2 = 1.0, a8_9 = 1.0, a8_10 = 1.0, ),
),
"E2" => (
MultiScaleModel(
model = Model2_E2(),
mapped_variables=[:a1_2 => "E1" => :a1_2,]
),
Model3_E2(),
Status(a3_4 = 1.0, a3_5 = 1.0, a3_8 = 1.0, ),
),
"E3" => (
MultiScaleModel(
model = Model4_E3(),
mapped_variables=[:a3_4 => "E2" => :a3_4,]
),
Status(a4_6 = 1.0, a4_7 = 1.0, ),
),
"E4" => (
MultiScaleModel(
model = Model5_E4(),
mapped_variables=[:a3_5 => "E2" => :a3_5,]
),
MultiScaleModel(
model = Model10_E4(),
mapped_variables=[:a8_10 => "E1" => :a8_10,]
),
Status(),
),
"E5" => (
MultiScaleModel(
model = Model6_E5(),
mapped_variables=[:a4_6 => "E3" => :a4_6,]
),
Status(),
),
"E6" => (
MultiScaleModel(
model = Model7_E6(),
mapped_variables=[:a4_7 => "E3" => :a4_7,]
),
Status(),
),
"E7" => (
MultiScaleModel(
model = Model9_E7(),
mapped_variables=[:a8_9 => "E1" => :a8_9,]
),
Status(),
),
)

outs = Dict("E1" => (:out1,:out8,),
"E2" => (:out2,:out3,),
"E3" => (:out4,),
"E4" => (:out5,:out10,),
"E5" => (:out6,),
"E6" => (:out7,),
"E7" => (:out9,),
)

meteo = Weather([
Atmosphere(T=25.0, Wind=1.0, Rh=0.6, Ri_PAR_f=200.0),
Atmosphere(T=10.0, Wind=0.5, Rh=0.6, Ri_PAR_f=200.0)
])

using MultiScaleTreeGraph

mtg = MultiScaleTreeGraph.Node(MultiScaleTreeGraph.NodeMTG("/", "E1", 0, 0),)

sim = run!(mtg, mapping, meteo, outputs = outs)



# generating code : 
# This is meant as a simple way to generate random graph configurations to (hopefully) detect edge-cases early
# It's meant as a simple first pass to get extra coverage and generate data, not a full-fledged property-based tester
# The output is intended to be used for tests (invariant-checking, making sure incorrect configurations are labelled as such)
# But could also be used for profiling, and iterating on traversal priority heuristics


#Have 50 processes/models ?

# select random process, select random model, give random scale
# select child, which has to have bigger number ?
# connect child to parent, random probability of being a hard dep
# ie have >= one output of parent be input of child if soft dep
    # and call from the parent the run! function of the child if hard dep
# and fix mapping ?

#todo find a way to reuse models/processes cleanly

# todo track stats
# todo mapping : prev_timestep, map to vector, handle mtg 

struct model_info
    model::Int
    process::Int
    scale::Int
    # is_hard_dep ::Bool # for easy querying when adding nodes ?
    # is_root

    parents::Vector{Int} # not necessary, but convenient for traversal and mutations
    children::Vector{Pair{Int, Bool}} # index into models array + is_hard_dep
end

# max number of allowed scales ? (nah, just put probability to 0 for single scale)
struct graph_generator_params
    number_models_used::Int
    # process something something, probability of reusing previous model if new scale ?
    probability_new_scale::Float64
    probability_new_child_is_hard_dep::Float64
    probability_new_child_is_root::Float64

    probability_extra_soft_dependencies::Float64
    soft_dependencies_max_parents_count::Int
end

mutable struct graph_generator_outputs
    final_scales_count
end

struct graph_generator
    params::graph_generator_params
    outputs::graph_generator_outputs
    models::Vector{model_info}
end

#todo randomly generate which variables are soft-dependencies
#todo generate a new seed based on predictable parameters

function generate_graph(g::graph_generator)
#    seed = number_to_determine
    # Create first root
    push!(g.models, model_info(1, 1, 1, Vector{Int}(), Vector{Pair{Int, Bool}}()))

    scale_count = 1
    new_model_scale = 1

    for i in 2:g.params.number_models_used

        if rand(Float64) > g.params.probability_new_scale
            new_model_scale = rand(1:scale_count)
        else
            #println("new_scale") #todo track that
            scale_count = scale_count + 1
            new_model_scale = scale_count
        end

        # add new model to graph
        # either it's a root, or it has a parent
        if rand(Float64) <= g.params.probability_new_child_is_root
            push!(g.models, model_info(1, 1, 1, Vector{Int}(), Vector{Pair{Int, Bool}}()))
        else
            parent = rand(1:i-1)        
            #todo process
            new_model = model_info(i, i, new_model_scale, Vector{Int}(), Vector{Pair{Int, Bool}}())
            push!(new_model.parents, parent)
            
            # if it has a parent, then it's either a soft or a hard dependency of that parent
            if rand(Float64) <= g.params.probability_new_child_is_hard_dep
                push!(g.models[parent].children, Pair(i, true))
            else
                push!(g.models[parent].children, Pair(i, false))

                if i > 3

                    # If soft dependency, give it a couple of extra soft dependencies
                    # This ad hoc way of doing things will create clunky DAGs, but as a first pass it's still interesting

                    if rand(Float64) < g.params.probability_extra_soft_dependencies
                        
                        # exclude parent
                        extra_parents_count = rand(0:g.params.soft_dependencies_max_parents_count - 1)

                        #println(extra_parents_count)
                        if extra_parents_count > i - 1
                            extra_parents_count = i - 1

                            # randomly select a potential parent and decrease count if it already has i as a child
                            # this reduces the average amount of parents
                            for j in 1:extra_parents_count
                                other_parent = rand(1:i-1)
                                if other_parent in new_model.parents
                                    #assert(other_parent in keys(new_model.parents))
                                else
                                    push!(g.models[other_parent].children, Pair(i, false))
                                    push!(new_model.parents, other_parent)
                                end
                            end
                        end
                    end
                end
            end
            push!(g.models, new_model)
        end
    end
    g.outputs.final_scales_count = scale_count
end

#todo
function generate_incorrect_mutation

end

function is_hard_dep_of(g, i, j)
    children_count = length(g.models[j].children)
    for ii in 1:children_count
        (index, is_hard_dep) = g.models[j].children[ii]

        if (index == i) && is_hard_dep
            return true
        end
    end
    return false
end

# TODO add the test run as a unique ID into the filename and the models ?
function generate_julia_file(g::graph_generator, f)
    #name, scale, dep

        write(f, "using PlantSimEngine\n\n")
        ii=0
        
        for ii = 1:g.params.number_models_used
            write(f, "PlantSimEngine.@process \"$(ii)\" verbose = false\n")
        end

        write(f, "\n")


        for ii = 1:g.params.number_models_used
            scale = g.models[ii].scale
            write(f, "struct Model$(ii)_E$scale <: Abstract$(ii)Model\n end\n\n")
        end
    
        write(f, "\n")

        for ii = 1:g.params.number_models_used
            scale = g.models[ii].scale

            write(f, "function PlantSimEngine.inputs_(::Model$(ii)_E$scale)\n")

            parent_count = length(g.models[ii].parents)
            # hard dependencies don't actually provide any inputs
            inputs_count = 0
            for kk = 1:parent_count
                if is_hard_dep_of(g, ii, kk)
                else
                    inputs_count = inputs_count + 1
                end
            end

            if parent_count == 0 || inputs_count == 0
                write(f, "\tNamedTuple()\nend\n")
                continue
            end
            
            write(f, "\t(")
            for kk = 1:parent_count
                if is_hard_dep_of(g, ii, kk)
                else
                    parent = g.models[ii].parents[kk]
                    write(f, "a$(parent)_$(ii) = -Inf, ")
                end
            end
            write(f, ")\nend\n")
        end

        write(f, "\n")

        for ii = 1:g.params.number_models_used
            scale = g.models[ii].scale

            write(f, "function PlantSimEngine.outputs_(::Model$(ii)_E$scale)\n")

            children_count = length(g.models[ii].children)
            if children_count == 0 
                #write(f, "\tNamedTuple()\nend\n")
            end
            
            write(f, "\t(")
            for kk = 1:children_count
                is_hard_dep = last(g.models[ii].children[kk])
                child = g.models[first(g.models[ii].children[kk])]
                if !is_hard_dep
                    write(f, "a$(ii)_$(child.model) = -Inf, ")
                end
            end
            write(f, "out$(ii) = -Inf, ")
            write(f, ")\nend\n")
        end

        write(f, "\n")
        
        for ii = 1:g.params.number_models_used
            scale = g.models[ii].scale

            for hh = 1:length(g.models[ii].children)
                (child_index, is_hard_dep) = g.models[ii].children[hh]
                if is_hard_dep 
                    child_scale = g.models[child_index].scale
                    if scale != child_scale
                        write(f, "PlantSimEngine.dep(::Model$(ii)_E$scale) = (hard_dep_model$(child_index)=Abstract$(child_index)Model => (\"E$(child_scale)\",),)\n")
                        # TODO multiple scales in the dependencies
                        #PlantSimEngine.dep(::Model$(ii)) = (hard_dep_model$(child_index)=Abstract$(child_index)Model => ("E2bis", "E2"),)
                    else
                        #PlantSimEngine.dep(::Process2Model) = (process1=AbstractProcess1Model,)
                        write(f, "PlantSimEngine.dep(::Model$(ii)_E$scale) = (hard_dep_model$(child_index)=Abstract$(child_index)Model,)\n")
                    end
                end
            end
 
            write(f, "function PlantSimEngine.run!(::Model$(ii)_E$scale, models, status, meteo, constants=nothing, sim_object=nothing)\n")

            input_string = "1.0"
            parent_count = length(g.models[ii].parents)
            children_count = length(g.models[ii].children)

            status_scale_variable_ready = [false for i in 1:g.outputs.final_scales_count]

            if children_count == 0
            else
                
                # Make use of hard dependencies' run functions and statuses
                for hh in 1:children_count
                    (child_index, is_hard_dep) = g.models[ii].children[hh]
                    if is_hard_dep 
                        child_scale = g.models[child_index].scale
                        if scale != child_scale
                            if !(status_scale_variable_ready[child_scale])                         
                                write(f, "\tstatus_E$(child_scale) = sim_object.statuses[\"E$(child_scale)\"][1]\n")
                                status_scale_variable_ready[child_scale] = true
                            end
                            write(f, "\trun!(sim_object.models[\"E$(child_scale)\"].hard_dep_model$(child_index), models, status_E$(child_scale), meteo, constants, sim_object)\n")
                        else
                            write(f, "\trun!(models.hard_dep_model$(child_index), models, status, meteo, constants, sim_object)\n")
                        end
                        # TODO could probably be made more complex
                        #input_string = input_string * "+ status_E$(child_scale).a$(ii)_$(hh)"
                        input_string = input_string * "+ status_E$(child_scale).out$(child_index)"
                    end
                end

                for jj in 1:parent_count
                    parent_index = g.models[ii].parents[jj]
                    input_string = input_string * "+ status.a$(parent_index)_$(ii)"
                end
            end

            children_count = length(g.models[ii].children)
            if children_count == 0 
            else           
                for kk = 1:children_count
                    is_hard_dep = last(g.models[ii].children[kk])
                    child = g.models[first(g.models[ii].children[kk])]
                    write(f, "\tstatus.a$(ii)_$(child.model) = " * input_string * "\n")
                end
            end
            write(f, "status.out$(ii) = 1.0\n")
            write(f, "end\n")
        end

        write(f, "\n")

        # write the mapping : 
        # for every scale, find models at that scale, check which of its soft dependency parents are at a different scale
        # then create a status that initialises input variables for the models in that scale
        write(f, "mapping = Dict( ")
        #write(f,  "mapping = Dict( \"E$(ii)\" => (")
        for ss in 1:g.outputs.final_scales_count

            write(f,  "\"E$(ss)\" => (\n")
            for ii = 1:g.params.number_models_used
                scale = g.models[ii].scale
                
                is_multiscale = false
                parent_count = length(g.models[ii].parents)
                
                if scale == ss
                    
                    for jj in 1:parent_count
                        parent_index = g.models[ii].parents[jj]
                        if g.models[parent_index].scale != scale && !(is_hard_dep_of(g, ii, jj))
                            is_multiscale = true
                            break
                        end
                    end

                    if is_multiscale
                        write(f, "MultiScaleModel(\n")
                        write(f, "model = Model$(ii)_E$scale(),\n")
                        write(f, "mapped_variables = [")
                        for jj in 1:parent_count
                            parent_index = g.models[ii].parents[jj]
                            parent_scale = g.models[parent_index].scale
                            if parent_scale != scale
                                write(f, ":a$(parent_index)_$(ii) => \"E$(parent_scale)\" => :a$(parent_index)_$(ii),")
                            end
                        end
                        write(f, "]\n),\n")
                    else
                        write(f, "Model$(ii)_E$scale(),\n")
                    end
                end
            end

            write(f, "Status(")
            for ii = 1:g.params.number_models_used
                
                if g.models[ii].scale == ss
                    for jj in 1:length(g.models[ii].children)
                        (child_index, is_hard_dep) = g.models[ii].children[jj]
                        if !is_hard_dep
                            write(f, "a$(ii)_$(child_index) = 1.0, ")            
                        end
                    end
                end
            end
            write(f, "),\n")
            write(f, "),\n") 
        end
               
        write(f, ")\n")
        write(f, "\n")
        
        write(f, "outs = Dict(")
        for ss in 1:g.outputs.final_scales_count
            write(f, "\"E$(ss)\" => (")
            for mm in 1:length(g.models)
                if g.models[mm].scale == ss
                   write(f, ":out$(mm),")
                end
            end
            write(f, "),\n")
        end
        write(f, ")\n\n")

        write(f, "meteo = Weather([\n")
        write(f, "Atmosphere(T=25.0, Wind=1.0, Rh=0.6, Ri_PAR_f=200.0),\n")
        write(f, "Atmosphere(T=10.0, Wind=0.5, Rh=0.6, Ri_PAR_f=200.0)\n")
        write(f, "])\n")
        write(f, "\n")

        write(f, "using MultiScaleTreeGraph\n")
        write(f, "\n")
        write(f, "mtg = MultiScaleTreeGraph.Node(MultiScaleTreeGraph.NodeMTG(\"/\", \"E1\", 0, 0),)\n")
        write(f, "\n")
        #Node(mtg, MultiScaleTreeGraph.NodeMTG("/", "E3", 0, 1))        
        write(f, "sim = run!(mtg, mapping, meteo, outputs = outs)\n")
        write(f, "\n")
    #=        
        PlantSimEngine.dep(::HardScaleEchelle2Model) = (hard_scale_echelle3=AbstractHard_Scale_Echelle3Model => ("E3",),)
        
        function PlantSimEngine.run!(::HardScaleEchelle2Model, models, status, meteo, constants=nothing, sim_object=nothing)
            run!(sim_object.models["E3"].hard_scale_echelle3, models, status, meteo, constants)
            status.e2 = status.e3
        end =#
end

#function generate_jl(g::graph_generator)
#    @generate_julia_file(g)
#end

function run_test_on_generated_graph(g::graph_generator)

end

#=
function PlantSimEngine.inputs_(::SingleModelScale1)
    (in = -Inf, in1 = -Inf)
end
function PlantSimEngine.outputs_(::SingleModelScale1)
    (out = -Inf, out1 = -Inf)
end

#PlantSimEngine.dep(::SingleModelScale1) = (single_model_multiple_scales=AbstractSingle_Model_Multiple_ScalesModel => ("E2bis", "E2"),)

function PlantSimEngine.run!(::SingleModelScale1, models, status, meteo, constants=nothing, sim_object=nothing)
 
#if not hard dep
# status_E2 = status
# else
#   status_E2 = sim_object.statuses["E2"][1]
#   status_E2b = sim_object.statuses["E2bis"][1]
#   run!(sim_object.models["E2"].single_model_multiple_scales, models, status_E2, meteo, constants)
#   run!(sim_object.models["E2bis"].single_model_multiple_scales, models, status_E2b, meteo, constants)
    status.out = status_E2.out+ status_E2b.out + status.in
    status.out1 = status_E2.out2 + status_E2b.out2bis + status.out1
end
=#

#=
outs = Dict(
    "E1" => (:out, :out1),
    "E2" => (:out, :out2),
    "E2bis" => (:out,), # comment this line out to expose the issue in #103
    "E3" => (:out3,)
    )

#to_initialize(mapping)

=#
using Random
Random.seed!(1234)
for i in 1:5
    throwaway = rand(Float64)
end


number_models_used = 10
probability_new_scale = 0.5
probability_new_child_is_hard_dep = 0.2
probability_new_child_is_root = 0.2
probability_extra_soft_dependencies = 3
soft_dependencies_max_parents_count = 5

g_params = graph_generator_params(
    number_models_used, 
    probability_new_scale,
    probability_new_child_is_hard_dep,
    probability_new_child_is_root,
    probability_extra_soft_dependencies,
    soft_dependencies_max_parents_count
)

g_outputs = graph_generator_outputs(0)

g = graph_generator(g_params, g_outputs, Vector{model_info}())
generate_graph(g)
g
open( "generated_tests/test_random_graph.jl", "w") do f
generate_julia_file(g, f)
close(f)
end
#@generate_julia_file(g)

include("generated_tests/test_random_graph.jl")