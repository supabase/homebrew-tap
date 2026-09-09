class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.118.0-beta.13"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.118.0-beta.13/supabase_2.118.0-beta.13_darwin_arm64.tar.gz"
      sha256 "49c59c71ddbba93e04d5b3d21982e17c906404e25ce55e5d6029d3a5f5819834"
    else
      url "https://github.com/supabase/cli/releases/download/v2.118.0-beta.13/supabase_2.118.0-beta.13_darwin_amd64.tar.gz"
      sha256 "4780774af696c0cab9db112f73c7f5806ad01a6e9d9d1e45d05e90c164ea0e35"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.118.0-beta.13/supabase_2.118.0-beta.13_linux_arm64.tar.gz"
      sha256 "88991565bb3bdd5a2537423eabce8dc6c529adc42a415341672052830b0c3496"
    else
      url "https://github.com/supabase/cli/releases/download/v2.118.0-beta.13/supabase_2.118.0-beta.13_linux_amd64.tar.gz"
      sha256 "22b1cdc0d425ae7d50ab6c6baee6a5ae35007bf83fdd0c9a6b36bf203db6088a"
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
