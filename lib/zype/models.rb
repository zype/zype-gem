module Zype
  class Models
    # Have to list out available methods instead of using Dir
    LIST = %w[ad_tags apps categories category_content_rules consumers device_categories devices encoders geo_ip live_events
              live_manifests manifests pin plans players playlist_content_rules playlist_entitlements playlists
              program_guides redemption_codes revenue_models segments subscriptions subtitle_playlists subtitles
              transactions users video_content_rules video_entitlements videos video_favorites video_imports video_sources
            ].freeze
  end
end
