# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SupabaseBeta < Formula
  desc "Supabase CLI (Beta)"
  homepage "https://supabase.com"
  version "1.91.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v1.91.4/supabase_darwin_arm64.tar.gz"
      sha256 "59ffaa8537a8a497f7e4b1abb9f92212803720d602c322fb6088b374dda2b163"

      def install
        bin.install "supabase"
        (bash_completion/"supabase").write `#{bin}/supabase completion bash`
        (fish_completion/"supabase.fish").write `#{bin}/supabase completion fish`
        (zsh_completion/"_supabase").write `#{bin}/supabase completion zsh`
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/supabase/cli/releases/download/v1.91.4/supabase_darwin_amd64.tar.gz"
      sha256 "9ab1a7b5ada13e535f98530c8ac37f333f0fc660986a25d28ed42f9b895a0c1b"

      def install
        bin.install "supabase"
        (bash_completion/"supabase").write `#{bin}/supabase completion bash`
        (fish_completion/"supabase.fish").write `#{bin}/supabase completion fish`
        (zsh_completion/"_supabase").write `#{bin}/supabase completion zsh`
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/supabase/cli/releases/download/v1.91.4/supabase_linux_amd64.tar.gz"
      sha256 "ae2c071f73ceff4fbeb47d1d8227159d93b5b5739fc7396e50c947a823ed12aa"

      def install
        bin.install "supabase"
        (bash_completion/"supabase").write `#{bin}/supabase completion bash`
        (fish_completion/"supabase.fish").write `#{bin}/supabase completion fish`
        (zsh_completion/"_supabase").write `#{bin}/supabase completion zsh`
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/supabase/cli/releases/download/v1.91.4/supabase_linux_arm64.tar.gz"
      sha256 "07b2d95216f8b9f5d3248aa58b55f0f8327b8a0162f618e58757e43b286133eb"

      def install
        bin.install "supabase"
        (bash_completion/"supabase").write `#{bin}/supabase completion bash`
        (fish_completion/"supabase.fish").write `#{bin}/supabase completion fish`
        (zsh_completion/"_supabase").write `#{bin}/supabase completion zsh`
      end
    end
  end
end
