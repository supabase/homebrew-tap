class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.115.1-beta.9"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.115.1-beta.9/supabase_2.115.1-beta.9_darwin_arm64.tar.gz"
      sha256 "8e8bdea9ebdfdcaca2cef0286b5ce4cdd356e84e2aa3061784c4cafa8d8f5c0b"
    else
      url "https://github.com/supabase/cli/releases/download/v2.115.1-beta.9/supabase_2.115.1-beta.9_darwin_amd64.tar.gz"
      sha256 "64d6d983dfa5149d3f2e8bc7e4351ea00f29f7d66455f5c77a6b2698dda05b2a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.115.1-beta.9/supabase_2.115.1-beta.9_linux_arm64.tar.gz"
      sha256 "5c23e3edaafb9ae5833e12078dc5f14fec54989fff0264ab1b0083c894b945cc"
    else
      url "https://github.com/supabase/cli/releases/download/v2.115.1-beta.9/supabase_2.115.1-beta.9_linux_amd64.tar.gz"
      sha256 "cbe924f249f9c6fb1110bbf2d6071a6b8481eb88267b4dc96609d510dbba05b0"
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
