class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.111.0-beta.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.111.0-beta.1/supabase_2.111.0-beta.1_darwin_arm64.tar.gz"
      sha256 "de353881ca2668d21de1dc16d8b17998fb2fdda1023ee841f91a29f6dabca6cd"
    else
      url "https://github.com/supabase/cli/releases/download/v2.111.0-beta.1/supabase_2.111.0-beta.1_darwin_amd64.tar.gz"
      sha256 "e7b11ba0aab96019f32f58823f7eaff2fd5870d2b914495eb734666177df9bd0"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.111.0-beta.1/supabase_2.111.0-beta.1_linux_arm64.tar.gz"
      sha256 "e699dc2c5a2c4987e6852affc80fc3e50d3bf3eeec51c640a33300a2f3e72604"
    else
      url "https://github.com/supabase/cli/releases/download/v2.111.0-beta.1/supabase_2.111.0-beta.1_linux_amd64.tar.gz"
      sha256 "8726bf1d42696839bf893aeccfe254841bce0b05fa7c426730d52f9ad6dbaa0e"
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
