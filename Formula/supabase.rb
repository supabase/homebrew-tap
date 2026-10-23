class Supabase < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.122.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.122.0/supabase_2.122.0_darwin_arm64.tar.gz"
      sha256 "fe87a5f9781d5423dbd5ebba2d5a6e1a541d01754d14941c574952e5695eaab0"
    else
      url "https://github.com/supabase/cli/releases/download/v2.122.0/supabase_2.122.0_darwin_amd64.tar.gz"
      sha256 "8be7d5bb00091e67618d12fb0a4a1bb10624c69435ecd5b9b95d91d571cc34d8"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.122.0/supabase_2.122.0_linux_arm64.tar.gz"
      sha256 "8980b46044aba0863f26a1b4134a498d2c74df0dadf24289bb4faa86729511cc"
    else
      url "https://github.com/supabase/cli/releases/download/v2.122.0/supabase_2.122.0_linux_amd64.tar.gz"
      sha256 "59ed066847b98d7461c60e9109d40cab6b9756177ce06ebb05b51338519f5136"
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
