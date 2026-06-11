class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.106.0-beta.22"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.106.0-beta.22/supabase_2.106.0-beta.22_darwin_arm64.tar.gz"
      sha256 "35a6cfa65a8495ebf9d461dadfdf25305046fb5cfe8be8ae75aea89869f94d6a"
    else
      url "https://github.com/supabase/cli/releases/download/v2.106.0-beta.22/supabase_2.106.0-beta.22_darwin_amd64.tar.gz"
      sha256 "b62a1432f198ba259034d18f15e3f325e7ece220c741ce985a331553abc4fe90"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.106.0-beta.22/supabase_2.106.0-beta.22_linux_arm64.tar.gz"
      sha256 "10d738fe6671c530c4943e8612e4822a0201f46c1e27d38a6bb4242a21d40b22"
    else
      url "https://github.com/supabase/cli/releases/download/v2.106.0-beta.22/supabase_2.106.0-beta.22_linux_amd64.tar.gz"
      sha256 "da7a93d7ba3254fc5c1f04ce30782a4d39a97934b41993d41cddfb6f7e6073cd"
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
