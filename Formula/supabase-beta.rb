class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.112.0-beta.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.112.0-beta.4/supabase_2.112.0-beta.4_darwin_arm64.tar.gz"
      sha256 "b3975ff7acd9408278c51c2d0f43022adf21fbdd9e25fa4a5aa3b549ee7aa86a"
    else
      url "https://github.com/supabase/cli/releases/download/v2.112.0-beta.4/supabase_2.112.0-beta.4_darwin_amd64.tar.gz"
      sha256 "c02401defec97c66a03e2a53ca401df36451f576354265a8dd38b618f6af84e4"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.112.0-beta.4/supabase_2.112.0-beta.4_linux_arm64.tar.gz"
      sha256 "9219899120bf6a856586d48ed2ca945b1df81a8e84cfd9db02f66bd1b62ff5e9"
    else
      url "https://github.com/supabase/cli/releases/download/v2.112.0-beta.4/supabase_2.112.0-beta.4_linux_amd64.tar.gz"
      sha256 "ce4949498d5b79be11ba35e78aba5213bb6dbba4298cbe322c48d5b33211ced9"
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
