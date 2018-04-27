########################################    VISION      ################################################
import cv2

from crypto import Crypto
from threads.superthread import SuperThread

CRYPTO_ID = 3


class Vision(SuperThread):
    """
    This class implements the localisation algorithm in a separate thread for use on the Zybo
    """

    def __init__(self, thread_id, name, framework):
        super(Vision, self).__init__(thread_id, name, framework)
        self.running = False
        self.targeting_busy = False

    def run(self):
        """
        Start the main loop of the vision thread
        """
        self.running = True
        self.runvideo()

    def runvideo(self):
        """
        The main loop of the vision thread.
        This method constantly calculates the position of the drone and sends it to the framework.
        It also checks whether the drone is at its target and launches the QR decryption in this case
        """
        cap = cv2.VideoCapture(0)
        while cap.isOpened() and self.running:
            result, image = cap.read() # result is a boolean reflecting the success of the read
            x = 0.0
            y = 0.0
            self.framework.set_coordinates((x, y))
            decryption = False
            if decryption:  # If a certain condition is met, the decryption is started in its own thread
                crypto = Crypto(CRYPTO_ID, "Crypto", self.get_framework(), image) # Create a Crypto thread and pass it the image to decrypt
                crypto.start()
        cap.release()
        print "released camera"
        super(Vision, self).terminate()

    def terminate(self):
        self.running = False
