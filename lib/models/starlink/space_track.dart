class SpaceTrack {
  String _cCSDSOMMVERS;
  String _cOMMENT;
  String _cREATIONDATE;
  String _oRIGINATOR;
  String _oBJECTNAME;
  String _oBJECTID;
  String _cENTERNAME;
  String _rEFFRAME;
  String _tIMESYSTEM;
  String _mEANELEMENTTHEORY;
  String _ePOCH;
  num _mEANMOTION;
  num _eCCENTRICITY;
  num _iNCLINATION;
  num _rAOFASCNODE;
  num _aRGOFPERICENTER;
  num _mEANANOMALY;
  num _ePHEMERISTYPE;
  String _cLASSIFICATIONTYPE;
  num _nORADCATID;
  num _eLEMENTSETNO;
  num _rEVATEPOCH;
  num _bSTAR;
  num _mEANMOTIONDOT;
  num _mEANMOTIONDDOT;
  num _sEMIMAJORAXIS;
  num _pERIOD;
  num _aPOAPSIS;
  num _pERIAPSIS;
  String _oBJECTTYPE;
  String _rCSSIZE;
  String _cOUNTRYCODE;
  String _lAUNCHDATE;
  String _sITE;
  String _dECAYDATE;
  num _dECAYED;
  num _fILE;
  num _gPID;
  String _tLELINE0;
  String _tLELINE1;
  String _tLELINE2;

  SpaceTrack(
      {String cCSDSOMMVERS,
      String cOMMENT,
      String cREATIONDATE,
      String oRIGINATOR,
      String oBJECTNAME,
      String oBJECTID,
      String cENTERNAME,
      String rEFFRAME,
      String tIMESYSTEM,
      String mEANELEMENTTHEORY,
      String ePOCH,
      num mEANMOTION,
      num eCCENTRICITY,
      num iNCLINATION,
      num rAOFASCNODE,
      num aRGOFPERICENTER,
      num mEANANOMALY,
      num ePHEMERISTYPE,
      String cLASSIFICATIONTYPE,
      num nORADCATID,
      num eLEMENTSETNO,
      num rEVATEPOCH,
      num bSTAR,
      num mEANMOTIONDOT,
      num mEANMOTIONDDOT,
      num sEMIMAJORAXIS,
      num pERIOD,
      num aPOAPSIS,
      num pERIAPSIS,
      String oBJECTTYPE,
      String rCSSIZE,
      String cOUNTRYCODE,
      String lAUNCHDATE,
      String sITE,
      String dECAYDATE,
      num dECAYED,
      num fILE,
      num gPID,
      String tLELINE0,
      String tLELINE1,
      String tLELINE2}) {
    this._cCSDSOMMVERS = cCSDSOMMVERS;
    this._cOMMENT = cOMMENT;
    this._cREATIONDATE = cREATIONDATE;
    this._oRIGINATOR = oRIGINATOR;
    this._oBJECTNAME = oBJECTNAME;
    this._oBJECTID = oBJECTID;
    this._cENTERNAME = cENTERNAME;
    this._rEFFRAME = rEFFRAME;
    this._tIMESYSTEM = tIMESYSTEM;
    this._mEANELEMENTTHEORY = mEANELEMENTTHEORY;
    this._ePOCH = ePOCH;
    this._mEANMOTION = mEANMOTION;
    this._eCCENTRICITY = eCCENTRICITY;
    this._iNCLINATION = iNCLINATION;
    this._rAOFASCNODE = rAOFASCNODE;
    this._aRGOFPERICENTER = aRGOFPERICENTER;
    this._mEANANOMALY = mEANANOMALY;
    this._ePHEMERISTYPE = ePHEMERISTYPE;
    this._cLASSIFICATIONTYPE = cLASSIFICATIONTYPE;
    this._nORADCATID = nORADCATID;
    this._eLEMENTSETNO = eLEMENTSETNO;
    this._rEVATEPOCH = rEVATEPOCH;
    this._bSTAR = bSTAR;
    this._mEANMOTIONDOT = mEANMOTIONDOT;
    this._mEANMOTIONDDOT = mEANMOTIONDDOT;
    this._sEMIMAJORAXIS = sEMIMAJORAXIS;
    this._pERIOD = pERIOD;
    this._aPOAPSIS = aPOAPSIS;
    this._pERIAPSIS = pERIAPSIS;
    this._oBJECTTYPE = oBJECTTYPE;
    this._rCSSIZE = rCSSIZE;
    this._cOUNTRYCODE = cOUNTRYCODE;
    this._lAUNCHDATE = lAUNCHDATE;
    this._sITE = sITE;
    this._dECAYDATE = dECAYDATE;
    this._dECAYED = dECAYED;
    this._fILE = fILE;
    this._gPID = gPID;
    this._tLELINE0 = tLELINE0;
    this._tLELINE1 = tLELINE1;
    this._tLELINE2 = tLELINE2;
  }

  String get cCSDSOMMVERS => _cCSDSOMMVERS;
  set cCSDSOMMVERS(String cCSDSOMMVERS) => _cCSDSOMMVERS = cCSDSOMMVERS;
  String get cOMMENT => _cOMMENT;
  set cOMMENT(String cOMMENT) => _cOMMENT = cOMMENT;
  String get cREATIONDATE => _cREATIONDATE;
  set cREATIONDATE(String cREATIONDATE) => _cREATIONDATE = cREATIONDATE;
  String get oRIGINATOR => _oRIGINATOR;
  set oRIGINATOR(String oRIGINATOR) => _oRIGINATOR = oRIGINATOR;
  String get oBJECTNAME => _oBJECTNAME;
  set oBJECTNAME(String oBJECTNAME) => _oBJECTNAME = oBJECTNAME;
  String get oBJECTID => _oBJECTID;
  set oBJECTID(String oBJECTID) => _oBJECTID = oBJECTID;
  String get cENTERNAME => _cENTERNAME;
  set cENTERNAME(String cENTERNAME) => _cENTERNAME = cENTERNAME;
  String get rEFFRAME => _rEFFRAME;
  set rEFFRAME(String rEFFRAME) => _rEFFRAME = rEFFRAME;
  String get tIMESYSTEM => _tIMESYSTEM;
  set tIMESYSTEM(String tIMESYSTEM) => _tIMESYSTEM = tIMESYSTEM;
  String get mEANELEMENTTHEORY => _mEANELEMENTTHEORY;
  set mEANELEMENTTHEORY(String mEANELEMENTTHEORY) =>
      _mEANELEMENTTHEORY = mEANELEMENTTHEORY;
  String get ePOCH => _ePOCH;
  set ePOCH(String ePOCH) => _ePOCH = ePOCH;
  num get mEANMOTION => _mEANMOTION;
  set mEANMOTION(num mEANMOTION) => _mEANMOTION = mEANMOTION;
  num get eCCENTRICITY => _eCCENTRICITY;
  set eCCENTRICITY(num eCCENTRICITY) => _eCCENTRICITY = eCCENTRICITY;
  num get iNCLINATION => _iNCLINATION;
  set iNCLINATION(num iNCLINATION) => _iNCLINATION = iNCLINATION;
  num get rAOFASCNODE => _rAOFASCNODE;
  set rAOFASCNODE(num rAOFASCNODE) => _rAOFASCNODE = rAOFASCNODE;
  num get aRGOFPERICENTER => _aRGOFPERICENTER;
  set aRGOFPERICENTER(num aRGOFPERICENTER) =>
      _aRGOFPERICENTER = aRGOFPERICENTER;
  num get mEANANOMALY => _mEANANOMALY;
  set mEANANOMALY(num mEANANOMALY) => _mEANANOMALY = mEANANOMALY;
  num get ePHEMERISTYPE => _ePHEMERISTYPE;
  set ePHEMERISTYPE(num ePHEMERISTYPE) => _ePHEMERISTYPE = ePHEMERISTYPE;
  String get cLASSIFICATIONTYPE => _cLASSIFICATIONTYPE;
  set cLASSIFICATIONTYPE(String cLASSIFICATIONTYPE) =>
      _cLASSIFICATIONTYPE = cLASSIFICATIONTYPE;
  num get nORADCATID => _nORADCATID;
  set nORADCATID(num nORADCATID) => _nORADCATID = nORADCATID;
  num get eLEMENTSETNO => _eLEMENTSETNO;
  set eLEMENTSETNO(num eLEMENTSETNO) => _eLEMENTSETNO = eLEMENTSETNO;
  num get rEVATEPOCH => _rEVATEPOCH;
  set rEVATEPOCH(num rEVATEPOCH) => _rEVATEPOCH = rEVATEPOCH;
  num get bSTAR => _bSTAR;
  set bSTAR(num bSTAR) => _bSTAR = bSTAR;
  num get mEANMOTIONDOT => _mEANMOTIONDOT;
  set mEANMOTIONDOT(num mEANMOTIONDOT) => _mEANMOTIONDOT = mEANMOTIONDOT;
  num get mEANMOTIONDDOT => _mEANMOTIONDDOT;
  set mEANMOTIONDDOT(num mEANMOTIONDDOT) => _mEANMOTIONDDOT = mEANMOTIONDDOT;
  num get sEMIMAJORAXIS => _sEMIMAJORAXIS;
  set sEMIMAJORAXIS(num sEMIMAJORAXIS) => _sEMIMAJORAXIS = sEMIMAJORAXIS;
  num get pERIOD => _pERIOD;
  set pERIOD(num pERIOD) => _pERIOD = pERIOD;
  num get aPOAPSIS => _aPOAPSIS;
  set aPOAPSIS(num aPOAPSIS) => _aPOAPSIS = aPOAPSIS;
  num get pERIAPSIS => _pERIAPSIS;
  set pERIAPSIS(num pERIAPSIS) => _pERIAPSIS = pERIAPSIS;
  String get oBJECTTYPE => _oBJECTTYPE;
  set oBJECTTYPE(String oBJECTTYPE) => _oBJECTTYPE = oBJECTTYPE;
  String get rCSSIZE => _rCSSIZE;
  set rCSSIZE(String rCSSIZE) => _rCSSIZE = rCSSIZE;
  String get cOUNTRYCODE => _cOUNTRYCODE;
  set cOUNTRYCODE(String cOUNTRYCODE) => _cOUNTRYCODE = cOUNTRYCODE;
  String get lAUNCHDATE => _lAUNCHDATE;
  set lAUNCHDATE(String lAUNCHDATE) => _lAUNCHDATE = lAUNCHDATE;
  String get sITE => _sITE;
  set sITE(String sITE) => _sITE = sITE;
  String get dECAYDATE => _dECAYDATE;
  set dECAYDATE(String dECAYDATE) => _dECAYDATE = dECAYDATE;
  num get dECAYED => _dECAYED;
  set dECAYED(num dECAYED) => _dECAYED = dECAYED;
  num get fILE => _fILE;
  set fILE(num fILE) => _fILE = fILE;
  num get gPID => _gPID;
  set gPID(num gPID) => _gPID = gPID;
  String get tLELINE0 => _tLELINE0;
  set tLELINE0(String tLELINE0) => _tLELINE0 = tLELINE0;
  String get tLELINE1 => _tLELINE1;
  set tLELINE1(String tLELINE1) => _tLELINE1 = tLELINE1;
  String get tLELINE2 => _tLELINE2;
  set tLELINE2(String tLELINE2) => _tLELINE2 = tLELINE2;

  SpaceTrack.fromJson(Map<String, dynamic> json) {
    _cCSDSOMMVERS = json['CCSDS_OMM_VERS'];
    _cOMMENT = json['COMMENT'];
    _cREATIONDATE = json['CREATION_DATE'];
    _oRIGINATOR = json['ORIGINATOR'];
    _oBJECTNAME = json['OBJECT_NAME'];
    _oBJECTID = json['OBJECT_ID'];
    _cENTERNAME = json['CENTER_NAME'];
    _rEFFRAME = json['REF_FRAME'];
    _tIMESYSTEM = json['TIME_SYSTEM'];
    _mEANELEMENTTHEORY = json['MEAN_ELEMENT_THEORY'];
    _ePOCH = json['EPOCH'];
    _mEANMOTION = json['MEAN_MOTION'];
    _eCCENTRICITY = json['ECCENTRICITY'];
    _iNCLINATION = json['INCLINATION'];
    _rAOFASCNODE = json['RA_OF_ASC_NODE'];
    _aRGOFPERICENTER = json['ARG_OF_PERICENTER'];
    _mEANANOMALY = json['MEAN_ANOMALY'];
    _ePHEMERISTYPE = json['EPHEMERIS_TYPE'];
    _cLASSIFICATIONTYPE = json['CLASSIFICATION_TYPE'];
    _nORADCATID = json['NORAD_CAT_ID'];
    _eLEMENTSETNO = json['ELEMENT_SET_NO'];
    _rEVATEPOCH = json['REV_AT_EPOCH'];
    _bSTAR = json['BSTAR'];
    _mEANMOTIONDOT = json['MEAN_MOTION_DOT'];
    _mEANMOTIONDDOT = json['MEAN_MOTION_DDOT'];
    _sEMIMAJORAXIS = json['SEMIMAJOR_AXIS'];
    _pERIOD = json['PERIOD'];
    _aPOAPSIS = json['APOAPSIS'];
    _pERIAPSIS = json['PERIAPSIS'];
    _oBJECTTYPE = json['OBJECT_TYPE'];
    _rCSSIZE = json['RCS_SIZE'];
    _cOUNTRYCODE = json['COUNTRY_CODE'];
    _lAUNCHDATE = json['LAUNCH_DATE'];
    _sITE = json['SITE'];
    _dECAYDATE = json['DECAY_DATE'];
    _dECAYED = json['DECAYED'];
    _fILE = json['FILE'];
    _gPID = json['GP_ID'];
    _tLELINE0 = json['TLE_LINE0'];
    _tLELINE1 = json['TLE_LINE1'];
    _tLELINE2 = json['TLE_LINE2'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['CCSDS_OMM_VERS'] = this._cCSDSOMMVERS;
    data['COMMENT'] = this._cOMMENT;
    data['CREATION_DATE'] = this._cREATIONDATE;
    data['ORIGINATOR'] = this._oRIGINATOR;
    data['OBJECT_NAME'] = this._oBJECTNAME;
    data['OBJECT_ID'] = this._oBJECTID;
    data['CENTER_NAME'] = this._cENTERNAME;
    data['REF_FRAME'] = this._rEFFRAME;
    data['TIME_SYSTEM'] = this._tIMESYSTEM;
    data['MEAN_ELEMENT_THEORY'] = this._mEANELEMENTTHEORY;
    data['EPOCH'] = this._ePOCH;
    data['MEAN_MOTION'] = this._mEANMOTION;
    data['ECCENTRICITY'] = this._eCCENTRICITY;
    data['INCLINATION'] = this._iNCLINATION;
    data['RA_OF_ASC_NODE'] = this._rAOFASCNODE;
    data['ARG_OF_PERICENTER'] = this._aRGOFPERICENTER;
    data['MEAN_ANOMALY'] = this._mEANANOMALY;
    data['EPHEMERIS_TYPE'] = this._ePHEMERISTYPE;
    data['CLASSIFICATION_TYPE'] = this._cLASSIFICATIONTYPE;
    data['NORAD_CAT_ID'] = this._nORADCATID;
    data['ELEMENT_SET_NO'] = this._eLEMENTSETNO;
    data['REV_AT_EPOCH'] = this._rEVATEPOCH;
    data['BSTAR'] = this._bSTAR;
    data['MEAN_MOTION_DOT'] = this._mEANMOTIONDOT;
    data['MEAN_MOTION_DDOT'] = this._mEANMOTIONDDOT;
    data['SEMIMAJOR_AXIS'] = this._sEMIMAJORAXIS;
    data['PERIOD'] = this._pERIOD;
    data['APOAPSIS'] = this._aPOAPSIS;
    data['PERIAPSIS'] = this._pERIAPSIS;
    data['OBJECT_TYPE'] = this._oBJECTTYPE;
    data['RCS_SIZE'] = this._rCSSIZE;
    data['COUNTRY_CODE'] = this._cOUNTRYCODE;
    data['LAUNCH_DATE'] = this._lAUNCHDATE;
    data['SITE'] = this._sITE;
    data['DECAY_DATE'] = this._dECAYDATE;
    data['DECAYED'] = this._dECAYED;
    data['FILE'] = this._fILE;
    data['GP_ID'] = this._gPID;
    data['TLE_LINE0'] = this._tLELINE0;
    data['TLE_LINE1'] = this._tLELINE1;
    data['TLE_LINE2'] = this._tLELINE2;
    return data;
  }
}
