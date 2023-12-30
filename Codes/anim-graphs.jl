using GLMakie, Makie

# Create a figure window
fig = Figure()
ax = Axis(fig[1, 1:3])

# Create sliders to control the parameters of a sinewave
amp = Slider(fig[2,1], range=0:.5:3, label="Amplitude")
freq = Slider(fig[2,2], range=1:100, startvalue=1, label="Frequency")
phi = Slider(fig[2,3], range=-π:0.1:π, label="Phase")

# Generate (x, y)-values
x = lift(n -> range(0, stop=2π, length=100*n), freq.value)
y = lift((x, a, f, p) -> a .* sin.(f .* x .+ p), x, amp.value, freq.value, phi.value)

# Update the plot based on the slider values
lines!(ax, x, y)

# Show the figure
display(fig)

