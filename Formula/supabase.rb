class Supabase < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.100.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.100.0/supabase_2.100.0_darwin_arm64.tar.gz"
      sha256 "9db2c22d46446ab5ed08de31c19278bf0bcc01f91ae93e09954f4b91cc655364"
    else
      url "https://github.com/supabase/cli/releases/download/v2.100.0/supabase_2.100.0_darwin_amd64.tar.gz"
      sha256 "a2f129299e9f59ae6b231d7cb9fafd33827ffb6b30c94ac75a11ec2376ed11c4"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.100.0/supabase_2.100.0_linux_arm64.tar.gz"
      sha256 "e4bbb59373308bcc64e56996079af4d7b27c9f95541fbdffb78342afc56c59b9"
    else
      url "https://github.com/supabase/cli/releases/download/v2.100.0/supabase_2.100.0_linux_amd64.tar.gz"
      sha256 "b4d772432983d9037fee02192d0e9861d073da4a8f171f5106a3e09985da56db"
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
