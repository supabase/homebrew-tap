# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SupabaseBeta < Formula
  desc "Supabase CLI (Beta)"
  homepage "https://supabase.com"
  version "1.187.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v1.187.3/supabase_darwin_arm64.tar.gz"
      sha256 "e078bb9815fbfb925886bd6d1e6290ccafe6318e6b7d00ec91f14f11e4dce308"

      def install
        bin.install "supabase"
        (bash_completion/"supabase").write `#{bin}/supabase completion bash`
        (fish_completion/"supabase.fish").write `#{bin}/supabase completion fish`
        (zsh_completion/"_supabase").write `#{bin}/supabase completion zsh`
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/supabase/cli/releases/download/v1.187.3/supabase_darwin_amd64.tar.gz"
      sha256 "3b7df5c4fd47b082affe6c0048f2963d7835ac8a2bde8c1d3df004bcf424a6c7"

      def install
        bin.install "supabase"
        (bash_completion/"supabase").write `#{bin}/supabase completion bash`
        (fish_completion/"supabase.fish").write `#{bin}/supabase completion fish`
        (zsh_completion/"_supabase").write `#{bin}/supabase completion zsh`
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/supabase/cli/releases/download/v1.187.3/supabase_linux_arm64.tar.gz"
      sha256 "5d562d979a22d1dcaded4b3377b9c4e59c86bc599ae58cdb48010ea02b33c515"

      def install
        bin.install "supabase"
        (bash_completion/"supabase").write `#{bin}/supabase completion bash`
        (fish_completion/"supabase.fish").write `#{bin}/supabase completion fish`
        (zsh_completion/"_supabase").write `#{bin}/supabase completion zsh`
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/supabase/cli/releases/download/v1.187.3/supabase_linux_amd64.tar.gz"
      sha256 "2c8aa5b107e8ffc6f082f57a499f479ee706dde86884e31a30781a77b01fa2fa"

      def install
        bin.install "supabase"
        (bash_completion/"supabase").write `#{bin}/supabase completion bash`
        (fish_completion/"supabase.fish").write `#{bin}/supabase completion fish`
        (zsh_completion/"_supabase").write `#{bin}/supabase completion zsh`
      end
    end
  end
end
