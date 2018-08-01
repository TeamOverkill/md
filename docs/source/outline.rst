Outline
=======

The program consists of three main modules
  * The mdEngine namespace
  * The Atom class
  * The Base class

At the start of the program the ``Parser`` class parses (interprets) the text in the input file. From the parameters found in the
config file an instance of the ``Base`` class is created. All parameters in the ``Base`` class are static and can hence
be referenced from anywhere in the program. After a ``Base`` object is created, memory is allocated to hold the atoms
and the trajectory which consists of objects of the ``Frame`` class. The static function ``initialize`` in the ``Atom``
class is then called which sets the initial conditions for the atoms (such as velocity, position, mass etc).