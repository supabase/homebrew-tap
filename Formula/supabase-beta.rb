class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.115.1-beta.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.115.1-beta.3/supabase_2.115.1-beta.3_darwin_arm64.tar.gz"
      sha256 "c5857ccfd51aab3ae89fd46d9e496321d951ccdb4fbb19c53e533c92195f5a7e"
    else
      url "https://github.com/supabase/cli/releases/download/v2.115.1-beta.3/supabase_2.115.1-beta.3_darwin_amd64.tar.gz"
      sha256 "c0770bf98953ad792a8e292806708765679f002251747bc234af20b3bb5609d7"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.115.1-beta.3/supabase_2.115.1-beta.3_linux_arm64.tar.gz"
      sha256 "686c35baac18eaa25a433dbe22a59cdf3d59380173359bb0b004b9f72271c79a"
    else
      url "https://github.com/supabase/cli/releases/download/v2.115.1-beta.3/supabase_2.115.1-beta.3_linux_amd64.tar.gz"
      sha256 "b453a39f5eb442456d1d6bc2ac56a0a3a59e291cee6099b4ba606709794242f0"
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
