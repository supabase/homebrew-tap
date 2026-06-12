class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.107.0-beta.8"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.107.0-beta.8/supabase_2.107.0-beta.8_darwin_arm64.tar.gz"
      sha256 "db2074cccdc68a0ac7f88472ff447bd18556f36797d0d399b51dfb8642be8649"
    else
      url "https://github.com/supabase/cli/releases/download/v2.107.0-beta.8/supabase_2.107.0-beta.8_darwin_amd64.tar.gz"
      sha256 "67c70e2daf4c5a0838326e9a2ee5240f5565ebdece47976203cdd1328ca85393"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.107.0-beta.8/supabase_2.107.0-beta.8_linux_arm64.tar.gz"
      sha256 "fca21d45f729e62b7bc11257eddb00293452331bdad51a2487b3239a3e5269e7"
    else
      url "https://github.com/supabase/cli/releases/download/v2.107.0-beta.8/supabase_2.107.0-beta.8_linux_amd64.tar.gz"
      sha256 "f3b90003f032d045e452f9ade62326949f970171c1e3b60b1abec9d1b78a1512"
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
