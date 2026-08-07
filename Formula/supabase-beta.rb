class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.113.0-beta.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.113.0-beta.1/supabase_2.113.0-beta.1_darwin_arm64.tar.gz"
      sha256 "64225198bc1409fdcf5a31a828c3ee60fbedff16f004472ff0ffb5e227fb0392"
    else
      url "https://github.com/supabase/cli/releases/download/v2.113.0-beta.1/supabase_2.113.0-beta.1_darwin_amd64.tar.gz"
      sha256 "7d54366295f8cc42925f69ab774b7030df3672ad87a50d8c224420b6777f2aa3"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.113.0-beta.1/supabase_2.113.0-beta.1_linux_arm64.tar.gz"
      sha256 "e48c986750f70bc8db642908a481034a28271cde0bec5ec98260f7001d1ca533"
    else
      url "https://github.com/supabase/cli/releases/download/v2.113.0-beta.1/supabase_2.113.0-beta.1_linux_amd64.tar.gz"
      sha256 "0c77154caa4990efca56385afd8cb669db5db6c67ac3a70f4f56909156a4933e"
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
