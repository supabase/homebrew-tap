class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.102.0-beta.18"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.102.0-beta.18/supabase_2.102.0-beta.18_darwin_arm64.tar.gz"
      sha256 "a2990731e4110f76ec5f5ca6d9bff4e84c9034f062f63b065ad87a8cfc989387"
    else
      url "https://github.com/supabase/cli/releases/download/v2.102.0-beta.18/supabase_2.102.0-beta.18_darwin_amd64.tar.gz"
      sha256 "5400f836aaae3fdf5c37b105a886e0f1a97ae281d0609947bcbaaf29bf50a2c5"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.102.0-beta.18/supabase_2.102.0-beta.18_linux_arm64.tar.gz"
      sha256 "87dd356690e0e269e91ce0c4046420b202c83798f6162c4ec77b03442f512a22"
    else
      url "https://github.com/supabase/cli/releases/download/v2.102.0-beta.18/supabase_2.102.0-beta.18_linux_amd64.tar.gz"
      sha256 "e3b8698ea8285c8055ac81068dd35540ec55871f602b98709e0f097b4c27122f"
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
