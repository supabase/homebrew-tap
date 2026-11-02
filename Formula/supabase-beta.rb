class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "3.1.0-beta.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v3.1.0-beta.1/supabase_3.1.0-beta.1_darwin_arm64.tar.gz"
      sha256 "85e2394971cdb4ed4f4e5625120640aba6d152a9d7edf24a2792946fb3b98034"
    else
      url "https://github.com/supabase/cli/releases/download/v3.1.0-beta.1/supabase_3.1.0-beta.1_darwin_amd64.tar.gz"
      sha256 "8239facc85cbcacdf9f070e5d58757f653cd9af5149459f9ea24e8474b7f33c6"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v3.1.0-beta.1/supabase_3.1.0-beta.1_linux_arm64.tar.gz"
      sha256 "372b14b35ecd2a05f12e64e172f1bc4b24780ee8e9725b7358b4603df507e2c1"
    else
      url "https://github.com/supabase/cli/releases/download/v3.1.0-beta.1/supabase_3.1.0-beta.1_linux_amd64.tar.gz"
      sha256 "134c0ceb03482dd3aeb524950346c20d4e46d896d663fdab7c27f9d14ed0c58b"
    end
  end

  def install
    bin.install "supabase"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/supabase --version")
  end
end
