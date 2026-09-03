class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "3.0.0-beta.11"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v3.0.0-beta.11/supabase_3.0.0-beta.11_darwin_arm64.tar.gz"
      sha256 "c22c8a40a9ff3cbdd2f11b032d163877956c77274b194dbb0a777564e9ab1cfb"
    else
      url "https://github.com/supabase/cli/releases/download/v3.0.0-beta.11/supabase_3.0.0-beta.11_darwin_amd64.tar.gz"
      sha256 "59d671aac6a4423f514d02ac7007142932d6f94f882966563990b8929f3e913e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v3.0.0-beta.11/supabase_3.0.0-beta.11_linux_arm64.tar.gz"
      sha256 "e176a89411aede36fd0a1861ba8bcd3c4e86ad231ae094550941ad21dfb9bcb9"
    else
      url "https://github.com/supabase/cli/releases/download/v3.0.0-beta.11/supabase_3.0.0-beta.11_linux_amd64.tar.gz"
      sha256 "25ad84a408f66c426e5c5e994990be902e84859e48bb98609270bb3a2244e32c"
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
