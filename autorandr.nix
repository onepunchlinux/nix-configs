{
  enable = true;
  profiles = {
    "solo" = {
      fingerprint = {
        eDP-1 = "00ffffffffffff004d10b91400000000161d0104a52213780ebfc8ae4c35c2230a5054000000010101010101010101010101010101014dd000a0f0703e803020350058c210000018000000000000000000000000000000000000000000fe004e35563843804c513135364431000000000002410332011200000b010a202000e8";
      };
      config = {
        eDP-1 = {
          enable = true;
          primary = true;
          position = "0x0";
          mode = "3840x2160";
          rate = "60.00";
        };
      };
    };
    "desk" = {
      fingerprint = {
        eDP-1 = "00ffffffffffff004d10b91400000000161d0104a52213780ebfc8ae4c35c2230a5054000000010101010101010101010101010101014dd000a0f0703e803020350058c210000018000000000000000000000000000000000000000000fe004e35563843804c513135364431000000000002410332011200000b010a202000e8";
        DP-1 = "00ffffffffffff001e6d095bd3740000051c0104b53c22789e3035a7554ea3260f50542108007140818081c0a9c0d1c08100010101014dd000a0f0703e803020650c58542100001a286800a0f0703e800890650c58542100001a000000fd00383d1e8738000a202020202020000000fc004c4720556c7472612048440a2001530203117144900403012309070783010000023a801871382d40582c450058542100001e565e00a0a0a029503020350058542100001a0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000c8";
      };
      config = {
        eDP-1 = {
          enable = true;
          primary = true;
          position = "0x0";
          mode = "3840x2160";
          gamma = "0:0:0";
          rate = "60.00";
        };
        DP-1 = {
          enable = true;
          primary = false;
          position = "3840x0";
          mode = "3840x2160";
          gamma = "0:0:0";
          rate = "60.00";
        };
      };
    };
  };
}
