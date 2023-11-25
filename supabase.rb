# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Supabase < Formula
    desc "Supabase CLI"
    homepage "https://supabase.com"
    version "1.113.3"
    license "MIT"
  
    on_macos do
      if Hardware::CPU.arm?
        url "https://github.com/supabase/cli/releases/download/v1.113.3/supabase_darwin_arm64.tar.gz"
        sha256 "1cdd0673cdab31e66ad2856ff9c794a82c08030bd6521c33deaf9569bfffb138"
  
        def install
          bin.install "supabase"
          (bash_completion/"supabase").write `#{bin}/supabase completion bash`
          (fish_completion/"supabase.fish").write `#{bin}/supabase completion fish`
          (zsh_completion/"_supabase").write `#{bin}/supabase completion zsh`
        end
      end
      if Hardware::CPU.intel?
        url "https://github.com/supabase/cli/releases/download/v1.113.3/supabase_darwin_amd64.tar.gz"
        sha256 "8f905562773529b5a783509b41d92c9eca0f4255ae86b1b7fcef02afdcb56f38"
  
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
        url "https://github.com/supabase/cli/releases/download/v1.113.3/supabase_linux_arm64.tar.gz"
        sha256 "063f0d51b3edb2873febbe9999d100109dfb8fcd17ea07542ce0d34faf2231ce"
  
        def install
          bin.install "supabase"
          (bash_completion/"supabase").write `#{bin}/supabase completion bash`
          (fish_completion/"supabase.fish").write `#{bin}/supabase completion fish`
          (zsh_completion/"_supabase").write `#{bin}/supabase completion zsh`
        end
      end
      if Hardware::CPU.intel?
        url "https://github.com/supabase/cli/releases/download/v1.113.3/supabase_linux_amd64.tar.gz"
        sha256 "8620eb17cb0fee4747622735744c6a176ff0a323fa2964f6125021ffc20f6e01"
  
        def install
          bin.install "supabase"
          (bash_completion/"supabase").write `#{bin}/supabase completion bash`
          (fish_completion/"supabase.fish").write `#{bin}/supabase completion fish`
          (zsh_completion/"_supabase").write `#{bin}/supabase completion zsh`
        end
      end
    end
  end