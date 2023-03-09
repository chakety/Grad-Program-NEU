# Part 3 Summary

Python is not force to get into Object Oriented mode, but incase for someone wants to learn.

```python
class Human(object):
    # A class attribute. It is shared by all instances of this class
    species = "H. sapiens"

    def __init__(self, name):
        # Assign the argument to the instance's name attribute
        self.name = name

        # Initialize property
        self.age = 0
        
    def say(self, msg):
        return "{0}: {1}".format(self.name, msg)

    @classmethod
    def get_species(cls):
        return cls.species

    @staticmethod
    def grunt():
        return "*grunt*"

    @property
    def age(self):
        return self._gpa

    # This allows the property to be set
    @age.setter
    def age(self, gpa):
        self._gpa = gpa

    # This allows the property to be deleted
    @age.deleter
    def age(self):
        del self._gpa
```

we can get:
```python
i = Human
# Update the property
i.age = "A"

# Get the property
i.age  # => A

# Delete the property
del i.age
i.age  # => raises an AttributeError
```