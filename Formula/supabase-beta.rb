class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.110.0-beta.8"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.110.0-beta.8/supabase_2.110.0-beta.8_darwin_arm64.tar.gz"
      sha256 "e0b0c8f1f2636bb96996b278f8aceb78ecaa19c8e0956c3ec7df887986abb584"
    else
      url "https://github.com/supabase/cli/releases/download/v2.110.0-beta.8/supabase_2.110.0-beta.8_darwin_amd64.tar.gz"
      sha256 "d138ab787060e16462ab787b53639ca19828fff12366b611c83e81d509c15e85"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.110.0-beta.8/supabase_2.110.0-beta.8_linux_arm64.tar.gz"
      sha256 "65eb48435a96a795b853e30b58d4b71616e9a227292fb95f1dda2b6fea82cc7b"
    else
      url "https://github.com/supabase/cli/releases/download/v2.110.0-beta.8/supabase_2.110.0-beta.8_linux_amd64.tar.gz"
      sha256 "b95e41bbdd103be03e97c23dec2805a0bc9beb7ab9cb5dd915d2db67cea806db"
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
