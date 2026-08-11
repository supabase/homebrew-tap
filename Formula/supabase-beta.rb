class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.114.0-beta.7"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.114.0-beta.7/supabase_2.114.0-beta.7_darwin_arm64.tar.gz"
      sha256 "b8a17e244645e89c79c20cd7dd77afbb4ee055c16b308120120745411a205bc0"
    else
      url "https://github.com/supabase/cli/releases/download/v2.114.0-beta.7/supabase_2.114.0-beta.7_darwin_amd64.tar.gz"
      sha256 "f780f9dba77735c371a40d7bcee968cdde4c8729cdb18767ec289643ab1ee8e8"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.114.0-beta.7/supabase_2.114.0-beta.7_linux_arm64.tar.gz"
      sha256 "204db0032f16ab70c29fec79ff514e9648ff429b131e465560150f87c45341b7"
    else
      url "https://github.com/supabase/cli/releases/download/v2.114.0-beta.7/supabase_2.114.0-beta.7_linux_amd64.tar.gz"
      sha256 "e0941359c573bffae0f175fdf546227653d3045efba829d80ecda873d026afbc"
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
