class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "3.3.0-beta.5"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v3.3.0-beta.5/supabase_3.3.0-beta.5_darwin_arm64.tar.gz"
      sha256 "6278051b9e338aead90c951178a108929b55b4564b3366168719fc9530623dff"
    else
      url "https://github.com/supabase/cli/releases/download/v3.3.0-beta.5/supabase_3.3.0-beta.5_darwin_amd64.tar.gz"
      sha256 "bb04987e39960762e3678b957421f91df8635a303e242634b6907d0351cb4ec5"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v3.3.0-beta.5/supabase_3.3.0-beta.5_linux_arm64.tar.gz"
      sha256 "5355397ffbee75192470507346baa54f245f52ee5a2a68893502db7c09781395"
    else
      url "https://github.com/supabase/cli/releases/download/v3.3.0-beta.5/supabase_3.3.0-beta.5_linux_amd64.tar.gz"
      sha256 "5fe965648729872ec897723705f01b369f237f0037461da3b247d259ce3d9682"
    end
  end

  def install
    bin.install "supabase"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/supabase --version")
  end
end
