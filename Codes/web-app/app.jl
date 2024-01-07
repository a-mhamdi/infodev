using GenieFramework
@genietools

@app begin
    
    @in N::Int32 = 1000
    @in amp::Float32 = 0.25
    @in freq::Int32 = 1
    
    @out my_sine = PlotData()

    @onchange N, amp, freq begin
        x = range(0, 1, length=N)
        y = amp*sin.(2*π*freq*x)
        
        my_sine = PlotData(x=x, 
                           y=y, 
                           plot=StipplePlotly.Charts.PLOT_TYPE_LINE)
    end

end
    
@page("/", "app.jl.html")

