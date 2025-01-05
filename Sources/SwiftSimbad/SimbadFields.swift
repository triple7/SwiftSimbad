public enum allfluxes_columns: String, Codable, Identifiable, CaseIterable {
case B // B magnitude
case F150W // JWST NIRCam F150W
case F200W // JWST NIRCam F200W
case F444W // JWST NIRCam F444W
case G // G magnitude
case H // H magnitude
case I // I magnitude
case J // J magnitude
case K // K magnitude
case R // R magnitude
case U // U magnitude
case V // V magnitude
case g_ // g magnitude
case i_ // i magnitude
case oidref // Object internal identifier
case r_ // r magnitude
case u_ // u magnitude
case z_ // z magnitude

public var id:String {
return rawValue
}

public var description:String {
switch self{
case .B: return "B magnitude"
case .F150W: return "JWST NIRCam F150W"
case .F200W: return "JWST NIRCam F200W"
case .F444W: return "JWST NIRCam F444W"
case .G: return "G magnitude"
case .H: return "H magnitude"
case .I: return "I magnitude"
case .J: return "J magnitude"
case .K: return "K magnitude"
case .R: return "R magnitude"
case .U: return "U magnitude"
case .V: return "V magnitude"
case .g_: return "g magnitude"
case .i_: return "i magnitude"
case .oidref: return "Object internal identifier"
case .r_: return "r magnitude"
case .u_: return "u magnitude"
case .z_: return "z magnitude"
}
}
}


public enum alltypes_columns: String, Codable, Identifiable, CaseIterable {
case oidref // Object internal identifier
case otypes // List of all object types concatenated with pipe

public var id:String {
return rawValue
}

public var description:String {
switch self{
case .oidref: return "Object internal identifier"
case .otypes: return "List of all object types concatenated with pipe"
}
}
}


public enum author_columns: String, Codable, Identifiable, CaseIterable {
case name // Author of a bibliographical reference
case oidbibref // Bibcode internal identifier
case pos // Position of the author in the bib ref

public var id:String {
return rawValue
}

public var description:String {
switch self{
case .name: return "Author of a bibliographical reference"
case .oidbibref: return "Bibcode internal identifier"
case .pos: return "Position of the author in the bib ref"
}
}
}


public enum basic_columns: String, Codable, Identifiable, CaseIterable {
case coo_bibcode // Coordinate reference
case coo_err_angle // Coordinate error angle
case coo_err_maj // Coordinate error major axis
case coo_err_maj_prec // Coordinate error major axis precision
case coo_err_min // Coordinate error minor axis
case coo_err_min_prec // Coordinate error minor axis precision
case coo_qual // Coordinate quality
case coo_wavelength // Wavelength class for the origin of the coordinates (R,I,V,U,X,G)
case dec // Declination
case dec_prec // Declination precision
case galdim_angle // Galaxy ellipse angle
case galdim_bibcode // Galaxy dimension reference
case galdim_majaxis // Angular size major axis
case galdim_majaxis_prec // Angular size major axis precision
case galdim_minaxis // Angular size minor axis
case galdim_minaxis_prec // Angular size minor axis precision
case galdim_qual // Galaxy dimension quality
case galdim_wavelength // Wavelength class for the origin of the Galaxy dimension
case hpx // Healpix number at ORDER=10
case main_id // Main identifier for an object
case morph_bibcode // morphological type reference
case morph_qual // Morphological type quality
case morph_type // Morphological type
case nbref // number of references
case oid // Object internal identifier
case otype // Object type
case otype_txt // Object type
case plx_bibcode // Parallax reference
case plx_err // Parallax error
case plx_err_prec // Parallax error precision
case plx_prec // Parallax precision
case plx_qual // Parallax quality
case plx_value // Parallax
case pm_bibcode // Proper motion reference
case pm_err_angle // Proper motion error angle
case pm_err_maj // Proper motion error major axis
case pm_err_maj_prec // Proper motion error major axis precision
case pm_err_min // Proper motion error minor axis
case pm_err_min_prec // Proper motion error minor axis precision
case pm_qual // Proper motion quality
case pmdec // Proper motion in DEC
case pmdec_prec // Proper motion in DEC precision
case pmra // Proper motion in RA
case pmra_prec // Proper motion in RA precision
case ra // Right ascension
case ra_prec // Right ascension precision
case rvz_bibcode // Radial velocity / redshift reference
case rvz_err // Radial velocity / redshift error
case rvz_err_prec // Radial velocity / redshift error precision
case rvz_nature // velocity / redshift nature
case rvz_qual // Radial velocity / redshift quality
case rvz_radvel // Radial Velocity
case rvz_radvel_prec // Radial velocity precision
case rvz_redshift // redshift
case rvz_redshift_prec // redshift precision
case rvz_type // Radial velocity / redshift type
case rvz_wavelength // Wavelength class for the origin of the radial velocity/reshift
case sp_bibcode // spectral type reference
case sp_qual // Spectral type quality
case sp_type // MK spectral type
case update_date // Date of last modification
case vlsr // velocity in Local Standard of Rest reference frame
case vlsr_bibcode // Reference for the origin of the LSR velocity
case vlsr_err // Error incertainty of the VLSR velocity
case vlsr_max // Maximum for the mean value of the LSR velocity
case vlsr_min // Minimum for the mean value of the LSR velocity
case vlsr_wavelength // Wavelength class for the origin of the LSR velocity

public var id:String {
return rawValue
}

public var description:String {
switch self{
case .coo_bibcode: return "Coordinate reference"
case .coo_err_angle: return "Coordinate error angle"
case .coo_err_maj: return "Coordinate error major axis"
case .coo_err_maj_prec: return "Coordinate error major axis precision"
case .coo_err_min: return "Coordinate error minor axis"
case .coo_err_min_prec: return "Coordinate error minor axis precision"
case .coo_qual: return "Coordinate quality"
case .coo_wavelength: return "Wavelength class for the origin of the coordinates (R,I,V,U,X,G)"
case .dec: return "Declination"
case .dec_prec: return "Declination precision"
case .galdim_angle: return "Galaxy ellipse angle"
case .galdim_bibcode: return "Galaxy dimension reference"
case .galdim_majaxis: return "Angular size major axis"
case .galdim_majaxis_prec: return "Angular size major axis precision"
case .galdim_minaxis: return "Angular size minor axis"
case .galdim_minaxis_prec: return "Angular size minor axis precision"
case .galdim_qual: return "Galaxy dimension quality"
case .galdim_wavelength: return "Wavelength class for the origin of the Galaxy dimension"
case .hpx: return "Healpix number at ORDER=10"
case .main_id: return "Main identifier for an object"
case .morph_bibcode: return "morphological type reference"
case .morph_qual: return "Morphological type quality"
case .morph_type: return "Morphological type"
case .nbref: return "number of references"
case .oid: return "Object internal identifier"
case .otype: return "Object type"
case .otype_txt: return "Object type"
case .plx_bibcode: return "Parallax reference"
case .plx_err: return "Parallax error"
case .plx_err_prec: return "Parallax error precision"
case .plx_prec: return "Parallax precision"
case .plx_qual: return "Parallax quality"
case .plx_value: return "Parallax"
case .pm_bibcode: return "Proper motion reference"
case .pm_err_angle: return "Proper motion error angle"
case .pm_err_maj: return "Proper motion error major axis"
case .pm_err_maj_prec: return "Proper motion error major axis precision"
case .pm_err_min: return "Proper motion error minor axis"
case .pm_err_min_prec: return "Proper motion error minor axis precision"
case .pm_qual: return "Proper motion quality"
case .pmdec: return "Proper motion in DEC"
case .pmdec_prec: return "Proper motion in DEC precision"
case .pmra: return "Proper motion in RA"
case .pmra_prec: return "Proper motion in RA precision"
case .ra: return "Right ascension"
case .ra_prec: return "Right ascension precision"
case .rvz_bibcode: return "Radial velocity / redshift reference"
case .rvz_err: return "Radial velocity / redshift error"
case .rvz_err_prec: return "Radial velocity / redshift error precision"
case .rvz_nature: return "velocity / redshift nature"
case .rvz_qual: return "Radial velocity / redshift quality"
case .rvz_radvel: return "Radial Velocity"
case .rvz_radvel_prec: return "Radial velocity precision"
case .rvz_redshift: return "redshift"
case .rvz_redshift_prec: return "redshift precision"
case .rvz_type: return "Radial velocity / redshift type"
case .rvz_wavelength: return "Wavelength class for the origin of the radial velocity/reshift"
case .sp_bibcode: return "spectral type reference"
case .sp_qual: return "Spectral type quality"
case .sp_type: return "MK spectral type"
case .update_date: return "Date of last modification"
case .vlsr: return "velocity in Local Standard of Rest reference frame"
case .vlsr_bibcode: return "Reference for the origin of the LSR velocity"
case .vlsr_err: return "Error incertainty of the VLSR velocity"
case .vlsr_max: return "Maximum for the mean value of the LSR velocity"
case .vlsr_min: return "Minimum for the mean value of the LSR velocity"
case .vlsr_wavelength: return "Wavelength class for the origin of the LSR velocity"
}
}
}


public enum biblio_columns: String, Codable, Identifiable, CaseIterable {
case biblio // List of Bibcodes separated with a pipe
case oidref // Object internal identifier

public var id:String {
return rawValue
}

public var description:String {
switch self{
case .biblio: return "List of Bibcodes separated with a pipe"
case .oidref: return "Object internal identifier"
}
}
}


public enum cat_columns: String, Codable, Identifiable, CaseIterable {
case cat_name // Catalogue name
case description // Catalogue description
case size // Number of objects of the Catalogue in SIMBAD

public var id:String {
return rawValue
}

public var description:String {
switch self{
case .cat_name: return "Catalogue name"
case .description: return "Catalogue description"
case .size: return "Number of objects of the Catalogue in SIMBAD"
}
}
}


public enum filter_columns: String, Codable, Identifiable, CaseIterable {
case description // flux filter description
case filtername // flux filter name
case unit // physical unit name

public var id:String {
return rawValue
}

public var description:String {
switch self{
case .description: return "flux filter description"
case .filtername: return "flux filter name"
case .unit: return "physical unit name"
}
}
}


public enum flux_columns: String, Codable, Identifiable, CaseIterable {
case bibcode // flux reference
case filter // flux filter name
case flux // None
case flux_err // flux error
case flux_err_prec // flux error precision
case flux_prec // flux precision
case oidref // Object internal identifier
case qual // flux quality flag

public var id:String {
return rawValue
}

public var description:String {
switch self{
case .bibcode: return "flux reference"
case .filter: return "flux filter name"
case .flux: return "None"
case .flux_err: return "flux error"
case .flux_err_prec: return "flux error precision"
case .flux_prec: return "flux precision"
case .oidref: return "Object internal identifier"
case .qual: return "flux quality flag"
}
}
}


public enum h_link_columns: String, Codable, Identifiable, CaseIterable {
case child // child oid
case link_bibcode // link reference
case membership // membership probability
case parent // parent oid

public var id:String {
return rawValue
}

public var description:String {
switch self{
case .child: return "child oid"
case .link_bibcode: return "link reference"
case .membership: return "membership probability"
case .parent: return "parent oid"
}
}
}


public enum has_ref_columns: String, Codable, Identifiable, CaseIterable {
case obj_freq // flag
case oidbibref // Bibcode internal identifier
case oidref // Object internal identifier
case ref_flag // flag
case ref_raw_id // id like it appears in the article

public var id:String {
return rawValue
}

public var description:String {
switch self{
case .obj_freq: return "flag"
case .oidbibref: return "Bibcode internal identifier"
case .oidref: return "Object internal identifier"
case .ref_flag: return "flag"
case .ref_raw_id: return "id like it appears in the article"
}
}
}


public enum ident_columns: String, Codable, Identifiable, CaseIterable {
case id // Identifier
case oidref // Object internal identifier

public var id:String {
return rawValue
}

public var description:String {
switch self{
case .id: return "Identifier"
case .oidref: return "Object internal identifier"
}
}
}


public enum ids_columns: String, Codable, Identifiable, CaseIterable {
case ids // List of all identifiers concatenated with pipe
case oidref // Object internal identifier

public var id:String {
return rawValue
}

public var description:String {
switch self{
case .ids: return "List of all identifiers concatenated with pipe"
case .oidref: return "Object internal identifier"
}
}
}


public enum journals_columns: String, Codable, Identifiable, CaseIterable {
case journal // Abbreviation for the journal
case name // Full name of the journal
case years // Range of years of this journal in the database

public var id:String {
return rawValue
}

public var description:String {
switch self{
case .journal: return "Abbreviation for the journal"
case .name: return "Full name of the journal"
case .years: return "Range of years of this journal in the database"
}
}
}


public enum keywords_columns: String, Codable, Identifiable, CaseIterable {
case keyword // Keyword text and link
case oidbibref // Object internal identifier of reference
case position // Position of the keyword in the publication

public var id:String {
return rawValue
}

public var description:String {
switch self{
case .keyword: return "Keyword text and link"
case .oidbibref: return "Object internal identifier of reference"
case .position: return "Position of the keyword in the publication"
}
}
}


public enum mesDiameter_columns: String, Codable, Identifiable, CaseIterable {
case bibcode // measurement bibcode
case diameter // Diameter value
case diameter_prec // Precision (# of decimal positions) associated with the column diameter
case error // Error
case error_prec // Precision (# of decimal positions) associated with the column error
case filter // filter or wavelength
case mespos // Position of a measurement in a list of measurements
case method // calculation method
case oidref // Object internal identifier
case qual // Quality
case unit // Unit (mas/km)

public var id:String {
return rawValue
}

public var description:String {
switch self{
case .bibcode: return "measurement bibcode"
case .diameter: return "Diameter value"
case .diameter_prec: return "Precision (# of decimal positions) associated with the column diameter"
case .error: return "Error"
case .error_prec: return "Precision (# of decimal positions) associated with the column error"
case .filter: return "filter or wavelength"
case .mespos: return "Position of a measurement in a list of measurements"
case .method: return "calculation method"
case .oidref: return "Object internal identifier"
case .qual: return "Quality"
case .unit: return "Unit (mas/km)"
}
}
}


public enum mesDistance_columns: String, Codable, Identifiable, CaseIterable {
case bibcode // measurement bibcode
case dist // Distance value
case dist_prec // Precision (# of decimal positions) associated with the column dist
case mespos // Position of a measurement in a list of measurements
case method // distance calculation method
case minus_err // minus error
case minus_err_prec // Precision (# of decimal positions) associated with the column minus_err
case oidref // Object internal identifier
case plus_err // plus error
case plus_err_prec // Precision (# of decimal positions) associated with the column plus_err
case qual // Quality
case unit // Unit (pc,kpc or Mpc)

public var id:String {
return rawValue
}

public var description:String {
switch self{
case .bibcode: return "measurement bibcode"
case .dist: return "Distance value"
case .dist_prec: return "Precision (# of decimal positions) associated with the column dist"
case .mespos: return "Position of a measurement in a list of measurements"
case .method: return "distance calculation method"
case .minus_err: return "minus error"
case .minus_err_prec: return "Precision (# of decimal positions) associated with the column minus_err"
case .oidref: return "Object internal identifier"
case .plus_err: return "plus error"
case .plus_err_prec: return "Precision (# of decimal positions) associated with the column plus_err"
case .qual: return "Quality"
case .unit: return "Unit (pc,kpc or Mpc)"
}
}
}


public enum mesFe_h_columns: String, Codable, Identifiable, CaseIterable {
case bibcode // measurement bibcode
case catno // Star in the Cayrel et al. (1997A&AS..124..299C) compilation
case compstar // Designates the comparison star from which the [Fe/H] value was obtained
case fe_h // Metallicity index relative to the Sun
case fe_h_prec // Precision (# of decimal positions) associated with the column fe_h
case flag // Flag on the [Fe/H] value
case log_g // Decimal logarithm of the surface gravity
case log_g_prec // Precision (# of decimal positions) associated with the column log_g
case mespos // Position of a measurement in a list of measurements
case oidref // Object internal identifier
case teff // Effective Temperature

public var id:String {
return rawValue
}

public var description:String {
switch self{
case .bibcode: return "measurement bibcode"
case .catno: return "Star in the Cayrel et al. (1997A&AS..124..299C) compilation"
case .compstar: return "Designates the comparison star from which the [Fe/H] value was obtained"
case .fe_h: return "Metallicity index relative to the Sun"
case .fe_h_prec: return "Precision (# of decimal positions) associated with the column fe_h"
case .flag: return "Flag on the [Fe/H] value"
case .log_g: return "Decimal logarithm of the surface gravity"
case .log_g_prec: return "Precision (# of decimal positions) associated with the column log_g"
case .mespos: return "Position of a measurement in a list of measurements"
case .oidref: return "Object internal identifier"
case .teff: return "Effective Temperature"
}
}
}


public enum mesHerschel_columns: String, Codable, Identifiable, CaseIterable {
case alpha // Right Ascension J2000
case delta // Declination J2000
case mespos // Position of a measurement in a list of measurements
case obsid // Observation identifier
case oidref // Object internal identifier

public var id:String {
return rawValue
}

public var description:String {
switch self{
case .alpha: return "Right Ascension J2000"
case .delta: return "Declination J2000"
case .mespos: return "Position of a measurement in a list of measurements"
case .obsid: return "Observation identifier"
case .oidref: return "Object internal identifier"
}
}
}


public enum mesISO_columns: String, Codable, Identifiable, CaseIterable {
case dec // Declination
case dec_prec // Precision (# of decimal positions) associated with the column dec
case mespos // Position of a measurement in a list of measurements
case obsid // Observation identifier
case oidref // Object internal identifier
case ra // Right ascension
case ra_prec // Precision (# of decimal positions) associated with the column ra

public var id:String {
return rawValue
}

public var description:String {
switch self{
case .dec: return "Declination"
case .dec_prec: return "Precision (# of decimal positions) associated with the column dec"
case .mespos: return "Position of a measurement in a list of measurements"
case .obsid: return "Observation identifier"
case .oidref: return "Object internal identifier"
case .ra: return "Right ascension"
case .ra_prec: return "Precision (# of decimal positions) associated with the column ra"
}
}
}


public enum mesIUE_columns: String, Codable, Identifiable, CaseIterable {
case abnormcode // Abnormality code
case aperture // Aperture designation code
case bibcode // measurement bibcode
case camid // Camera id
case classcode // IUE class code
case comments // Comments
case complid // Complementary Identifier
case dispcode // Dispersion code
case expqualcode // Exposure quality code
case exptime // Effective exposure time
case fescount // FES count
case fesmode // FES mode
case flag // Flag
case image // Image number
case mespos // Position of a measurement in a list of measurements
case name // Homogenized Name
case obsdate // Observation date
case obstime // Observation time
case oidref // Object internal identifier
case progid // Observing Program Identification
case station // Station (V=Vilspa/G=Goddard)

public var id:String {
return rawValue
}

public var description:String {
switch self{
case .abnormcode: return "Abnormality code"
case .aperture: return "Aperture designation code"
case .bibcode: return "measurement bibcode"
case .camid: return "Camera id"
case .classcode: return "IUE class code"
case .comments: return "Comments"
case .complid: return "Complementary Identifier"
case .dispcode: return "Dispersion code"
case .expqualcode: return "Exposure quality code"
case .exptime: return "Effective exposure time"
case .fescount: return "FES count"
case .fesmode: return "FES mode"
case .flag: return "Flag"
case .image: return "Image number"
case .mespos: return "Position of a measurement in a list of measurements"
case .name: return "Homogenized Name"
case .obsdate: return "Observation date"
case .obstime: return "Observation time"
case .oidref: return "Object internal identifier"
case .progid: return "Observing Program Identification"
case .station: return "Station (V=Vilspa/G=Goddard)"
}
}
}


public enum mesPLX_columns: String, Codable, Identifiable, CaseIterable {
case bibcode // measurement bibcode
case mespos // Position of a measurement in a list of measurements
case obscode // Observatory code
case oidref // Object internal identifier
case plx // Parallax
case plx_err // sigma{plx}
case plx_prec // Precision (# of decimal positions) associated with the column plx

public var id:String {
return rawValue
}

public var description:String {
switch self{
case .bibcode: return "measurement bibcode"
case .mespos: return "Position of a measurement in a list of measurements"
case .obscode: return "Observatory code"
case .oidref: return "Object internal identifier"
case .plx: return "Parallax"
case .plx_err: return "sigma{plx}"
case .plx_prec: return "Precision (# of decimal positions) associated with the column plx"
}
}
}


public enum mesPM_columns: String, Codable, Identifiable, CaseIterable {
case bibcode // measurement bibcode
case coosystem // coordinates system designation
case mespos // Position of a measurement in a list of measurements
case oidref // Object internal identifier
case pmde // Proper motion DEC.
case pmde_err // sigma{pm-de}
case pmde_err_prec // Precision (# of decimal positions) associated with the column pmde_err
case pmde_prec // Precision (# of decimal positions) associated with the column pmde
case pmra // Proper motion R.A.
case pmra_err // sigma{pm-ra}
case pmra_err_prec // Precision (# of decimal positions) associated with the column pmra_err
case pmra_prec // Precision (# of decimal positions) associated with the column pmra

public var id:String {
return rawValue
}

public var description:String {
switch self{
case .bibcode: return "measurement bibcode"
case .coosystem: return "coordinates system designation"
case .mespos: return "Position of a measurement in a list of measurements"
case .oidref: return "Object internal identifier"
case .pmde: return "Proper motion DEC."
case .pmde_err: return "sigma{pm-de}"
case .pmde_err_prec: return "Precision (# of decimal positions) associated with the column pmde_err"
case .pmde_prec: return "Precision (# of decimal positions) associated with the column pmde"
case .pmra: return "Proper motion R.A."
case .pmra_err: return "sigma{pm-ra}"
case .pmra_err_prec: return "Precision (# of decimal positions) associated with the column pmra_err"
case .pmra_prec: return "Precision (# of decimal positions) associated with the column pmra"
}
}
}


public enum mesRot_columns: String, Codable, Identifiable, CaseIterable {
case bibcode // measurement bibcode
case mespos // Position of a measurement in a list of measurements
case nbmes // Number of measurements
case oidref // Object internal identifier
case qual // Quality
case upvsini // Upper value of Vsini
case vsini // V sini
case vsini_err // error
case vsini_err_prec // Precision (# of decimal positions) associated with the column vsini_err
case vsini_prec // Precision (# of decimal positions) associated with the column vsini

public var id:String {
return rawValue
}

public var description:String {
switch self{
case .bibcode: return "measurement bibcode"
case .mespos: return "Position of a measurement in a list of measurements"
case .nbmes: return "Number of measurements"
case .oidref: return "Object internal identifier"
case .qual: return "Quality"
case .upvsini: return "Upper value of Vsini"
case .vsini: return "V sini"
case .vsini_err: return "error"
case .vsini_err_prec: return "Precision (# of decimal positions) associated with the column vsini_err"
case .vsini_prec: return "Precision (# of decimal positions) associated with the column vsini"
}
}
}


public enum mesSpT_columns: String, Codable, Identifiable, CaseIterable {
case bibcode // measurement bibcode
case dispsystem // dispersive system
case mespos // Position of a measurement in a list of measurements
case mssnote // mss notes
case oidref // Object internal identifier
case sptype // MK/MSS spectral type

public var id:String {
return rawValue
}

public var description:String {
switch self{
case .bibcode: return "measurement bibcode"
case .dispsystem: return "dispersive system"
case .mespos: return "Position of a measurement in a list of measurements"
case .mssnote: return "mss notes"
case .oidref: return "Object internal identifier"
case .sptype: return "MK/MSS spectral type"
}
}
}


public enum mesVar_columns: String, Codable, Identifiable, CaseIterable {
case bibcode // measurement bibcode
case epoch // Epoch of maximum or minimum
case epoch_prec // Precision (# of decimal positions) associated with the column epoch
case lowVmax // Upper limit flag for Vmax
case magtyp // Magnitude type
case mespos // Position of a measurement in a list of measurements
case oidref // Object internal identifier
case period // Period
case period_prec // Precision (# of decimal positions) associated with the column period
case r_epoch // Uncertainty on epoch (:)
case r_period // Uncertainty flag on period (:)
case r_raisingTime // Uncertainty flag on raising time
case r_vmax // Uncertainty flag
case r_vmin // Uncertainty flag for Vmin
case raisingTime // Raising time for all other variable types
case raisingTime_prec // Precision (# of decimal positions) associated with the column raisingTime
case uppVmin // Lower limit flag for Vmin
case upperiod // Lower limit flag for the period
case vartyp // Type of variability
case vmax // Maximum of brightness
case vmax_prec // Precision (# of decimal positions) associated with the column vmax
case vmin // Minimum of brightness
case vmin_prec // Precision (# of decimal positions) associated with the column vmin

public var id:String {
return rawValue
}

public var description:String {
switch self{
case .bibcode: return "measurement bibcode"
case .epoch: return "Epoch of maximum or minimum"
case .epoch_prec: return "Precision (# of decimal positions) associated with the column epoch"
case .lowVmax: return "Upper limit flag for Vmax"
case .magtyp: return "Magnitude type"
case .mespos: return "Position of a measurement in a list of measurements"
case .oidref: return "Object internal identifier"
case .period: return "Period"
case .period_prec: return "Precision (# of decimal positions) associated with the column period"
case .r_epoch: return "Uncertainty on epoch (:)"
case .r_period: return "Uncertainty flag on period (:)"
case .r_raisingTime: return "Uncertainty flag on raising time"
case .r_vmax: return "Uncertainty flag"
case .r_vmin: return "Uncertainty flag for Vmin"
case .raisingTime: return "Raising time for all other variable types"
case .raisingTime_prec: return "Precision (# of decimal positions) associated with the column raisingTime"
case .uppVmin: return "Lower limit flag for Vmin"
case .upperiod: return "Lower limit flag for the period"
case .vartyp: return "Type of variability"
case .vmax: return "Maximum of brightness"
case .vmax_prec: return "Precision (# of decimal positions) associated with the column vmax"
case .vmin: return "Minimum of brightness"
case .vmin_prec: return "Precision (# of decimal positions) associated with the column vmin"
}
}
}


public enum mesVelocities_columns: String, Codable, Identifiable, CaseIterable {
case bibcode // measurement bibcode
case d // 'D' if the resolution is a conversion from the dispersion
case meanError // sigma(Value)
case meanError_prec // Precision (# of decimal positions) associated with the column meanError
case mespos // Position of a measurement in a list of measurements
case nature // nature of the measurement
case nbmes // Number of measurements
case obsdate // Observation date
case obsdate_prec // Precision (# of decimal positions) associated with the column obsdate
case oidref // Object internal identifier
case origin // Origin of the radial velocity
case qual // Quality
case quality // Quality
case remark // colon is uncertain question mark is questionable
case remarks // Remarks
case resolution // Resolution
case velType // velocity type (v, z or cz)
case velValue // Velocity
case velValue_prec // Precision (# of decimal positions) associated with the column velValue
case wdomain // Wavelength domain (Rad,mm,IR,Opt,UV,XRay,Gam)

public var id:String {
return rawValue
}

public var description:String {
switch self{
case .bibcode: return "measurement bibcode"
case .d: return "'D' if the resolution is a conversion from the dispersion"
case .meanError: return "sigma(Value)"
case .meanError_prec: return "Precision (# of decimal positions) associated with the column meanError"
case .mespos: return "Position of a measurement in a list of measurements"
case .nature: return "nature of the measurement"
case .nbmes: return "Number of measurements"
case .obsdate: return "Observation date"
case .obsdate_prec: return "Precision (# of decimal positions) associated with the column obsdate"
case .oidref: return "Object internal identifier"
case .origin: return "Origin of the radial velocity"
case .qual: return "Quality"
case .quality: return "Quality"
case .remark: return "colon is uncertain question mark is questionable"
case .remarks: return "Remarks"
case .resolution: return "Resolution"
case .velType: return "velocity type (v, z or cz)"
case .velValue: return "Velocity"
case .velValue_prec: return "Precision (# of decimal positions) associated with the column velValue"
case .wdomain: return "Wavelength domain (Rad,mm,IR,Opt,UV,XRay,Gam)"
}
}
}


public enum mesXmm_columns: String, Codable, Identifiable, CaseIterable {
case mespos // Position of a measurement in a list of measurements
case obsid // Observation identifier
case oidref // Object internal identifier

public var id:String {
return rawValue
}

public var description:String {
switch self{
case .mespos: return "Position of a measurement in a list of measurements"
case .obsid: return "Observation identifier"
case .oidref: return "Object internal identifier"
}
}
}


public enum mes_otype_columns: String, Codable, Identifiable, CaseIterable {
case bibcode // bibcode reference
case comments // explanation of origin of this type
case oidref // Object internal identifier
case otype // Object type

public var id:String {
return rawValue
}

public var description:String {
switch self{
case .bibcode: return "bibcode reference"
case .comments: return "explanation of origin of this type"
case .oidref: return "Object internal identifier"
case .otype: return "Object type"
}
}
}


public enum otypedef_columns: String, Codable, Identifiable, CaseIterable {
case comment // Additional comment
case description // Object type, full description string
case is_candidate // True if the object type is a candidate (non-confirmed)
case label // Object type, compact label string
case otype // Object type
case otype_longname // (DEPRECATED) Object type, full description string
case otype_shortname // (DEPRECATED) Object type, short name
case path // Otype path in the hierarchical classification

public var id:String {
return rawValue
}

public var description:String {
switch self{
case .comment: return "Additional comment"
case .description: return "Object type, full description string"
case .is_candidate: return "True if the object type is a candidate (non-confirmed)"
case .label: return "Object type, compact label string"
case .otype: return "Object type"
case .otype_longname: return "(DEPRECATED) Object type, full description string"
case .otype_shortname: return "(DEPRECATED) Object type, short name"
case .path: return "Otype path in the hierarchical classification"
}
}
}


public enum otypes_columns: String, Codable, Identifiable, CaseIterable {
case oidref // Object internal identifier
case origin // explanation of origin of this type
case otype // Object type
case otype_txt // Object type

public var id:String {
return rawValue
}

public var description:String {
switch self{
case .oidref: return "Object internal identifier"
case .origin: return "explanation of origin of this type"
case .otype: return "Object type"
case .otype_txt: return "Object type"
}
}
}


public enum ref_columns: String, Codable, Identifiable, CaseIterable {
case abstract // (revisited) Abstract of published paper
case bibcode // Bibcode
case doi // DOI designation
case journal // Abbreviation for the journal
case last_page // Last page number
case nbobject // Number of objects studied in
case oidbib // Bibcode internal identifier
case page // page number
case title // Title
case volume // volume number
case year // Publication year

public var id:String {
return rawValue
}

public var description:String {
switch self{
case .abstract: return "(revisited) Abstract of published paper"
case .bibcode: return "Bibcode"
case .doi: return "DOI designation"
case .journal: return "Abbreviation for the journal"
case .last_page: return "Last page number"
case .nbobject: return "Number of objects studied in"
case .oidbib: return "Bibcode internal identifier"
case .page: return "page number"
case .title: return "Title"
case .volume: return "volume number"
case .year: return "Publication year"
}
}
}

