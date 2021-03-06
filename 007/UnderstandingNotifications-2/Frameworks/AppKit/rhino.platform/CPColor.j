I;21;Foundation/CPObject.ji;9;CGColor.ji;17;CPCompatibility.ji;9;CPImage.jc;15583;
var _redComponent = 0,
    _greenComponent = 1,
    _blueComponent = 2,
    _alphaCompnent = 3;
var _hueComponent = 0,
    _saturationComponent = 1,
    _brightnessComponent = 2;
{var the_class = objj_allocateClassPair(CPObject, "CPColor"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("_components"), new objj_ivar("_patternImage"), new objj_ivar("_cssString")]);
objj_registerClassPair(the_class);
objj_addClassForBundle(the_class, objj_getBundleWithPath(OBJJ_CURRENT_BUNDLE.path));
class_addMethods(the_class, [new objj_method(sel_getUid("_initWithCSSString:"), function(self, _cmd, aString)
{ with(self)
{
    if(aString.indexOf("rgb") == CPNotFound)
        return nil;
    self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPObject") }, "init");
    var startingIndex = aString.indexOf("(");
    var parts = aString.substring(startingIndex+1).split(',');
    _components = [
        parseInt(parts[0], 10) / 255.0,
        parseInt(parts[1], 10) / 255.0,
        parseInt(parts[2], 10) / 255.0,
        parts[3] ? parseInt(parts[3], 10) / 255.0 : 1.0
    ]
    _cssString = aString;
    return self;
}
}), new objj_method(sel_getUid("_initWithRGBA:"), function(self, _cmd, components)
{ with(self)
{
    self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPObject") }, "init");
    if (self)
    {
        _components = components;
  if (!CPFeatureIsCompatible(CPCSSRGBAFeature) && _components[3] != 1.0 && window.Base64 && window.CRC32)
  {
   var bytes = [0x89,0x50,0x4e,0x47,0xd,0xa,0x1a,0xa,0x0,0x0,0x0,0xd,0x49,0x48,0x44,0x52,0x0,0x0,0x0,0x1,0x0,0x0,0x0,0x1,0x8,0x3,0x0,0x0,0x0,0x28,0xcb,0x34,0xbb,0x0,0x0,0x3,0x0,0x50,0x4c,0x54,0x45,0xff,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x17,0x89,0x99,0x55,0x0,0x0,0x0,0x1,0x74,0x52,0x4e,0x53,0x0,0x40,0xe6,0xd8,0x66,0x0,0x0,0x0,0x10,0x49,0x44,0x41,0x54,0x78,0xda,0x62,0x60,0x0,0x0,0x0,0x0,0xff,0xff,0x3,0x0,0x0,0x2,0x0,0x1,0x24,0x7f,0x24,0xf1,0x0,0x0,0x0,0x0,0x49,0x45,0x4e,0x44,0xae,0x42,0x60,0x82,0xff];
   var r_off = 41;
   var g_off = 42;
   var b_off = 43;
   var a_off = 821;
   var plte_crc_off = 809;
   var trns_crc_off = 822;
   var plte_type_off = 37;
   var trns_type_off = 817;
   bytes[r_off] = Math.round(_components[0]*255);
   bytes[g_off] = Math.round(_components[1]*255);
   bytes[b_off] = Math.round(_components[2]*255);
   bytes[a_off] = Math.round(_components[3]*255);
   var new_plte_crc = integerToBytes(CRC32.getCRC(bytes, plte_type_off, 4+768), 4);
   var new_trns_crc = integerToBytes(CRC32.getCRC(bytes, trns_type_off, 4+1), 4);
   for (var i = 0; i < 4; i++)
   {
    bytes[plte_crc_off+i] = new_plte_crc[i];
    bytes[trns_crc_off+i] = new_trns_crc[i];
   }
   var base64image = Base64.encode(bytes);
   _cssString = "url(\"data:image/png;base64," + base64image + "\")";
  }
  else
  {
         var hasAlpha = CPFeatureIsCompatible(CPCSSRGBAFeature) && _components[3] != 1.0;
         _cssString = (hasAlpha ? "rgba(" : "rgb(") +
             parseInt(_components[0] * 255.0) + ", " +
             parseInt(_components[1] * 255.0) + ", " +
             parseInt(_components[2] * 255.0) +
             (hasAlpha ? (", " + _components[3]) : "") + ")";
  }
    }
    return self;
}
}), new objj_method(sel_getUid("_initWithPatternImage:"), function(self, _cmd, anImage)
{ with(self)
{
    self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPObject") }, "init");
    if (self)
    {
        _patternImage = anImage;
        _cssString = "url(\"" + objj_msgSend(_patternImage, "filename") + "\")";
    }
    return self;
}
}), new objj_method(sel_getUid("patternImage"), function(self, _cmd)
{ with(self)
{
    return _patternImage;
}
}), new objj_method(sel_getUid("alphaComponent"), function(self, _cmd)
{ with(self)
{
    return _components[3];
}
}), new objj_method(sel_getUid("blueComponent"), function(self, _cmd)
{ with(self)
{
    return _components[2];
}
}), new objj_method(sel_getUid("greenComponent"), function(self, _cmd)
{ with(self)
{
    return _components[1];
}
}), new objj_method(sel_getUid("redComponent"), function(self, _cmd)
{ with(self)
{
    return _components[0];
}
}), new objj_method(sel_getUid("components"), function(self, _cmd)
{ with(self)
{
    return _components;
}
}), new objj_method(sel_getUid("colorWithAlphaComponent:"), function(self, _cmd, anAlphaComponent)
{ with(self)
{
    var components = _components.slice();
    components[components.length - 1] = anAlphaComponent;
    return objj_msgSend(objj_msgSend(objj_msgSend(self, "class"), "alloc"), "_initWithRGBA:", components);
}
}), new objj_method(sel_getUid("hsbComponents"), function(self, _cmd)
{ with(self)
{
    var red = ROUND(_components[_redComponent] * 255.0),
        green = ROUND(_components[_greenComponent] * 255.0),
        blue = ROUND(_components[_blueComponent] * 255.0);
    var max = MAX(red, green, blue),
        min = MIN(red, green, blue),
        delta = max - min;
    var brightness = max / 255.0,
        saturation = (max != 0) ? delta / max : 0;
    var hue;
    if(saturation == 0)
        hue = 0;
    else
    {
        var rr = (max - red) / delta;
        var gr = (max - green) / delta;
        var br = (max - blue) / delta;
        if (red == max)
            hue = br - gr;
        else if (green == max)
            hue = 2 + rr - br;
        else
            hue = 4 + gr - rr;
        hue /= 6;
        if (hue < 0)
            hue++;
    }
    return [
        ROUND(hue * 360.0),
        ROUND(saturation * 100.0),
        ROUND(brightness * 100.0)
    ];
}
}), new objj_method(sel_getUid("cssString"), function(self, _cmd)
{ with(self)
{
    return _cssString;
}
}), new objj_method(sel_getUid("hexString"), function(self, _cmd)
{ with(self)
{
    return rgbToHex(objj_msgSend(self, "redComponent"), objj_msgSend(self, "greenComponent"), objj_msgSend(self, "blueComponent"))
}
}), new objj_method(sel_getUid("description"), function(self, _cmd)
{ with(self)
{
    return objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPObject") }, "description")+" "+objj_msgSend(self, "cssString");
}
})]);
class_addMethods(meta_class, [new objj_method(sel_getUid("colorWithCalibratedRed:green:blue:alpha:"), function(self, _cmd, red, green, blue, alpha)
{ with(self)
{
    return objj_msgSend(objj_msgSend(CPColor, "alloc"), "_initWithRGBA:", [red, green, blue, alpha]);
}
}), new objj_method(sel_getUid("colorWithCalibratedWhite:alpha:"), function(self, _cmd, white, alpha)
{ with(self)
{
    return objj_msgSend(objj_msgSend(CPColor, "alloc"), "_initWithRGBA:", [white, white, white, alpha]);
}
}), new objj_method(sel_getUid("colorWithHue:saturation:brightness:"), function(self, _cmd, hue, saturation, brightness)
{ with(self)
{
    if(saturation == 0.0)
        return objj_msgSend(CPColor, "colorWithCalibratedWhite:alpha:",  brightness/100.0,  1.0);
    var f = hue % 60,
        p = (brightness * (100 - saturation)) / 10000,
        q = (brightness * (6000 - saturation * f)) / 600000,
        t = (brightness * (6000 - saturation * (60 -f))) / 600000,
        b = brightness / 100.0;
    switch(FLOOR(hue / 60))
    {
        case 0: return objj_msgSend(CPColor, "colorWithCalibratedRed:green:blue:alpha:",  b,  t,  p,  1.0);
        case 1: return objj_msgSend(CPColor, "colorWithCalibratedRed:green:blue:alpha:",  q,  b,  p,  1.0);
        case 2: return objj_msgSend(CPColor, "colorWithCalibratedRed:green:blue:alpha:",  p,  b,  t,  1.0);
        case 3: return objj_msgSend(CPColor, "colorWithCalibratedRed:green:blue:alpha:",  p,  q,  b,  1.0);
        case 4: return objj_msgSend(CPColor, "colorWithCalibratedRed:green:blue:alpha:",  t,  p,  b,  1.0);
        case 5: return objj_msgSend(CPColor, "colorWithCalibratedRed:green:blue:alpha:",  b,  p,  q,  1.0);
    }
}
}), new objj_method(sel_getUid("colorWithHexString:"), function(self, _cmd, hex)
{ with(self)
{
    return objj_msgSend(objj_msgSend(CPColor, "alloc"), "_initWithRGBA:",  hexToRGB(hex));
}
}), new objj_method(sel_getUid("blackColor"), function(self, _cmd)
{ with(self)
{
    return objj_msgSend(objj_msgSend(CPColor, "alloc"), "_initWithRGBA:", [0.0, 0.0, 0.0, 1.0]);
}
}), new objj_method(sel_getUid("blueColor"), function(self, _cmd)
{ with(self)
{
    return objj_msgSend(objj_msgSend(CPColor, "alloc"), "_initWithRGBA:", [0.0, 0.0, 1.0, 1.0]);
}
}), new objj_method(sel_getUid("darkGrayColor"), function(self, _cmd)
{ with(self)
{
    return objj_msgSend(CPColor, "colorWithCalibratedWhite:alpha:", 1.0 / 3.0, 1.0);
}
}), new objj_method(sel_getUid("grayColor"), function(self, _cmd)
{ with(self)
{
    return objj_msgSend(CPColor, "colorWithCalibratedWhite:alpha:", 0.5,  1.0);
}
}), new objj_method(sel_getUid("greenColor"), function(self, _cmd)
{ with(self)
{
    return objj_msgSend(objj_msgSend(CPColor, "alloc"), "_initWithRGBA:", [0.0, 1.0, 0.0, 1.0]);
}
}), new objj_method(sel_getUid("lightGrayColor"), function(self, _cmd)
{ with(self)
{
    return objj_msgSend(CPColor, "colorWithCalibratedWhite:alpha:", 2.0 / 3.0, 1.0);
}
}), new objj_method(sel_getUid("redColor"), function(self, _cmd)
{ with(self)
{
    return objj_msgSend(objj_msgSend(CPColor, "alloc"), "_initWithRGBA:", [1.0, 0.0, 0.0, 1.0]);
}
}), new objj_method(sel_getUid("whiteColor"), function(self, _cmd)
{ with(self)
{
    return objj_msgSend(objj_msgSend(CPColor, "alloc"), "_initWithRGBA:", [1.0, 1.0, 1.0, 1.0]);
}
}), new objj_method(sel_getUid("yellowColor"), function(self, _cmd)
{ with(self)
{
    return objj_msgSend(objj_msgSend(CPColor, "alloc"), "_initWithRGBA:", [1.0, 1.0, 0.0, 1.0]);
}
}), new objj_method(sel_getUid("shadowColor"), function(self, _cmd)
{ with(self)
{
    return objj_msgSend(objj_msgSend(CPColor, "alloc"), "_initWithRGBA:", [0.0, 0.0, 0.0, 1.0 / 3.0]);
}
}), new objj_method(sel_getUid("colorWithPatternImage:"), function(self, _cmd, anImage)
{ with(self)
{
    return objj_msgSend(objj_msgSend(CPColor, "alloc"), "_initWithPatternImage:", anImage);
}
}), new objj_method(sel_getUid("colorWithCSSString:"), function(self, _cmd, aString)
{ with(self)
{
    return objj_msgSend(objj_msgSend(CPColor, "alloc"), "_initWithCSSString:",  aString);
}
})]);
}
var CPColorComponentsKey = "CPColorComponentsKey",
    CPColorPatternImageKey = "CPColorPatternImageKey";
{
var the_class = objj_getClass("CPColor")
if(!the_class) objj_exception_throw(new objj_exception(OBJJClassNotFoundException, "*** Could not find definition for class \"CPColor\""));
var meta_class = the_class.isa;class_addMethods(the_class, [new objj_method(sel_getUid("initWithCoder:"), function(self, _cmd, aCoder)
{ with(self)
{
    if (objj_msgSend(aCoder, "containsValueForKey:", CPColorPatternImageKey))
        return objj_msgSend(self, "_initWithPatternImage:", objj_msgSend(aCoder, "decodeObjectForKey:", CPColorPatternImageKey));
    return objj_msgSend(self, "_initWithRGBA:", objj_msgSend(aCoder, "decodeObjectForKey:", CPColorComponentsKey));
}
}), new objj_method(sel_getUid("encodeWithCoder:"), function(self, _cmd, aCoder)
{ with(self)
{
    if (_patternImage)
        objj_msgSend(aCoder, "encodeObject:forKey:", _patternImage, CPColorPatternImageKey);
    else
        objj_msgSend(aCoder, "encodeObject:forKey:", _components, CPColorComponentsKey);
}
})]);
}
var hexCharacters = "0123456789ABCDEF";
hexToRGB= function(hex)
{
    if ( hex.length == 3 )
        hex = hex.charAt(0) + hex.charAt(0) + hex.charAt(1) + hex.charAt(1) + hex.charAt(2) + hex.charAt(2);
    if(hex.length != 6)
        return null;
    hex = hex.toUpperCase();
    for(var i=0; i<hex.length; i++)
        if(hexCharacters.indexOf(hex.charAt(i)) == -1)
            return null;
    var red = (hexCharacters.indexOf(hex.charAt(0)) * 16 + hexCharacters.indexOf(hex.charAt(1))) / 255.0;
    var green = (hexCharacters.indexOf(hex.charAt(2)) * 16 + hexCharacters.indexOf(hex.charAt(3))) / 255.0;
    var blue = (hexCharacters.indexOf(hex.charAt(4)) * 16 + hexCharacters.indexOf(hex.charAt(5))) / 255.0;
    return [red, green, blue, 1.0];
}
integerToBytes= function(integer, length) {
 if (!length)
  length = (integer == 0) ? 1 : Math.round((Math.log(integer)/Math.log(2))/8+0.5);
 var bytes = new Array(length);
 for (var i = length-1; i >= 0; i--) {
  bytes[i] = integer & 255;
  integer = integer >> 8
 }
 return bytes;
}
rgbToHex= function(r,g,b) {
    return byteToHex(r) + byteToHex(g) + byteToHex(b);
}
byteToHex= function(n) {
    if (!n || isNaN(n)) return "00";
    n = ROUND(MIN(255,MAX(0,256*n)));
    return hexCharacters.charAt((n - n % 16) / 16) +
            hexCharacters.charAt(n % 16);
}

