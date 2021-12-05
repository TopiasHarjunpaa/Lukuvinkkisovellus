class PodcastService:
    def __init__(self, podcast_repository):
        self._podcast_repository = podcast_repository

    def new_podcast(self, podcast, user_id):
        return self._podcast_repository.add_podcast(podcast, user_id)

    def get_my_podcasts(self, user_id):
        return self._podcast_repository.get_users_podcasts(user_id)