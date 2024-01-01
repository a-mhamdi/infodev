using GLMakie, Makie

# Create a figure window
set_theme!(theme_dark()) 
fig = Figure()
ax = Axis(fig[1, 1:3], title="∿", xlabel="x", ylabel="y")

# Create sliders to control the parameters of a sinewave
amp = Slider(fig[2,1], range=0:.1:5, startvalue=.5) # Amplitude
freq = Slider(fig[2,2], range=1:100, startvalue=1) # Frequency
phi = Slider(fig[2,3], range=-π:0.1:π) # Phase

# Generate (x, y)-values
x = lift(n -> range(0, stop=2π, length=100*n), freq.value)
y = lift((x, a, f, p) -> a .* sin.(f .* x .+ p), x, amp.value, freq.value, phi.value)

# Update the plot based on each slider value
lines!(ax, x, y)

# Update `y` limits depending on the amplitude
vlim = lift(l -> l+.25, amp.value)
on(vlim) do vlim
        ylims!(ax, -vlim, vlim)
end

# Show the figure
display(fig)

