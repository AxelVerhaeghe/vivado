#!/usr/bin/env python
from threads import superthread
__author__ = "Sander Declercq"


class Crypto(superthread.SuperThread):

    def __init__(self, thread_id, name, framework, image):
        """
        Initiate a new Crypto thread. Any arguments for this thread should be passed via the constructor
        """
        super(Crypto, self).__init__(thread_id, name, framework)
        self.image = image # Store the received image to access it from run()

    def run(self):
        """
        Main function of the thread. This method should decrypt a QR code and send the new target coordinates
        to the framework
        """
        target = (0.0, 0.0)
        self.get_framework().set_target(target)
