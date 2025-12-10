using Pkg
Pkg.activate("../julia_test")
Pkg.develop("PlantSimEngine")
using PlantSimEngine
using MultiScaleTreeGraph

Pkg.add("GraphMakie")
Pkg.add("GLMakie")
using GLMakie
using GraphMakie
using GraphMakie.NetworkLayout
#Pkg.add("Graphs")
using GraphMakie.Graphs
Pkg.add("CairoMakie")
using CairoMakie
using PlantSimEngine.Examples

GLMakie.activate(inline=false)

f = Figure()
ax = Axis(f[1, 1], xlabel = "x label", ylabel = "y label",
    title = "Title")
lineobject = lines!(ax, 0..10, sin, color = :red)
f

g = SimpleGraph(10)

f, ax, p = GraphMakie.graphplot(g)
hidedecorations!(ax); hidespines!(ax)
ax.aspect = DataAspect()

Pkg.develop("PlantBiophysics")
using PlantBiophysics

Pkg.add("LayeredLayouts")
using LayeredLayouts

#=models = ModelList(
    Monteith(),  
    photosynthesis = Fvcb(),     
    stomatal_conductance = Medlyn(0.03, 12.0),)=#

models = ModelList(
        process1=Process1Model(1.0),
        process2=Process2Model(),
        process3=Process3Model(),
        process4=Process4Model(),
        process5=Process5Model(),
        process6=Process6Model(),
        # process7=Process7Model(),
        # status=(var1=15.0, var2=0.3)
    )



mapping = Dict(
        "Plant" => (
            MultiScaleModel(
                model=ToyCAllocationModel(),
                mapped_variables=[
                    # inputs
                    :carbon_assimilation => ["Leaf"],
                    :carbon_demand => ["Leaf", "Internode"],
                    # outputs
                    :carbon_allocation => ["Leaf", "Internode"]
                ],
            ),
            MultiScaleModel(
                model=ToyPlantRmModel(),
                mapped_variables=[:Rm_organs => ["Leaf" => :Rm, "Internode" => :Rm],],
            ),
        ),
        "Internode" => (
            ToyCDemandModel(optimal_biomass=10.0, development_duration=200.0),
            ToyMaintenanceRespirationModel(1.5, 0.06, 25.0, 0.6, 0.004),
            Status(TT=10.0)
        ),
        "Leaf" => (
            MultiScaleModel(
                model=ToyAssimModel(),
                mapped_variables=[:soil_water_content => "Soil",],
                # Notice we provide "Soil", not ["Soil"], so a single value is expected here
            ),
            ToyCDemandModel(optimal_biomass=10.0, development_duration=200.0),
            ToyMaintenanceRespirationModel(2.1, 0.06, 25.0, 1.0, 0.025),
            Status(aPPFD=1300.0, TT=10.0),
        ),
        "Soil" => (
            ToySoilWaterModel(),
        ),
    )    

Pkg.add("CSV")
using CSV
include("../PlantSimEngine/examples/ToyMultiScalePlantTutorial/ToyPlantSimulation3.jl")


function graph_from_modellist(m)
    gd = DiGraph()

    dependency_graph = dep(m)
    parsed_models = Vector{AbstractModel}()
    roots = collect(dependency_graph.roots)

    queue = Vector{PlantSimEngine.AbstractDependencyNode}()
    index = 1
    index_dict = Dict{PlantSimEngine.AbstractDependencyNode, Int}()
    symbol_vec = Vector{Symbol}()
    edge_labels_vec = Vector{String}()
    edge_count = 0
    for root in roots
        push!(queue, root.second)
        push!(symbol_vec, root.second.process)
        index_dict[root.second] = index
        println("Index: ", index," ", symbol_vec[index])

        index += 1
        add_vertex!(gd)

    end
        
    while (!isempty(queue))
        #println(queue)
        process = pop!(queue)
        process_index = index_dict[process]
        for i in 1:length(process.children)
            child = process.children[i]
            if haskey(index_dict, child)
                continue
            else
                push!(queue, process.children[i])
                push!(symbol_vec, process.children[i].process)
                child_index = index
                index_dict[child] = child_index
                println("Index: ", child_index," ", symbol_vec[child_index])
                index += 1
                add_vertex!(gd)                
            end
        end
        if isa(process, PlantSimEngine.HardDependencyNode)
            println("Index hard dep: ", child_index)
        else
            if isnothing(process.parent)
                continue
            end

            for j in 1:length(process.parent)
                add_edge!(gd, index_dict[process.parent[j]], process_index)
                #println("Count : ",edge_count)
                #edge_count += 1

                parent_outputs = keys(process.parent[j].outputs)
                model_inputs = keys(process.inputs)
                coupled_variables = intersect(parent_outputs, model_inputs)
                label = string(coupled_variables...)
                push!(edge_labels_vec, label)
                #println("Count : ",edge_count)
                println("Index parent: ", index_dict[process.parent[j]], " ", symbol_vec[index_dict[process.parent[j]]])
            end

        end
    end
    return gd, index_dict, edge_labels_vec
end



function graph_from_mapping(m)
        gd = DiGraph()
    
        dependency_graph = dep(m)
        parsed_models = Vector{AbstractModel}()
        roots = collect(dependency_graph.roots)
    
        queue = Vector{PlantSimEngine.AbstractDependencyNode}()
        model_stack = Vector{PlantSimEngine.AbstractDependencyNode}()
        index = 1
        index_dict = Dict{PlantSimEngine.AbstractDependencyNode, Int}()
        symbol_vec = Vector{Symbol}()
        #edge_labels_vec = Vector{String}()
        edge_labels_dict = Vector{Pair{Pair{Int, Int}, String}}() # ... Graphs doesn't seem to store edges in the order inserted, nor provide an easy correspondence
        edge_count = 0
        for root in roots
            push!(queue, root.second)
            push!(model_stack, root.second)
            push!(symbol_vec, root.second.process)
            index_dict[root.second] = index
            println("Index: ", index," ", symbol_vec[index])
    
            index += 1
            add_vertex!(gd)
    
        end
        
        while (!isempty(queue))
            process = pop!(queue)
            for i in 1:length(process.children)
                child = process.children[i]
                if haskey(index_dict, child)
                    continue
                else
                    push!(queue, process.children[i])
                    push!(model_stack, process.children[i])
                    push!(symbol_vec, process.children[i].process)
                    child_index = index
                    index_dict[child] = child_index
                    println("Index: ", child_index," ", symbol_vec[child_index])
                    index += 1
                    add_vertex!(gd)
                end
            end
        end

        for process in model_stack
            #println(queue)
            process_index = index_dict[process]
            #println("Process : ", process, " ", process_index)
            if 1==0 #isa(process, PlantSimEngine.HardDependencyNode)
                #println("Index hard dep: ", child_index)
            else
                if isnothing(process.parent)
                    continue
                end
    
                for j in 1:length(process.parent)
                    parent = process.parent[j]
                    
                    println("Child : ", process_index, ", Parent : " , parent, " ", index_dict[parent])
                    add_edge!(gd, index_dict[parent], process_index)
                    #push!(edge_vec, Pair(index_dict[process.parent[j]], process_index))

                    #println("Count : ",edge_count)
                    #edge_count += 1
    
                    parent_outputs = keys.(last.(parent.outputs))[1]
                    model_inputs = keys.(last.(process.inputs))[1]
                #    println("Parent outputs : ", parent_outputs)
                #    println("Model inputs : ", model_inputs)
                    coupled_variables = intersect(parent_outputs, model_inputs)
                #    println("Coupled variables : ", coupled_variables)
                    println()

                    label = string(coupled_variables...)
                    #push!(edge_labels_vec, label)
                    #edge_labels_dict[Pair(index_dict[parent], process_index)] = label
                    push!(edge_labels_dict, Pair(Pair(index_dict[parent], process_index), label))

                    #println("Count : ",edge_count)
                    #println("Index parent: ", index_dict[process.parent[j]], " ", symbol_vec[index_dict[process.parent[j]]])
                end
    
            end
        end
        return gd, index_dict, edge_labels_dict
    end
    


#dep_g = dep(models)
#roots = collect(dep_g.roots)
#g, index_dict, edge_labels_vec = graph_from_modellist(models)
g, index_dict, edge_labels_dict = graph_from_mapping(mapping)

e = collect(edges(g))
e_g = zip(e, keys(e))

isless(e1, e2) = e1.first.src <= e2.first.src && e1.second.src <= e2.second.src

e1 = sort!(edge_labels_dict, by = x -> x[1]) # default lexicographical sort on the edges
#for edge in e
edge_labels_vec = last.(edge_labels_dict)


#scale_colour_dict = Dict( "Plant" => :black, "Leaf" => :green, "Internode" => :blue, "Soil"=>:red)
scale_colour_dict = Dict( "Plant" => :black, "Leaf" => :green, "Internode" => :blue, "Scene"=>:red, "Root"=>:brown)


node_color = [:white for i in 1:nv(g)]
marker_color = [:black for i in 1:nv(g)]
strokewidth = [10 for i in 1:nv(g)]
node_labels = Vector{String}(undef,nv(g))
for (node, i) in index_dict
    node_labels[i] = String(node.process)
    marker_color[i] = scale_colour_dict[node.scale]
    #println(node)
    println(node.hard_dependency)
    #if isa(node, PlantSimEngine.HardDependencyNode)
    if length(node.hard_dependency) > 0
        node_color[i] = :red
        strokewidth[i] = 100
    end
end
xs, ys, paths = solve_positions(Zarate(), g)

lay = Point.(zip(xs,ys))

GLMakie.activate!(inline=false)
f, ax, p = GraphMakie.graphplot(
    g,
    figure = (; size=(1200,1200)),
    layout=lay,
    node_attr=(marker=(marker=:rect, strokecolor = marker_color, strokewidth = 5,)),
    #nlabels=node_labels,
    ilabels=node_labels, 
    node_color=node_color, 
    elabels = edge_labels_vec,
    arrow_shift=:end, 
    arrow_size = 20)
#)
hidedecorations!(ax); hidespines!(ax); ax.aspect = DataAspect()

fig = current_figure()
#display(fig)
#fig

nothing

#=Pkg.add("Karnak")
using Karnak
Pkg.add("Graphs")
using Graphs
Pkg.add("LayeredLayouts")
using LayeredLayouts=#

#=g = barabasi_albert(100, 1)
@drawsvg begin
    background("black")
    sethue("white")
    drawgraph(g, layout=stress, vertexlabels=1:nv(g))
end=#

#using PlantSimEngine.Examples


#=models = ModelList(
        process1=Process1Model(1.0),
        process2=Process2Model(),
        process3=Process3Model(),
        process4=Process4Model(),
        process5=Process5Model(),
        process6=Process6Model(),
        # process7=Process7Model(),
        # status=(var1=15.0, var2=0.3)
    )=#





#=using CSV
    meteo_day = CSV.read(joinpath(pkgdir(PlantSimEngine), "examples/meteo_day.csv"), DataFrame, header=18)

    rue=0.2
    models = ModelList(
        ToyLAIModel(),
        Beer(0.5),
        ToyRUEGrowthModel(rue),
        process1=Process1Model(1.0),
        process2=Process2Model(),
        process3=Process3Model(),
        process4=Process4Model(),
        process5=Process5Model(),
        process6=Process6Model(),
        status=(TT_cu=cumsum(meteo_day.TT),),
    )



function get_model_outputs_with_hard_dep_outputs(extended_outputs, node::N where N <: PlantSimEngine.AbstractDependencyNode, filter_inputs::Bool)    

    hard_dependencies = node isa PlantSimEngine.SoftDependencyNode ? node.hard_dependency : node.children
        
    for hard_dep in hard_dependencies
        hard_dep_variables = filter_inputs ? hard_dep.inputs : hard_dep.outputs
        extended_outputs = union(extended_outputs, keys(hard_dep_variables))
        extended_outputs = get_model_outputs_with_hard_dep_outputs(extended_outputs, hard_dep, filter_inputs)
    end

    node_variables = filter_inputs ? node.inputs : node.outputs
    extended_outputs = union(keys(node_variables), extended_outputs)
    println(extended_outputs)
    return extended_outputs
end


function traverse_dep_graph!(gd, node, current_index, variables, names)
    updated_index = current_index
    for child in node.children
        if child.simulation_id[1] == 0
            #println(current_index, " ", child.process)
            add_vertex!(gd)
            push!(names, child.process)
            #println(nv(gd))
            child.simulation_id[1] = 1
            child.simulation_id[2] = updated_index
            updated_index += 1
            updated_index = traverse_dep_graph!(gd, child, updated_index, variables, names)
        end
        println( node.simulation_id[2], " ", node.process, " ", child.simulation_id[2] , " ", child.process)
        add_edge!(gd, node.simulation_id[2], child.simulation_id[2])
        
        extended_outputs = NamedTuple()
        extended_outputs = get_model_outputs_with_hard_dep_outputs(extended_outputs, node, false)
        extended_inputs = NamedTuple()
        extended_inputs = get_model_outputs_with_hard_dep_outputs(extended_inputs, child, true)
        # TODO distinguish between internal hard dependencies and actual soft ancestor model outputs
        #println(extended_outputs, " vs ", [keys(child.inputs)...])
        println(extended_outputs, " vs ", extended_inputs)
        coupled_variables = intersect(extended_outputs, extended_inputs)
        println("Coupled : ", coupled_variables)
        push!(variables, [string(coupled_variables...)])
    end
    return updated_index
end

function draw_dependency_graph2(m::ModelList)
    gd = DiGraph()

    nsteps = 2
    dep_graph = dep(m, 2)    

    PlantSimEngine.traverse_dependency_graph!(x-> x.simulation_id[1] = 0, dep_graph, visit_hard_dep=false)

    if first(PlantSimEngine.is_graph_cyclic(dep_graph))
        return
    end
    
    root_count = length(dep_graph.roots)

    variables = []
    names = []

    index=1
    for root in dep_graph.roots
        add_vertex!(gd)
        push!(names, root.second.process)
        #println(index, " ", root.second.process)
        root.second.simulation_id[1] = 1
        root.second.simulation_id[2] = index
        index+=1

        index = traverse_dep_graph!(gd, root.second, index, variables, names)
    end

    # TODO try catch and check if Zarate crashes only on single paths
    if root_count > 1
        xs, ys, paths = solve_positions(Zarate(), gd)
        @draw begin
            #fontsize(10)
            background("black")
            sethue("white")
            drawgraph(
                gd, 
                vertexlabels=names,#1:nv(gd),                
                vertexshapes=:square,
                vertexshapesizes=10,
                edgelabels = (edgenumber, edgesrc, edgedest, from::Point, to::Point) ->
            begin
                labeltext = string(variables[edgenumber]...)
                label(labeltext, :s, midpoint(from, to) - Point(5,0), offset=5)
            end,
                layout=boxmiddleleft() .+
                       map(pt -> Point(90pt[1], 30pt[2]), zip(xs, ys))
            )
        end
    else
        # buchheim is a tree layout algorithm, it will only work with a single root
        # and will error on non-trees
        # TODO improve
        @drawsvg begin
            background("black")
            sethue("white")
            drawgraph(gd, layout=buchheim, vertexlabels=1:nv(gd))
        end
    end
end

draw_dependency_graph2(models)=#