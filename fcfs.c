#include<stdio.h>
main()
{
	int bt[30],wt[30],tat[30],i,j,n,p[30];
	printf("ENTER NUMBER OF PROCESSES:");
	scanf("%d",&n);
	for(i=0;i<n;i++)
		scanf("%d",&bt[i]);
	wt[0]=0;
	for(i=1;i<n;i++)
	{	
		wt[i]=0;
		for(j=0;j<i;j++)
			wt[i]+=bt[j];	
	
	}
	for(i=0;i<n;i++)
	{
		tat[i]=wt[i]+bt[i];
		printf("\nP[%d]\t\t%d\t\t%d\t\t%d",i,bt[i],wt[i],tat[i]);
	}
	
}
