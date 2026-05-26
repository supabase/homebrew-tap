class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.102.0-beta.7"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.102.0-beta.7/supabase_2.102.0-beta.7_darwin_arm64.tar.gz"
      sha256 "9bef41afbc92b423ce81fd7eb77b05391aef7bbb123423d822bedef4a89559fd"
    else
      url "https://github.com/supabase/cli/releases/download/v2.102.0-beta.7/supabase_2.102.0-beta.7_darwin_amd64.tar.gz"
      sha256 "54cd2b3e766fa12fc9b2a5a0d0a4bcd5102e2a3491e097d5be99cc274987e41d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.102.0-beta.7/supabase_2.102.0-beta.7_linux_arm64.tar.gz"
      sha256 "f8c3eea4957850ba6808941e0fb16648294f7a0553fac2305bad0fe3a9c32eeb"
    else
      url "https://github.com/supabase/cli/releases/download/v2.102.0-beta.7/supabase_2.102.0-beta.7_linux_amd64.tar.gz"
      sha256 "731cec0d240e8b861cf6dd5205394467169c9db570fa3a2ccedd40291bce7002"
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
