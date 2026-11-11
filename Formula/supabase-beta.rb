class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "3.2.0-beta.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v3.2.0-beta.3/supabase_3.2.0-beta.3_darwin_arm64.tar.gz"
      sha256 "89df4fbf48e9ea3b0a54f1c44d1428000252be4b5e2bdeee96caed2a1ddca3d4"
    else
      url "https://github.com/supabase/cli/releases/download/v3.2.0-beta.3/supabase_3.2.0-beta.3_darwin_amd64.tar.gz"
      sha256 "84ec5b0c8ba562668963ad2af9ff4307b033c0d15536243764630735f2bcce3b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v3.2.0-beta.3/supabase_3.2.0-beta.3_linux_arm64.tar.gz"
      sha256 "31cd628319bbf1721f3e4dedb1fa01ccc783865017566a5ddb4544f5e2cd55f5"
    else
      url "https://github.com/supabase/cli/releases/download/v3.2.0-beta.3/supabase_3.2.0-beta.3_linux_amd64.tar.gz"
      sha256 "54c6c330e9bf4f7ee63827e9119982c673d29dac6bfd5948ee5184091c7cf89c"
    end
  end

  def install
    bin.install "supabase"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/supabase --version")
  end
end
