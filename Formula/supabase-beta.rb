class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.105.0-beta.7"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.105.0-beta.7/supabase_2.105.0-beta.7_darwin_arm64.tar.gz"
      sha256 "eecab0a6dc96698f2fedcde8292ad734ec6b003f213a0c68503cfa6c6c94c9a0"
    else
      url "https://github.com/supabase/cli/releases/download/v2.105.0-beta.7/supabase_2.105.0-beta.7_darwin_amd64.tar.gz"
      sha256 "1215e77e4618f90c2d0de91429c285fd3781b7e74400e947e01a6584903b11aa"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.105.0-beta.7/supabase_2.105.0-beta.7_linux_arm64.tar.gz"
      sha256 "c45b696e38bac447db79b4070533f655bf58acccf8fb77928d6de68386d02ccc"
    else
      url "https://github.com/supabase/cli/releases/download/v2.105.0-beta.7/supabase_2.105.0-beta.7_linux_amd64.tar.gz"
      sha256 "9d2eeef1b1791ef3cb62789f8fb874ebec3acaa4b1ff966c1b9af157a2d93560"
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
