class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.111.1-beta.13"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.111.1-beta.13/supabase_2.111.1-beta.13_darwin_arm64.tar.gz"
      sha256 "16c5d1437fdd58c5ac32327610b56971ed4d1da2cbd4544bb3d43b2af9ab9de3"
    else
      url "https://github.com/supabase/cli/releases/download/v2.111.1-beta.13/supabase_2.111.1-beta.13_darwin_amd64.tar.gz"
      sha256 "93ed5e5a3a1976fe434c0bac4c1c015d20998765e270962299cc75be8d5935b0"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.111.1-beta.13/supabase_2.111.1-beta.13_linux_arm64.tar.gz"
      sha256 "cdc44ad235956f85beb82c355e6664e6b4b3782971cd057ccdf9cb819c5411de"
    else
      url "https://github.com/supabase/cli/releases/download/v2.111.1-beta.13/supabase_2.111.1-beta.13_linux_amd64.tar.gz"
      sha256 "8dbf12b49b6b5a7acca0cde8bbb9b3a447afe0d9ddca4413da07d3601ce38548"
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
