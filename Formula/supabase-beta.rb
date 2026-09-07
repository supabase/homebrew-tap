class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.117.0-beta.22"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.117.0-beta.22/supabase_2.117.0-beta.22_darwin_arm64.tar.gz"
      sha256 "afb90ece006c7d4960fb04202a1498787767111d8cdbd7397a9906f9d350d5e0"
    else
      url "https://github.com/supabase/cli/releases/download/v2.117.0-beta.22/supabase_2.117.0-beta.22_darwin_amd64.tar.gz"
      sha256 "ce74194b9b5f6188ef82e1b216df4788e64b9207892a8dd2f387846deabb54c0"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.117.0-beta.22/supabase_2.117.0-beta.22_linux_arm64.tar.gz"
      sha256 "c2f9aac28f83e8c4d8a8f5c834c0dfbd068c0ac1979591d4e730bb750ec45191"
    else
      url "https://github.com/supabase/cli/releases/download/v2.117.0-beta.22/supabase_2.117.0-beta.22_linux_amd64.tar.gz"
      sha256 "d0e38663fcbb6bdcbb3d3d1ac4500044b9c452f60b612bd7cfa6da14b59b1561"
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
