public class Board
{
	private int[] grid;
	private int numberOfMoves;
	private int player1_id;
	private char player1_symbol;
	private int player2_id;
	private char player2_symbol;
	
	public Board()
	{
		grid = new int[9];
		numberOfMoves = 0;
		player1_id = 1;
		player1_symbol = 'X';
		player2_id = 2;
		player2_symbol = 'O';
	}
	
	public int[] getGrid()
	{
		return grid;
	}
	
	
	public void increaseNumberOfMoves()
	{
		numberOfMoves = numberOfMoves+1;
	}
	
	public boolean isValidMove(int index) 
	{
		if(index<1||index>9)
		return false;
		if(grid[index-1]==0)
		return true;
		return false;
	}
	
	public void placeSymbol(int player_id,int index)
	{
		grid[index-1] = player_id;
	}
	
	public int gameState()
	{
		/*0 running game
		  1 for player 1 win
		  2 for player 2 win
		  3 for draw
		*/
		int [][] winningPositions = {{0,1,2},{3,4,5},{6,7,8},{0,3,6},{1,4,7},{2,5,8},{0,4,8},{2,4,6}};
		for(int[] winningPosition:winningPositions)
		{
			if(grid[winningPosition[0]]==grid[winningPosition[1]]&&grid[winningPosition[0]]==grid[winningPosition[2]]&&grid[winningPosition[0]]!=0)
			return grid[winningPosition[0]];
		}
		if(numberOfMoves==9)
		return 3;
		return 0;
	}
	
	private char symbol(int index)
	{
		if(grid[index]==0)
		return (char)('1'+index);
		if(grid[index]==player1_id)
		return player1_symbol;
		return player2_symbol;
	}
	
	public void displayGrid()
	{
		System.out.println("\n "+symbol(0)+" | "+symbol(1)+" | "+symbol(2));
		System.out.println("----------");
		System.out.println(" "+symbol(3)+" | "+symbol(4)+" | "+symbol(5));
		System.out.println("----------");
		System.out.println(" "+symbol(6)+" | "+symbol(7)+" | "+symbol(8)+"\n");		
	}
}
