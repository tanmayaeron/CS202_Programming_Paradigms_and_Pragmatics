import java.util.Scanner;

public class Player
{
	private char symbol;
	private int id;
	
	public Player()
	{
		symbol = 'X';
		id = 1;
	}
	
	public Player(char symbol,int id)
	{
		this.symbol = symbol;
		this.id = id;
	}
	
	public char getSymbol()
	{
		return symbol;
	}
	
	public int getId()
	{
		return id;
	}
	
	public int makeMove()
	{
		Scanner in = new Scanner(System.in);
		System.out.println("Player "+id+",its your turn");
		System.out.print("Enter index of postion where you want to move: ");
		int num = in.nextInt();
		return num;
	}
}
