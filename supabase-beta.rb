# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SupabaseBeta < Formula
  desc "Supabase CLI (Beta)"
  homepage "https://supabase.com"
  version "1.113.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/supabase/cli/releases/download/v1.113.1/supabase_darwin_amd64.tar.gz"
      sha256 "a56c78845886228fd6cdcefe271a7477c10d5d4f800d3cfe47506ccbcf82e04b"

      def install
        bin.install "supabase"
        (bash_completion/"supabase").write `#{bin}/supabase completion bash`
        (fish_completion/"supabase.fish").write `#{bin}/supabase completion fish`
        (zsh_completion/"_supabase").write `#{bin}/supabase completion zsh`
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v1.113.1/supabase_darwin_arm64.tar.gz"
      sha256 "f4b2a0a16ee8fd3e1df8eee3624e54c960a0af48054deddd11199e9ef864256f"

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
      url "https://github.com/supabase/cli/releases/download/v1.113.1/supabase_linux_arm64.tar.gz"
      sha256 "ef4d908929869a7e1c715e224cd64d65a8d48be0c063e4f68c41dbe0651a7e3f"

      def install
        bin.install "supabase"
        (bash_completion/"supabase").write `#{bin}/supabase completion bash`
        (fish_completion/"supabase.fish").write `#{bin}/supabase completion fish`
        (zsh_completion/"_supabase").write `#{bin}/supabase completion zsh`
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/supabase/cli/releases/download/v1.113.1/supabase_linux_amd64.tar.gz"
      sha256 "7da9eb4770f922b2c75d256059789b9ccc74c9392e49074976cca7078e861d12"

      def install
        bin.install "supabase"
        (bash_completion/"supabase").write `#{bin}/supabase completion bash`
        (fish_completion/"supabase.fish").write `#{bin}/supabase completion fish`
        (zsh_completion/"_supabase").write `#{bin}/supabase completion zsh`
      end
    end
  end
end
