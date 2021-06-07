class Course{
	public String name
	public int days
	
}

class SortingList{
	static void main(args)
	{
		Course a = new Course()
		Course b = new Course()
		Course c = new Course()
		Course d = new Course()
		a.days = 10
		b.days = 5
		c.days = 7
		d.days = 10
		
		a.name = "Python"
		b.name = "Java"
		c.name = "C"
		d.name = "Groovy"	
		def List =[a,b,c,d]
		def len = List.size()
		def temp
		
		for(int i=0;i<=len;i++)
		{
			if(List[i].days > List[i+1].days)
			{
				temp=List[i].days
				List[i].days=List[i+1].days
				List[i+1].days=temp
			}
			else if(List[i].days == List[i+1].days)
			{
				if(List[i].name > List[i+1].name)
				{
					temp= List[i].name
					List[i].name=List[i+1].name
					List[i+1].name=temp
				}
				else {
					temp= List[i+1].name
					List[i+1].name=List[i].name
					List[i].name=temp
				}
				break
			}
		}
		for(int j=0;j<=len;j++)
		{
			println List[j].days
			println List[j].name
		}
		
	}
}