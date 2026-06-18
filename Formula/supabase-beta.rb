class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.108.0-beta.5"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.108.0-beta.5/supabase_2.108.0-beta.5_darwin_arm64.tar.gz"
      sha256 "40766add36914ae3d1052c60988111cb73123f71715f3472c52c0b14859fdc1d"
    else
      url "https://github.com/supabase/cli/releases/download/v2.108.0-beta.5/supabase_2.108.0-beta.5_darwin_amd64.tar.gz"
      sha256 "70de8322decb8b83905cd2db3e060a2fb077d09c456d1458e815bc90254ace67"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.108.0-beta.5/supabase_2.108.0-beta.5_linux_arm64.tar.gz"
      sha256 "38727367566965182564b6cdeafb716182bc8b9ec254c6812d806f95bb004809"
    else
      url "https://github.com/supabase/cli/releases/download/v2.108.0-beta.5/supabase_2.108.0-beta.5_linux_amd64.tar.gz"
      sha256 "67e9a82926d5196e39ffb5f31ce8514d5ad91d15c0a1babbc6c6900f70bb705a"
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
