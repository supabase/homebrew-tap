class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.104.0-beta.5"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.104.0-beta.5/supabase_2.104.0-beta.5_darwin_arm64.tar.gz"
      sha256 "b069c5fc09983fded3af23ff68467ecc66b1ccea0350fc9e50dbdf1c8d579463"
    else
      url "https://github.com/supabase/cli/releases/download/v2.104.0-beta.5/supabase_2.104.0-beta.5_darwin_amd64.tar.gz"
      sha256 "1b00f59bdd42e143077d7b04626c0239d11711dcb2065336b27801a5f1f396c7"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.104.0-beta.5/supabase_2.104.0-beta.5_linux_arm64.tar.gz"
      sha256 "dee3d2b7e82599fdf79d88a53ffec26af9644c97021c5a1ef7f9f65f85c68689"
    else
      url "https://github.com/supabase/cli/releases/download/v2.104.0-beta.5/supabase_2.104.0-beta.5_linux_amd64.tar.gz"
      sha256 "03132e156f54ddc0e256a82a6793af2d1584428a9e6b502172f6eed10c5565b0"
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
