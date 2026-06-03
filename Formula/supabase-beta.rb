class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.105.0-beta.5"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.105.0-beta.5/supabase_2.105.0-beta.5_darwin_arm64.tar.gz"
      sha256 "0454c9f17ce4b4daed8803f8432e866edc4289392666b2cbd43a4ec6b0c3cb12"
    else
      url "https://github.com/supabase/cli/releases/download/v2.105.0-beta.5/supabase_2.105.0-beta.5_darwin_amd64.tar.gz"
      sha256 "f1ad45fd3bbce4774140fa8e6819559e8affe481eeb871db776e30a43c2deefd"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.105.0-beta.5/supabase_2.105.0-beta.5_linux_arm64.tar.gz"
      sha256 "98201d41b7b5ba57272688601cf31bcdb52c45237339d276baa13bd0b4947148"
    else
      url "https://github.com/supabase/cli/releases/download/v2.105.0-beta.5/supabase_2.105.0-beta.5_linux_amd64.tar.gz"
      sha256 "bf6d2886bddc8373bf1c9f772155fd16b48bad81701ce0fa2a149f7424725411"
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
