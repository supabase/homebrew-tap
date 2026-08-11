class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.114.0-beta.6"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.114.0-beta.6/supabase_2.114.0-beta.6_darwin_arm64.tar.gz"
      sha256 "4d1e01885584fdc3c8386b1022db5acb0b2027a2365373f85af1089d1a66a633"
    else
      url "https://github.com/supabase/cli/releases/download/v2.114.0-beta.6/supabase_2.114.0-beta.6_darwin_amd64.tar.gz"
      sha256 "fb038be088cdbec30e331833d168a7d96f191fd08bd2197abe9c7d3ef2bca36b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.114.0-beta.6/supabase_2.114.0-beta.6_linux_arm64.tar.gz"
      sha256 "2eecf3f849ee8114ce3b0729514f431d8db00a52fd544e27f1604b3a6904a182"
    else
      url "https://github.com/supabase/cli/releases/download/v2.114.0-beta.6/supabase_2.114.0-beta.6_linux_amd64.tar.gz"
      sha256 "fbde9d06bea61a393126f6a1242144c53cefecbcd09203dd583d88d21ffd55b8"
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
