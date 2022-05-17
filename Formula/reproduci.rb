class Reproduci < Formula
  include Language::Python::Virtualenv

  desc "Companion tool to reproduci"
  homepage ""
  url "https://github.com/gastrovec/reproducipy/archive/refs/tags/v0.7.0.tar.gz"
  sha256 "954ee649d0e1d4f4c555348b59b61a88c00879feea6d3eb2d46fb59e26aa2a96"
  license ""

  depends_on "python"

  resource "click" do
    url "https://files.pythonhosted.org/packages/27/6f/be940c8b1f1d69daceeb0032fee6c34d7bd70e3e649ccac0951500b4720e/click-7.1.2.tar.gz"
    sha256 "d2b5255c7c6349bc1bd1e59e08cd12acbbd63ce649f2588755783aa94dfb6b1a"
  end

  def install
    # ENV.deparallelize  # if your formula fails when building in parallel
    virtualenv_install_with_resources
  end
end
