self: super:
{
  ghdl = super.ghdl.overrideAttrs(old: {
    configureFlags = "--enable-synth";
  });
}

