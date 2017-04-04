using PyPlot

println("Reading matrix M")
fp=open("1ststageM.dmp")
n=read(fp, Int32)
println(n)
A=read(fp, Float64, n,n)
close(fp)
ioff()
spy(A)
show()

println("Reading RHS")
fp=open("1ststageRHS.dmp")
n=read(fp, Int32)
println(n)
rhs=read(fp, Float64, n)
close(fp)

println("Reading solution")
fp=open("1ststageSol.dmp")
n=read(fp, Int32)
println(n)
sol=read(fp, Float64, n)
close(fp)

println("Solving system")
x=\(A,rhs)

println("Solution from file:")
println(sol)
println("Computed solution:")
println(x)

println("Condition number: ", cond(A))

