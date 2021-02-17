public class Computer
{
	private char symbol;
	
	public Computer()
	{
		symbol = 'O';
	}
		
	public char getSymbol()
	{
		return symbol;
	}
	
	public int makeMove(int[] grid)
	{
		int [][] winningPositions = {{0,1,2},{3,4,5},{6,7,8},{0,3,6},{1,4,7},{2,5,8},{0,4,8},{2,4,6}};
		for(int[] winningPosition:winningPositions)
		{
			if(grid[winningPosition[0]]==grid[winningPosition[1]]&&grid[winningPosition[0]]==2&&grid[winningPosition[2]]==0)
			return winningPosition[2]+1;
			if(grid[winningPosition[0]]==grid[winningPosition[2]]&&grid[winningPosition[0]]==2&&grid[winningPosition[1]]==0)
			return winningPosition[1]+1;
			if(grid[winningPosition[2]]==grid[winningPosition[1]]&&grid[winningPosition[2]]==2&&grid[winningPosition[0]]==0)
			return winningPosition[0]+1;
		}
		for(int[] winningPosition:winningPositions)
		{
			if(grid[winningPosition[0]]==grid[winningPosition[1]]&&grid[winningPosition[0]]==1&&grid[winningPosition[2]]==0)
			return winningPosition[2]+1;
			if(grid[winningPosition[0]]==grid[winningPosition[2]]&&grid[winningPosition[0]]==1&&grid[winningPosition[1]]==0)
			return winningPosition[1]+1;
			if(grid[winningPosition[2]]==grid[winningPosition[1]]&&grid[winningPosition[2]]==1&&grid[winningPosition[0]]==0)
			return winningPosition[0]+1;
		}
		for(int i=0;i<9;i++)
		{
			if(grid[i]==0)
			return i+1;
		}
		return 0;
	}
}