// Base class for defining a containing wall
public abstract class ContainingWallBase{
  
  
   /**
   *@breif Determines if a point (x, y) is contained within the given containing wall
   *
   *@returns boolean
   */
   public abstract boolean contains(int x, int y); 
  
  
}; 

/**
* Class for setting up a containing system. 
*/
public class Container{
  
  /**
  * The containing wall constructor
  */
  public Container(){
  containingWalls = new ArrayList<ContainingWallBase>();
  }
  
  /**
  * Determine if a point is contained within the programs containing walls
  */
  public boolean contains(int x, int y){
    for(ContainingWallBase containingWall : containingWalls){
      if(containingWall.contains(x, y))
        return true; 
    }
   return false; 
  }
  
  /**
  * Add a new containing wall to the system
  */
  public void AddNewWall(ContainingWallBase wall){
   containingWalls.add(wall);  
  }
  
  private ArrayList<ContainingWallBase> containingWalls;
  
};
