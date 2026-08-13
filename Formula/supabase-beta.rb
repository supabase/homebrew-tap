class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.114.1-beta.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.114.1-beta.3/supabase_2.114.1-beta.3_darwin_arm64.tar.gz"
      sha256 "6066c92377269e15423e59f172e2d092602f4a7ab82e4a063d372503f49b8a2b"
    else
      url "https://github.com/supabase/cli/releases/download/v2.114.1-beta.3/supabase_2.114.1-beta.3_darwin_amd64.tar.gz"
      sha256 "4b6555879ac6cf6ea6923013f46b14a1799a08913b90af8bc31c522eca62fc85"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.114.1-beta.3/supabase_2.114.1-beta.3_linux_arm64.tar.gz"
      sha256 "a635163d8e5ba9eb8fbf232a9aa586e974ac2aa067f2a9388b199ac2a00f9385"
    else
      url "https://github.com/supabase/cli/releases/download/v2.114.1-beta.3/supabase_2.114.1-beta.3_linux_amd64.tar.gz"
      sha256 "979b8dac07ef3c70c6df08c2cca0b58df87b48a7d1c9532290ba6595c5025e3a"
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
