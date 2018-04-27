import threading
import framework


class SuperThread(threading.Thread):
    """
    "Abstract" class containing a thread name, id and reference to framework
    """

    def __init__(self, thread_id, name, framework):
        super(SuperThread, self).__init__(name=name)
        self.thread_id = thread_id
        self.framework = framework

    def get_framework(self):
        assert isinstance(self.framework, framework.Framework)
        return self.framework

    def get_thread_id(self):
        return self.thread_id

    def terminate(self):
        self.framework = None