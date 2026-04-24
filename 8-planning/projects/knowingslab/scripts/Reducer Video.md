# Video Outline

Covers the process off design from cycloidal drive through to the current Plate Harmonic Reducer design. Brief explanation of what's going on etc.


# Storyboarding / Scripting

## Intro/Hook

Have you ever been doom scrolling through twitter when bam you're hit with a post that makes you reconsider how you're implementing an entire project, throwing the whole thing out.

 *Starts with footage of me doomscrolling on phone, over shoulder scrolling through bookmarks before stopping on the PHR post from November.  MAKE SURE TO CAPTURE THE LEAN FORWARD AND PICKING UP OF OLD CYCLOIDAL REDUCER. CUT  to walking to the bin and dropping it in there (possible just dump in the cardboard recycling bin)*

---- 
## Cut Content
That was me nearly 4 months ago now - I threw out the design I had been working on for a couple of months for one I had seen in a tweet highlighting a paper in just a few short seconds. Let's take this from the top and tell you how I went from this traffic cone coloured reducer here to the jet black prototype currently occupying your screen.
-- --
## Brief Explainer
I've been building arms for a while now, and last summer I wanted to make another one. For this humanoid torso project I needed something crucial in robotics: an actuator or more accurately a reducer. Now you're probably asking what a reduction is no? A reduction is essentially taking a something spinning fast, and slowing it down, which in the process means we have more "torque" or in other words we actually make whatever we're spinning essentially stronger. Like your cars gearbox: you trade speed for power. This has a variety of benefits that I shan't go into here but can be found on the linked blog post for this video for those curious.  

## Old approach
I spent a couple of months on and off over the summer designing this *show the orange reducer*. This traffic cone coloured little bugger is a cycloidal drive. This means it has this almost flower shaped disc that interacts with pins in the outer housing to create a reduction.  *animation or cover off running of reducer*. Now this little guy is a great reducer, but you'll notice that it is very tall, made of PLA, and overall not an excellent design *cut to pin from output disc snapping/falling off*. And to be honest between packing and other distractions I forgot about working on this little fella. 
*Background footage of RDR2 being played*. 

## Discovery and Justification
In fact it was only after starting my masters degree that I actually picked it up again. Whilst doomscrolling through twitter I of course stumbled across this post by Nick Parker talking about an interesting reducer design. Of course I was intrigued, and dug straight into the paper - the design stuck around and began to mull around in my mind, never quite reaching fruition but also never quite being forgotten.  A week or two later I joined my university's rover team, and ended up as the Technical lead in charge of the Robotic arm. I now had a justification to produce this reducer. 

## The difference / Explanations of reducer function
Now how does this new design work then. Essentially its a common reducer type, a harmonic reducer or strain wave gear reducer, but from a different approach. Now it's a little out of scope to explain strain wave gear reductions but the short and sweet of it is that a gear is squeezed into another gear giving us our reduction, making our fast spin slower and stronger. These are everywhere as a reducer especially in industrial robotics applications as they have huge weight savings and are incredibly compact. This new design takes their compactness to the next level by flipping the way the gear is flexed. 

## Benefits
With this design we flex the gear upwards into the teeth. This changes the stress distribution, but more importantly - it's way more compact and simpler to build. For a rover arm, this matters. It turns out that previously the rover team had also been using a cycloidal drive which was was heavy and complicated - lots of pins, lots of parts that could fail. The PHR? Simpler assembly, lighter weight, and I can 3D print the whole thing, with nearly zero consequence. That's partly why the old design ended up in the bin.

## Build montage in background

*Various clips from the printing and assembly of the reducer etc*

## Testing / Results
Now onto the testing. For now I'm not testing the actual torque output of the reducer, just verifying my design - this prototype is huge in comparison to what the final one will end up being, especially since the production one is going to be machined aluminium.

## Conclusion
So you're probably thinking: What's next? Well of course we have the testing of the production version of the reducer and its integration with the rover, but I'm also very excited to introduce you all to someone in the next video: barring me actually finishing the little guy. As with all the videos I intend to publish you can find a companion blogpost on my website tomleh.gg, link in the description or somewhere up here *point top right*. Thank you all for watching and I'll see you guys in a week or two. 