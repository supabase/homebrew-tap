class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "3.5.0-beta.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v3.5.0-beta.1/supabase_3.5.0-beta.1_darwin_arm64.tar.gz"
      sha256 "fdb8e1cc4aa9460d9d2d77020fa04b83c32228b83b11bd516fc27abb619a1a88"
    else
      url "https://github.com/supabase/cli/releases/download/v3.5.0-beta.1/supabase_3.5.0-beta.1_darwin_amd64.tar.gz"
      sha256 "358c946ec730273b5828250f834a7d8ac29f8313a21f4189ba02c29e8b76a8f8"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v3.5.0-beta.1/supabase_3.5.0-beta.1_linux_arm64.tar.gz"
      sha256 "b07c273f0fc101fcbb907c9f0268d10a5b59cd87f567f4830ae5f72868a7b09a"
    else
      url "https://github.com/supabase/cli/releases/download/v3.5.0-beta.1/supabase_3.5.0-beta.1_linux_amd64.tar.gz"
      sha256 "9b5edb28b86fc553dcfa82d83e26e48ee85fa09710474f2149b4a66cb06fdbeb"
    end
  end

  def install
    bin.install "supabase"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/supabase --version")
  end
end
