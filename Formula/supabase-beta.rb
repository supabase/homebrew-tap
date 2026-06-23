class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.108.0-beta.24"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.108.0-beta.24/supabase_2.108.0-beta.24_darwin_arm64.tar.gz"
      sha256 "ea833a1b6c7e8b61fd0f9aefe1a0378aefe7e30a77ec6d21c005e77099f937fd"
    else
      url "https://github.com/supabase/cli/releases/download/v2.108.0-beta.24/supabase_2.108.0-beta.24_darwin_amd64.tar.gz"
      sha256 "5df8c9b426605c8b1f1e3f74daf34601474225f1e9bf189bd04568bc3b325fe1"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.108.0-beta.24/supabase_2.108.0-beta.24_linux_arm64.tar.gz"
      sha256 "1bbc83a0f9713e9b642e0f43bb71adfe9fe9cbc95cbf94d6246d67e10cabed67"
    else
      url "https://github.com/supabase/cli/releases/download/v2.108.0-beta.24/supabase_2.108.0-beta.24_linux_amd64.tar.gz"
      sha256 "003e64657644f0244cb0c0ffb446b9b293242ce239f74526d2be0ffa14fb83c9"
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
