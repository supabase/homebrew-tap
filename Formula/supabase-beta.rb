class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "3.0.0-beta.7"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v3.0.0-beta.7/supabase_3.0.0-beta.7_darwin_arm64.tar.gz"
      sha256 "7628434ddf646d4137bcd991f3582ca0818b8330bbd9c889d612c3a52fc9069e"
    else
      url "https://github.com/supabase/cli/releases/download/v3.0.0-beta.7/supabase_3.0.0-beta.7_darwin_amd64.tar.gz"
      sha256 "3464030e8f15c7f01c8662b028a0e90c74764a40253afe6701297a0e58bc91f8"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v3.0.0-beta.7/supabase_3.0.0-beta.7_linux_arm64.tar.gz"
      sha256 "1f2a493d4785ee2ca4ed081f58230be547a0190e45926a02c348e0a96797508d"
    else
      url "https://github.com/supabase/cli/releases/download/v3.0.0-beta.7/supabase_3.0.0-beta.7_linux_amd64.tar.gz"
      sha256 "dd3a7066f865c389f8742d5ac6d6fd01730ec66ce356997cb40de52228c9223e"
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
