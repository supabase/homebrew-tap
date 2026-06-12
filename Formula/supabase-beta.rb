class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.107.0-beta.6"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.107.0-beta.6/supabase_2.107.0-beta.6_darwin_arm64.tar.gz"
      sha256 "eeca4da023adf9297fcefa16f52b7ba3432707aa3345a28fceb3690040cbe096"
    else
      url "https://github.com/supabase/cli/releases/download/v2.107.0-beta.6/supabase_2.107.0-beta.6_darwin_amd64.tar.gz"
      sha256 "65db16fd657ccb7d039e41166438e6a68604bc3e57d2a150365a833e710a3dd8"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.107.0-beta.6/supabase_2.107.0-beta.6_linux_arm64.tar.gz"
      sha256 "964e365c4b17266aa69119b22b52b4b4257cd7e9dcfd79bec0b59bbc7b382105"
    else
      url "https://github.com/supabase/cli/releases/download/v2.107.0-beta.6/supabase_2.107.0-beta.6_linux_amd64.tar.gz"
      sha256 "9dbacd2919daf8ca70ba1ceac190bfa8fe5c6cbea07d9da910af0277d5d891e5"
    end
  end

  def install
    bin.install "supabase"
    bin.install "supabase-go" if File.exist?("supabase-go")
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/supabase --version")
  end
end
