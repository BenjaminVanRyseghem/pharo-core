Parent class of all ProfStef tutorials.

To create your own tutorial:
- subclass AbstractTutorial
- implement a few methods which returns a Lesson instance
- implement tutorial which returns a Collection of selectors to the methods you've created.

For example, see MockTutorial (minimalist) and SmalltalkSyntaxTutorial (default ProfStef one).

See ProfStef comment to execute your own tutorial.