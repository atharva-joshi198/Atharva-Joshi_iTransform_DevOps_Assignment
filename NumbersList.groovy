def NumList=[2,3,4,5,6]
n=NumList.size()
def sum=0

for (i=0;i<n;i++)
	{
		sum = sum + NumList[i]
	}
	
println "$sum"
	
for(int i=0;i<n;i++)
{
	NumList[i] *= 2
}

def double_sum=0

for(int i=0;i<n;i++)
{
	double_sum = double_sum + NumList[i]	
}

println "$double_sum"
def average= double_sum/n
println "$average"