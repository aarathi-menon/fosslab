#include<stdio.h>
main()
{
        int bt[30],wt[30],tat[30],prt[30],pos,temp,i,j,n,p[30];
        printf("ENTER NUMBER OF PROCESSES:");
        scanf("%d",&n);
        for(i=0;i<n;i++)
                {
		scanf("%d",&bt[i]);
		scanf("%d",&prt[i]);
		p[i]=i+1;
		}
	for (i = 0; i < n; i++) 
        {
                pos=i;
                for (j = i + 1; j < n; j++) 
                        {
                                if (prt[j] < prt[pos]) 
                                {
                                        pos=j;
                                }
                        }
                temp = bt[i];
                bt[i] = bt[pos];
                bt[pos] = temp;

                 temp = p[i];
                p[i] = p[pos];
                p[pos] = temp;

		temp=prt[i];
		prt[i]=prt[pos];
		prt[pos]=temp;


        }

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
                printf("\nP[%d]\t\t%d\t\t%d\t\t%d",p[i],bt[i],wt[i],tat[i]);
        }

}




