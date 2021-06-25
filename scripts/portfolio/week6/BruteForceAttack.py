#!/usr/bin/python3

import hashlib
import itertools
import string

# Hidden password hash
passwordHash = "2cf24dba5fb0a30e26e83b2ac5b9e29e1b161e5c1fa7425e73043362938b9824"

# Use function so we can utilise return to exit the for loops gracefully
def crack_password(hash):

    # Create charset (e.g "string.ascii_lowercase + string.ascii_uppercase + string.ascii_digits")
    chars = string.ascii_lowercase # using just lowercase for speed

    # Set password length range (eg. 5-8 characters) 
    for length in range(5, 8):

        for password in itertools.product(chars, repeat=length):

            # Join array of characters
            word = ''.join(password)

            # Hash the "word"
            guessHash = hashlib.sha256(word.encode("utf-8")).hexdigest()

            # Output attempts to user
            print(f"Trying password {word}:{guessHash}") # This slows down the script considerably. For faster results execute command as: python3 BruteForceAttack.py | grep "cracked"

            # If the hash is the same as the correct password's hash then we have cracked the password!
            if(guessHash == passwordHash): 
            
                # Print password found to user
                return "Password has been cracked! It was " + word

# Print return output from function
print(crack_password(passwordHash))
