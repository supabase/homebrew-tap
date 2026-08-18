class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.115.0-beta.19"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.115.0-beta.19/supabase_2.115.0-beta.19_darwin_arm64.tar.gz"
      sha256 "88f6a4c3d784d130c5cf859e8082dbaebb82e6ea7092f3943f8a7a4611d21037"
    else
      url "https://github.com/supabase/cli/releases/download/v2.115.0-beta.19/supabase_2.115.0-beta.19_darwin_amd64.tar.gz"
      sha256 "114006b46fe1eb0d926395b6204760eb5c5d2e7161f1e0241c35f2358af176f6"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.115.0-beta.19/supabase_2.115.0-beta.19_linux_arm64.tar.gz"
      sha256 "ca4dac3acf7c1252030821fa3dcc808c29f80f624a79cddefce24b94d1f45c6c"
    else
      url "https://github.com/supabase/cli/releases/download/v2.115.0-beta.19/supabase_2.115.0-beta.19_linux_amd64.tar.gz"
      sha256 "d04e1c3c7f5706d267c1a029978378f1fefdb5e47f2ff6e6f0a2de3d4bd17b1a"
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
