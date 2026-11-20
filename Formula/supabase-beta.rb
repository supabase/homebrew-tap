class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "3.3.0-beta.10"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v3.3.0-beta.10/supabase_3.3.0-beta.10_darwin_arm64.tar.gz"
      sha256 "9f4fbae8a83da013f9649f12bb2da37af149ebb9e2663bba0b5be088e87038e8"
    else
      url "https://github.com/supabase/cli/releases/download/v3.3.0-beta.10/supabase_3.3.0-beta.10_darwin_amd64.tar.gz"
      sha256 "3a3e89b48d0b5238bd0eab4792c56ccb6fe4a12bb03c785329533e87639adc17"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v3.3.0-beta.10/supabase_3.3.0-beta.10_linux_arm64.tar.gz"
      sha256 "670b7bb1be2113ff47e84abfe77e4ddc8df36694b7b09d9b3db43ef950693f09"
    else
      url "https://github.com/supabase/cli/releases/download/v3.3.0-beta.10/supabase_3.3.0-beta.10_linux_amd64.tar.gz"
      sha256 "c0115eb2c2f49af0224e152d93f4939cecf6d44676b58d2bebc234a6e07cdf1d"
    end
  end

  def install
    bin.install "supabase"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/supabase --version")
  end
end
