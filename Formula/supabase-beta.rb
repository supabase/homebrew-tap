class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.108.0-beta.10"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.108.0-beta.10/supabase_2.108.0-beta.10_darwin_arm64.tar.gz"
      sha256 "16892b56ef77f3a4d64cb7cd7bc94dfce2cda1f55a780101526ee1e5d6fe8daf"
    else
      url "https://github.com/supabase/cli/releases/download/v2.108.0-beta.10/supabase_2.108.0-beta.10_darwin_amd64.tar.gz"
      sha256 "0ae61746a3d823deb11c49205d2c216d896b60a1d7815bf36c0bd91d7d755673"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.108.0-beta.10/supabase_2.108.0-beta.10_linux_arm64.tar.gz"
      sha256 "27aefefd248384ad2edc8aaa7eb45288cdda770ad9201ae6322ac1a5187a61bb"
    else
      url "https://github.com/supabase/cli/releases/download/v2.108.0-beta.10/supabase_2.108.0-beta.10_linux_amd64.tar.gz"
      sha256 "7a238490a60fe201c5ee62836b8f86c3406b87a478f41568eb1f6284fd1253e6"
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
