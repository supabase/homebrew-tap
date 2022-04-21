# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Supabase < Formula
  desc "Supabase CLI"
  homepage "https://supabase.io"
  version "0.24.7"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v0.24.7/supabase_0.24.7_darwin_arm64.tar.gz"
      sha256 "e7b1291a43a70d6074b405e9020cf1faa4757621ab951b7bed0829442f48c867"

      def install
        bin.install "supabase"
        (bash_completion/"supabase").write `#{bin}/supabase completion bash`
        (fish_completion/"supabase.fish").write `#{bin}/supabase completion fish`
        (zsh_completion/"_supabase").write `#{bin}/supabase completion zsh`
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/supabase/cli/releases/download/v0.24.7/supabase_0.24.7_darwin_amd64.tar.gz"
      sha256 "c75cb3a0a0fb66827c2341e60071621b3248b15835ceacb9c2ecdd64f9a4a1e1"

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
      url "https://github.com/supabase/cli/releases/download/v0.24.7/supabase_0.24.7_linux_amd64.tar.gz"
      sha256 "9f006b75dd8c4015581bc9cb84932f8a47e8fd70ed1d9da572469bff3e1c82f1"

      def install
        bin.install "supabase"
        (bash_completion/"supabase").write `#{bin}/supabase completion bash`
        (fish_completion/"supabase.fish").write `#{bin}/supabase completion fish`
        (zsh_completion/"_supabase").write `#{bin}/supabase completion zsh`
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/supabase/cli/releases/download/v0.24.7/supabase_0.24.7_linux_arm64.tar.gz"
      sha256 "a51a1d08a100f6382b240c580937cc020232b15d585ec45c8cc576c8551ec5a3"

      def install
        bin.install "supabase"
        (bash_completion/"supabase").write `#{bin}/supabase completion bash`
        (fish_completion/"supabase.fish").write `#{bin}/supabase completion fish`
        (zsh_completion/"_supabase").write `#{bin}/supabase completion zsh`
      end
    end
  end
end
