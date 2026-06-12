class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.107.0-beta.10"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.107.0-beta.10/supabase_2.107.0-beta.10_darwin_arm64.tar.gz"
      sha256 "a75a616d6bdea56a94e51046484043a58466cabe78b70abcf00cb000cacedb79"
    else
      url "https://github.com/supabase/cli/releases/download/v2.107.0-beta.10/supabase_2.107.0-beta.10_darwin_amd64.tar.gz"
      sha256 "59a4dd92be7fc6c68780c2c4e06fd7957536eac9e9d2cdc42eb191533f7fccba"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.107.0-beta.10/supabase_2.107.0-beta.10_linux_arm64.tar.gz"
      sha256 "d80f4beb9595f00b0a8f8a0bedcf09c131eeee705904b96cd554ff3d117ddcb7"
    else
      url "https://github.com/supabase/cli/releases/download/v2.107.0-beta.10/supabase_2.107.0-beta.10_linux_amd64.tar.gz"
      sha256 "dc6c8ce5d68386f30b9b96b030900aa487a44d1eba25a0278778df6bd58104aa"
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
