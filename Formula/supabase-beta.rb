class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.111.0-beta.13"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.111.0-beta.13/supabase_2.111.0-beta.13_darwin_arm64.tar.gz"
      sha256 "47a1fed06978f320939ecc57bf681f4fb939c8f8f42d3624a142eea498a2493f"
    else
      url "https://github.com/supabase/cli/releases/download/v2.111.0-beta.13/supabase_2.111.0-beta.13_darwin_amd64.tar.gz"
      sha256 "921fdadbb87fdba0a9c3dfe000fde06c2dfad0910dc1ff46f01e962260381daa"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.111.0-beta.13/supabase_2.111.0-beta.13_linux_arm64.tar.gz"
      sha256 "38eb3619583695686edb2f80966a5f8a54be40257df4441b03c2692dfd94729b"
    else
      url "https://github.com/supabase/cli/releases/download/v2.111.0-beta.13/supabase_2.111.0-beta.13_linux_amd64.tar.gz"
      sha256 "78c28548ff4cb134a4d4c3d6e40cbf7fc83eb973652398e305df25e55a621e4c"
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
