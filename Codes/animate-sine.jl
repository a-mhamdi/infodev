### A Pluto.jl notebook ###
# v0.19.36

using Markdown
using InteractiveUtils

# ╔═╡ 9d1bb809-b82e-4295-8f73-6d73ccb58c87
# ╠═╡ show_logs = false
using Pkg; Pkg.activate(".")

# ╔═╡ 98cc4c4b-6ef2-4200-8003-9c9554d6e41f
using Makie: Slider

# ╔═╡ 3ef945fe-bccc-4c08-947d-5c8db7517eb1
using WGLMakie

# ╔═╡ 0054240d-8cfc-4350-936b-4c37e5cb5472
md"Create a figure window"

# ╔═╡ d3998fd1-f072-4310-b22c-7130cf889777
begin        
	set_theme!(theme_dark()) 
	fig = Figure()
	ax = Axis(fig[1, 1:3], title="∿", xlabel="x", ylabel="y")
end;

# ╔═╡ 65d5b172-137a-4f4c-a0b9-c87894d5ebd1
md"Create sliders to control the parameters of a sinewave"

# ╔═╡ 81628ab3-2a61-4c1e-82bc-c343374593bf
begin
	amp = Slider(fig[2,1], range=0:.1:5, startvalue=.5) # Amplitude
	freq = Slider(fig[2,2], range=1:100, startvalue=1) # Frequency
	phi = Slider(fig[2,3], range=-π:0.1:π) # Phase
end;

# ╔═╡ e5f78811-bb9a-4222-8016-c5806b1e2881
md"Generate (x, y)-values"

# ╔═╡ f39f9a51-cc3f-4e93-9437-39e516f83146
begin 
	x = lift(n -> range(0, stop=2π, length=100*n), freq.value)
	y = lift((x, a, f, p) -> a .* sin.(f .* x .+ p), x, amp.value, freq.value, phi.value)
end;

# ╔═╡ 12a6b319-094d-4eab-9424-2ec453a982cc
md"Update the plot based on each slider value"

# ╔═╡ a3fba3e6-cddc-409d-86eb-fc7e1195ca2f
lines!(ax, x, y);

# ╔═╡ 9543097c-c701-44d6-ba9f-362b8dbfbd31
md"Update `y` limits depending on the amplitude"

# ╔═╡ 6e578f10-158a-4dee-a642-24cb0143dde2
begin
	vlim = lift(l -> l+.25, amp.value)
	on(vlim) do vlim
	        ylims!(ax, -vlim, vlim)
	end
end;

# ╔═╡ 99ca19f4-5d07-4fa5-853c-58da10be344e
fig

# ╔═╡ Cell order:
# ╠═9d1bb809-b82e-4295-8f73-6d73ccb58c87
# ╠═98cc4c4b-6ef2-4200-8003-9c9554d6e41f
# ╠═3ef945fe-bccc-4c08-947d-5c8db7517eb1
# ╟─0054240d-8cfc-4350-936b-4c37e5cb5472
# ╠═d3998fd1-f072-4310-b22c-7130cf889777
# ╟─65d5b172-137a-4f4c-a0b9-c87894d5ebd1
# ╠═81628ab3-2a61-4c1e-82bc-c343374593bf
# ╟─e5f78811-bb9a-4222-8016-c5806b1e2881
# ╠═f39f9a51-cc3f-4e93-9437-39e516f83146
# ╟─12a6b319-094d-4eab-9424-2ec453a982cc
# ╠═a3fba3e6-cddc-409d-86eb-fc7e1195ca2f
# ╟─9543097c-c701-44d6-ba9f-362b8dbfbd31
# ╠═6e578f10-158a-4dee-a642-24cb0143dde2
# ╠═99ca19f4-5d07-4fa5-853c-58da10be344e
