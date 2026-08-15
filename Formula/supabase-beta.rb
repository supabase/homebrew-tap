class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.115.0-beta.12"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.115.0-beta.12/supabase_2.115.0-beta.12_darwin_arm64.tar.gz"
      sha256 "57ff8180aa29d6c25024c5213e7a2c0b237bd2157a19e130b76c839001ef49f5"
    else
      url "https://github.com/supabase/cli/releases/download/v2.115.0-beta.12/supabase_2.115.0-beta.12_darwin_amd64.tar.gz"
      sha256 "d425ce254b7c618cd474fc01f5cee0fad69e8d48dc494200bfe4ca94f29d1b6f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.115.0-beta.12/supabase_2.115.0-beta.12_linux_arm64.tar.gz"
      sha256 "a08ba2210003f0de0248aa81758b29f2e80c4a7a8513b263b4d563ff6a1227e8"
    else
      url "https://github.com/supabase/cli/releases/download/v2.115.0-beta.12/supabase_2.115.0-beta.12_linux_amd64.tar.gz"
      sha256 "f059938a2d01f389e5047a306a1c67968c6ae2f50b504cf717e5586bcc07e76d"
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
