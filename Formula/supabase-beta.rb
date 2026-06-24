class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.108.0-beta.36"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.108.0-beta.36/supabase_2.108.0-beta.36_darwin_arm64.tar.gz"
      sha256 "1d389ef91594a404b0418968d75457855bc04149bf9eb1c7be487b4d18e804e4"
    else
      url "https://github.com/supabase/cli/releases/download/v2.108.0-beta.36/supabase_2.108.0-beta.36_darwin_amd64.tar.gz"
      sha256 "26e058cdfba2965b2f8d7ae21760beb6e6b5a252062b1d79ff95ee4b9f13f276"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.108.0-beta.36/supabase_2.108.0-beta.36_linux_arm64.tar.gz"
      sha256 "9dda3d54465f5631376a2b8cd61f082eb5af870aa8e38c273bfb95c4bcb1ebd0"
    else
      url "https://github.com/supabase/cli/releases/download/v2.108.0-beta.36/supabase_2.108.0-beta.36_linux_amd64.tar.gz"
      sha256 "1bb8c9fb659389249bd28525e69147ea1a7302c686b90dff6300c6559793fbe1"
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
