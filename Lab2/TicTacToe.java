import java.util.Scanner;

public class TicTacToe
{
	public static void main(String[] args)
	{
		System.out.println("Welcome to the game of TicTacToe!\n");
		int choice = 0;
		while(choice!=3)
		{
			System.out.println("Select mode of play:");
			System.out.println("1. Player vs Player");
			System.out.println("2. Player vs Computer");
			System.out.println("3. Exit TicTacToe");
			System.out.print("Enter your choice: ");
			Scanner in = new Scanner(System.in);
			choice = in.nextInt();
			if(choice==1)
			{
				Player player1 = new Player();
				Player player2 = new Player('O',2);
				Board game_board = new Board();
				System.out.println("\nThis is a new game.Board numbers are as follows:");
				game_board.displayGrid();
				int currentplayer = 1;
				while(game_board.gameState()==0)
				{
					if(currentplayer==1)
					{
					    int index = player1.makeMove();
						while(!game_board.isValidMove(index))
						{
							System.out.println("Invalid move!!!, Move again\n");
							index = player1.makeMove();
						}
						game_board.increaseNumberOfMoves();
						game_board.placeSymbol(1,index);
						System.out.println("\nPlayer 1 chose to move at "+index);
						game_board.displayGrid();
						currentplayer = 2;
					}
					else
					{
						int index = player2.makeMove();
						while(!game_board.isValidMove(index))
						{
							System.out.println("Invalid move!!!, Move again\n");
							index = player2.makeMove();
						}
						game_board.increaseNumberOfMoves();
						game_board.placeSymbol(2,index);
						System.out.println("\nPlayer 2 chose to move at "+index);
						game_board.displayGrid();
						currentplayer = 1;
					}
				}
				if(game_board.gameState()==1)
				System.out.println("Player1 won!!!\nWant to play another game?\n");
				else if(game_board.gameState()==2)
				System.out.println("Player2 won!!!\nWant to play another game?\n");
				if(game_board.gameState()==3)
				System.out.println("Game ended in a draw!!!\nWant to play another game?\n");
			}
			else if(choice==2)
			{
				Player player = new Player();
				Computer dummyplayer = new Computer();
				Board game_board = new Board();
				System.out.println("\nThis is a new game.Board numbers are as follows:");
				game_board.displayGrid();
				int currentplayer = 1;
				while(game_board.gameState()==0)
				{
					if(currentplayer==1)
					{
					    int index = player.makeMove();
						while(!game_board.isValidMove(index))
						{
							System.out.println("Invalid move!!!, Move again\n");
							index = player.makeMove();
						}
						game_board.increaseNumberOfMoves();
						game_board.placeSymbol(1,index);
						System.out.println("\nYou chose to move at "+index);
						game_board.displayGrid();
						currentplayer = 2;
					}
					else
					{
						int index = dummyplayer.makeMove(game_board.getGrid());
						while(!game_board.isValidMove(index))
						{
							index = dummyplayer.makeMove(game_board.getGrid());
						}
						game_board.increaseNumberOfMoves();
						game_board.placeSymbol(2,index);
						System.out.println("\nComputer chose to move at "+index);
						game_board.displayGrid();
						currentplayer = 1;
					}
				}
				if(game_board.gameState()==1)
				System.out.println("You won!!!\nWant to play another game?\n");
				else if(game_board.gameState()==2)
				System.out.println("Computer won!!!\nWant to play another game?\n");
				if(game_board.gameState()==3)
				System.out.println("Game ended in a draw!!!\nWant to play another game?\n");
			}
			else if(choice!=3)
			{
				System.out.println("Invalid Choice!!!\n");
			}
		}
		System.out.println("Thanks for playing!!!");
	}
}
