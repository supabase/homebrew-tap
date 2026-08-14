class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.115.0-beta.9"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.115.0-beta.9/supabase_2.115.0-beta.9_darwin_arm64.tar.gz"
      sha256 "9a79cf17d403a599de0953c307cbba6c66d0492466acdb35c5c7d1177387bfd4"
    else
      url "https://github.com/supabase/cli/releases/download/v2.115.0-beta.9/supabase_2.115.0-beta.9_darwin_amd64.tar.gz"
      sha256 "668074674fd4676801b469374b656874bbb0386425d6d021df0e646fed682a56"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.115.0-beta.9/supabase_2.115.0-beta.9_linux_arm64.tar.gz"
      sha256 "bf8210c3a3d55b43a2499ddd8e16ce5967895ea1680c67e4447010c5c019b70e"
    else
      url "https://github.com/supabase/cli/releases/download/v2.115.0-beta.9/supabase_2.115.0-beta.9_linux_amd64.tar.gz"
      sha256 "930387da566e3de4ad8212b1b56b3e3468a2d1471baa8f9bc230c7f87fdece01"
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
