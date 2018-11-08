## Usage
Run the program from the app root
> $ ruby toy_robot.rb

Expected terminal output:
> Options: PLACE X,Y,F; MOVE; LEFT; RIGHT; REPORT; EXIT

Commands | Description
--- | ---
PLACE X,Y,F | Place the robot on the table at coordinates x,y and facing the direction f. Valid x and y values are between 0-4. Valid directions are WEST, NORTH, EAST, SOUTH. Example Input: "PLACE 0,0,NORTH"
MOVE | Move the robot forward 1 step in the direction it is facing.
LEFT | Turn the robot's direction 90 degress to the left. I.e. if the robot is facing NORTH, 1 left turn will turn the robot's direction to WEST.
RIGHT | Turn the robot's direction 90 degress to the right. I.e. if the robot is facing NORTH, 1 left turn will turn the robot's direction to EAST.
REPORT | Output the current position of the robot. Example Output: "Output: 0,0,NORTH"
EXIT | Gracefully exit the program.

***

## Testing
Test by running rspec http://rspec.info/ 
> $ rspec spec/*.rb
with coverage COVERAGE=true rspec spec/*.rb

Expected terminal output:
> ... ... ... ... ... ... ... ..Output: 1,2,NORTH
>
> ... ... ... ... ... ... ..
>
> Finished in 0.1201 seconds (files took 0.2322 seconds to load)
>
> 42 examples, 0 failures

***

 
### Constraints

The toy robot must not fall off the table during movement. This also includes the initial placement of the toy robot.
Any move that would cause the robot to fall must be ignored.
 
Example Input and Output:
a)
> PLACE 0,0,NORTH
>
> MOVE
>
> REPORT
>
> Output: 0,1,NORTH
 
b)
> PLACE 0,0,NORTH
>
> LEFT
>
> REPORT
>
> Output: 0,0,WEST
 
c)
> PLACE 1,2,EAST
>
> MOVE
>
> MOVE
>
> LEFT
>
> MOVE
>
> REPORT
>
> Output: 3,3,NORTH
 
