import java.util.Scanner;

public class InchesToFeet
{
	public static void main(String args[])
	{
		System.out.print("Enter total number of inches: ");
		Scanner input = new Scanner(System.in);
		int totalinches = input.nextInt();
		int feet = totalinches/12;
		int inches = totalinches%12;
		System.out.print(totalinches);
		System.out.print(" inches = ");
		System.out.print(feet);
		System.out.print(" feet, ");
		System.out.print(inches);
		System.out.println(" inches");

	}
}
