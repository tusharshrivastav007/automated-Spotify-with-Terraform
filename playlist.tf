data "spotify_search_track" "arijit_singh" {
  artist = "Arijit Singh"

}

resource "spotify_playlist" "arijit_singh" {
    name   = "Arijit Singh"
    tracks = [
    data.spotify_search_track.arijit_singh.tracks[0].id,
    data.spotify_search_track.arijit_singh.tracks[1].id,
    data.spotify_search_track.arijit_singh.tracks[2].id,
    data.spotify_search_track.arijit_singh.tracks[3].id,
    data.spotify_search_track.arijit_singh.tracks[4].id
  ]



}
