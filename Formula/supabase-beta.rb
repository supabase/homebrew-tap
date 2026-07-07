class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.109.1-beta.22"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.109.1-beta.22/supabase_2.109.1-beta.22_darwin_arm64.tar.gz"
      sha256 "62593d4954757fba2c992614f006d6931c6b8342f0595afaa3b846de7ad56b2c"
    else
      url "https://github.com/supabase/cli/releases/download/v2.109.1-beta.22/supabase_2.109.1-beta.22_darwin_amd64.tar.gz"
      sha256 "867f5d7099c44f4a431fc8e1e0451ffa6c2f967fd465b869b85670f9560f73e0"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.109.1-beta.22/supabase_2.109.1-beta.22_linux_arm64.tar.gz"
      sha256 "46055c460094dd7ca02eff334e0339518aecdd8ba51b32abf9d1f81de9aba716"
    else
      url "https://github.com/supabase/cli/releases/download/v2.109.1-beta.22/supabase_2.109.1-beta.22_linux_amd64.tar.gz"
      sha256 "96f3fc889f7997acece14413155bda0bb2a951b50bf41eaae1296e5811acd552"
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
