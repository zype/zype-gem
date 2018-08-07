module Zype
  class Models
    # Have to list out available methods instead of using Dir
    LIST = %w[apps categories category_content_rules consumers device_categories devices encoders geo_ip live_events
              live_manifests manifests pin plans players playlist_content_rules playlist_entitlements playlists
              program_guides segments subscriptions subtitle_playlists subtitles transactions users video_content_rules
              video_entitlements video_imports video_sources videos
            ].freeze
  end
end
