class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.117.0-beta.10"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.117.0-beta.10/supabase_2.117.0-beta.10_darwin_arm64.tar.gz"
      sha256 "92eb1942525ec4b7a4d6ded9ee8a984a3122b1264c1ccefb8f50234734d196ae"
    else
      url "https://github.com/supabase/cli/releases/download/v2.117.0-beta.10/supabase_2.117.0-beta.10_darwin_amd64.tar.gz"
      sha256 "bf61dc531b32229509f442aaa740fc061a5024e3a924e2744e3f7d88a7963ca7"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.117.0-beta.10/supabase_2.117.0-beta.10_linux_arm64.tar.gz"
      sha256 "b4e85f6873d8fe20cf6fabae864e6ff90bdf4224c31a2337f548522d08973136"
    else
      url "https://github.com/supabase/cli/releases/download/v2.117.0-beta.10/supabase_2.117.0-beta.10_linux_amd64.tar.gz"
      sha256 "02316069d7960646a7caf0efc6e54d7ce1c337eeaf99f4ff56083837c5994f1e"
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
