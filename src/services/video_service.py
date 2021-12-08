import urllib.request
import json
import urllib

class VideoService:
    def __init__(self, video_repository):
        self._video_repository = video_repository

    def new_video(self, video, user_id):
        if video.get_title() == "":
            video.set_title(self.get_title_from_url(video.get_url()))
            
        return self._video_repository.add_video(video, user_id)

    def get_my_videos(self, user_id):
        return self._video_repository.get_users_videos(user_id)

    def mark_video_finished(self, video_id):
        return self._video_repository.mark_finished(video_id)

    def is_video_mine(self, user_id, video_id):
        return self._video_repository.is_owner(user_id, video_id)

    def get_title_from_url(self, url):
        """
        Returns the title of a Youtube video when given an url.

        Args:
            url (String): URL of a Youtube video.
        """

        params = {"format": "json", "url": url}
        query_url = "https://www.youtube.com/oembed"
        query_string = urllib.parse.urlencode(params)
        query_url = query_url + "?" + query_string

        with urllib.request.urlopen(query_url) as response:
            response_text = response.read()
            data = json.loads(response_text.decode())
            return(data["title"])
