class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.108.0-beta.7"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.108.0-beta.7/supabase_2.108.0-beta.7_darwin_arm64.tar.gz"
      sha256 "ea087c7895777a49200189551085d6c9dfd1f4f6441d97724a3daf6898067dd6"
    else
      url "https://github.com/supabase/cli/releases/download/v2.108.0-beta.7/supabase_2.108.0-beta.7_darwin_amd64.tar.gz"
      sha256 "849b8d31a983bf3b3e459cee71605ca030a3c7f401b8111506993e18ee7d3bb5"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.108.0-beta.7/supabase_2.108.0-beta.7_linux_arm64.tar.gz"
      sha256 "7c9017ef4e9f1dde409676c41f7ecfd8fa3f9a4b8b161509f390f1f10222a5ea"
    else
      url "https://github.com/supabase/cli/releases/download/v2.108.0-beta.7/supabase_2.108.0-beta.7_linux_amd64.tar.gz"
      sha256 "e830bea0a7ebd892f180dff2c4ce235fa7152cefa6cd0dca250720ae3c4a196d"
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
