class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "3.1.0-beta.5"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v3.1.0-beta.5/supabase_3.1.0-beta.5_darwin_arm64.tar.gz"
      sha256 "826f5c840fb50e2043d36155b3662ef8d1ad444b03db901218d26c31ef352164"
    else
      url "https://github.com/supabase/cli/releases/download/v3.1.0-beta.5/supabase_3.1.0-beta.5_darwin_amd64.tar.gz"
      sha256 "4c718d47b3556d8756d9e3cf61174c7a1b88d3f545ab2a262cdcf27d2afcacd3"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v3.1.0-beta.5/supabase_3.1.0-beta.5_linux_arm64.tar.gz"
      sha256 "f545823b9d098fe2c6595fc18b3adc17bc29cfd283083c6ab91d1799a1cf7b70"
    else
      url "https://github.com/supabase/cli/releases/download/v3.1.0-beta.5/supabase_3.1.0-beta.5_linux_amd64.tar.gz"
      sha256 "81019a1173761482790a21bfa5db7bb2ddd5cd0bc7ac593322b5a816a13f2379"
    end
  end

  def install
    bin.install "supabase"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/supabase --version")
  end
end
