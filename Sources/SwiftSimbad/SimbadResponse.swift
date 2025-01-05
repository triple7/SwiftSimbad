//
//  SimbadResponse.swift
//  SwiftSimbad
//
//  Created by Yuma decaux on 5/1/2025.
//

import Foundation

public struct SimbadResponse: Codable {
public var allfluxes: [AllfluxesResponse]?
public var alltypes: [AlltypesResponse]?
public var author: [AuthorResponse]?
public var basic: BasicResponse?
public var biblio: [BiblioResponse]?
public var cat: [CatResponse]?
public var filter: [FilterResponse]?
public var flux: [FluxResponse]?
public var h_link: [H_linkResponse]?
public var has_ref: [Has_refResponse]?
public var ident: [IdentResponse]?
public var ids: [IdsResponse]?
public var journals: [JournalsResponse]?
public var keywords: [KeywordsResponse]?
public var mesDiameter: [MesDiameterResponse]?
public var mesDistance: [MesDistanceResponse]?
public var mesFe_h: [MesFe_hResponse]?
public var mesHerschel: [MesHerschelResponse]?
public var mesISO: [MesISOResponse]?
public var mesIUE: [MesIUEResponse]?
public var mesPLX: [MesPLXResponse]?
public var mesPM: [MesPMResponse]?
public var mesRot: [MesRotResponse]?
public var mesSpT: [MesSpTResponse]?
public var mesVar: [MesVarResponse]?
public var mesVelocities: [MesVelocitiesResponse]?
public var mesXmm: [MesXmmResponse]?
public var mes_otype: [Mes_otypeResponse]?
public var otypedef: [OtypedefResponse]?
public var otypes: [OtypesResponse]?
public var ref: [RefResponse]?

public mutating func setAllfluxes(_ allfluxes: [AllfluxesResponse]){
self.allfluxes = allfluxes
}

public mutating func setAlltypes(_ alltypes: [AlltypesResponse]){
self.alltypes = alltypes
}

public mutating func setAuthor(_ author: [AuthorResponse]){
self.author = author
}

public mutating func setBasic(_ basic: BasicResponse){
self.basic = basic
}

public mutating func setBiblio(_ biblio: [BiblioResponse]){
self.biblio = biblio
}

public mutating func setCat(_ cat: [CatResponse]){
self.cat = cat
}

public mutating func setFilter(_ filter: [FilterResponse]){
self.filter = filter
}

public mutating func setFlux(_ flux: [FluxResponse]){
self.flux = flux
}

public mutating func setH_link(_ h_link: [H_linkResponse]){
self.h_link = h_link
}

public mutating func setHas_ref(_ has_ref: [Has_refResponse]){
self.has_ref = has_ref
}

public mutating func setIdent(_ ident: [IdentResponse]){
self.ident = ident
}

public mutating func setIds(_ ids: [IdsResponse]){
self.ids = ids
}

public mutating func setJournals(_ journals: [JournalsResponse]){
self.journals = journals
}

public mutating func setKeywords(_ keywords: [KeywordsResponse]){
self.keywords = keywords
}

public mutating func setMesDiameter(_ mesDiameter: [MesDiameterResponse]){
self.mesDiameter = mesDiameter
}

public mutating func setMesDistance(_ mesDistance: [MesDistanceResponse]){
self.mesDistance = mesDistance
}

public mutating func setMesFe_h(_ mesFe_h: [MesFe_hResponse]){
self.mesFe_h = mesFe_h
}

public mutating func setMesHerschel(_ mesHerschel: [MesHerschelResponse]){
self.mesHerschel = mesHerschel
}

public mutating func setMesISO(_ mesISO: [MesISOResponse]){
self.mesISO = mesISO
}

public mutating func setMesIUE(_ mesIUE: [MesIUEResponse]){
self.mesIUE = mesIUE
}

public mutating func setMesPLX(_ mesPLX: [MesPLXResponse]){
self.mesPLX = mesPLX
}

public mutating func setMesPM(_ mesPM: [MesPMResponse]){
self.mesPM = mesPM
}

public mutating func setMesRot(_ mesRot: [MesRotResponse]){
self.mesRot = mesRot
}

public mutating func setMesSpT(_ mesSpT: [MesSpTResponse]){
self.mesSpT = mesSpT
}

public mutating func setMesVar(_ mesVar: [MesVarResponse]){
self.mesVar = mesVar
}

public mutating func setMesVelocities(_ mesVelocities: [MesVelocitiesResponse]){
self.mesVelocities = mesVelocities
}

public mutating func setMesXmm(_ mesXmm: [MesXmmResponse]){
self.mesXmm = mesXmm
}

public mutating func setMes_otype(_ mes_otype: [Mes_otypeResponse]){
self.mes_otype = mes_otype
}

public mutating func setOtypedef(_ otypedef: [OtypedefResponse]){
self.otypedef = otypedef
}

public mutating func setOtypes(_ otypes: [OtypesResponse]){
self.otypes = otypes
}

public mutating func setRef(_ ref: [RefResponse]){
self.ref = ref
}

}


public struct AllfluxesResponse: Codable{
var metadata:[String: String]?
var data: AllfluxesData?
}

public struct AllfluxesData: Codable{
public var B: Double? // B magnitude
public var F150W: Double? // JWST NIRCam F150W
public var F200W: Double? // JWST NIRCam F200W
public var F444W: Double? // JWST NIRCam F444W
public var G: Double? // G magnitude
public var H: Double? // H magnitude
public var I: Double? // I magnitude
public var J: Double? // J magnitude
public var K: Double? // K magnitude
public var R: Double? // R magnitude
public var U: Double? // U magnitude
public var V: Double? // V magnitude
public var g_: Double? // g magnitude
public var i_: Double? // i magnitude
public var oidref: Int? // Object internal identifier
public var r_: Double? // r magnitude
public var u_: Double? // u magnitude
public var z_: Double? // z magnitude
}

public struct AlltypesResponse: Codable{
var metadata:[String: String]?
var data: AlltypesData?
}

public struct AlltypesData: Codable{
public var oidref: Int? // Object internal identifier
public var otypes: String? // List of all object types concatenated with pipe
}

public struct AuthorResponse: Codable{
var metadata:[String: String]?
var data: AuthorData?
}

public struct AuthorData: Codable{
public var name: String? // Author of a bibliographical reference
public var oidbibref: Int? // Bibcode internal identifier
public var pos: Int? // Position of the author in the bib ref
}

public struct BasicResponse: Codable{
var metadata:[String: String]?
var data: BasicData?
}

public struct BasicData: Codable{
public var coo_bibcode: String? // Coordinate reference
public var coo_err_angle: Int? // Coordinate error angle
public var coo_err_maj: Double? // Coordinate error major axis
public var coo_err_maj_prec: Int? // Coordinate error major axis precision
public var coo_err_min: Double? // Coordinate error minor axis
public var coo_err_min_prec: Int? // Coordinate error minor axis precision
public var coo_qual: String? // Coordinate quality
public var coo_wavelength: String? // Wavelength class for the origin of the coordinates (R,I,V,U,X,G)
public var dec: Double? // Declination
public var dec_prec: Int? // Declination precision
public var galdim_angle: Int? // Galaxy ellipse angle
public var galdim_bibcode: String? // Galaxy dimension reference
public var galdim_majaxis: Double? // Angular size major axis
public var galdim_majaxis_prec: Int? // Angular size major axis precision
public var galdim_minaxis: Double? // Angular size minor axis
public var galdim_minaxis_prec: Int? // Angular size minor axis precision
public var galdim_qual: String? // Galaxy dimension quality
public var galdim_wavelength: String? // Wavelength class for the origin of the Galaxy dimension
public var hpx: Int? // Healpix number at ORDER=10
public var main_id: String? // Main identifier for an object
public var morph_bibcode: String? // morphological type reference
public var morph_qual: String? // Morphological type quality
public var morph_type: String? // Morphological type
public var nbref: Int? // number of references
public var oid: Int? // Object internal identifier
public var otype: String? // Object type
public var otype_txt: String? // Object type
public var plx_bibcode: String? // Parallax reference
public var plx_err: Double? // Parallax error
public var plx_err_prec: Int? // Parallax error precision
public var plx_prec: Int? // Parallax precision
public var plx_qual: String? // Parallax quality
public var plx_value: Double? // Parallax
public var pm_bibcode: String? // Proper motion reference
public var pm_err_angle: Int? // Proper motion error angle
public var pm_err_maj: Double? // Proper motion error major axis
public var pm_err_maj_prec: Int? // Proper motion error major axis precision
public var pm_err_min: Double? // Proper motion error minor axis
public var pm_err_min_prec: Int? // Proper motion error minor axis precision
public var pm_qual: String? // Proper motion quality
public var pmdec: Double? // Proper motion in DEC
public var pmdec_prec: Int? // Proper motion in DEC precision
public var pmra: Double? // Proper motion in RA
public var pmra_prec: Int? // Proper motion in RA precision
public var ra: Double? // Right ascension
public var ra_prec: Int? // Right ascension precision
public var rvz_bibcode: String? // Radial velocity / redshift reference
public var rvz_err: Double? // Radial velocity / redshift error
public var rvz_err_prec: Int? // Radial velocity / redshift error precision
public var rvz_nature: String? // velocity / redshift nature
public var rvz_qual: String? // Radial velocity / redshift quality
public var rvz_radvel: Double? // Radial Velocity
public var rvz_radvel_prec: Int? // Radial velocity precision
public var rvz_redshift: Double? // redshift
public var rvz_redshift_prec: Int? // redshift precision
public var rvz_type: String? // Radial velocity / redshift type
public var rvz_wavelength: String? // Wavelength class for the origin of the radial velocity/reshift
public var sp_bibcode: String? // spectral type reference
public var sp_qual: String? // Spectral type quality
public var sp_type: String? // MK spectral type
public var update_date: Date? // Date of last modification
public var vlsr: Double? // velocity in Local Standard of Rest reference frame
public var vlsr_bibcode: String? // Reference for the origin of the LSR velocity
public var vlsr_err: Double? // Error incertainty of the VLSR velocity
public var vlsr_max: Double? // Maximum for the mean value of the LSR velocity
public var vlsr_min: Double? // Minimum for the mean value of the LSR velocity
public var vlsr_wavelength: String? // Wavelength class for the origin of the LSR velocity
}

public struct BiblioResponse: Codable{
var metadata:[String: String]?
var data: BiblioData?
}

public struct BiblioData: Codable{
public var biblio: String? // List of Bibcodes separated with a pipe
public var oidref: Int? // Object internal identifier
}

public struct CatResponse: Codable{
var metadata:[String: String]?
var data: CatData?
}

public struct CatData: Codable{
public var cat_name: String? // Catalogue name
public var description: String? // Catalogue description
public var size: Int? // Number of objects of the Catalogue in SIMBAD
}

public struct FilterResponse: Codable{
var metadata:[String: String]?
var data: FilterData?
}

public struct FilterData: Codable{
public var description: String? // flux filter description
public var filtername: String? // flux filter name
public var unit: String? // physical unit name
}

public struct FluxResponse: Codable{
var metadata:[String: String]?
var data: FluxData?
}

public struct FluxData: Codable{
public var bibcode: String? // flux reference
public var filter: String? // flux filter name
public var flux: Double? // None
public var flux_err: Double? // flux error
public var flux_err_prec: Int? // flux error precision
public var flux_prec: Int? // flux precision
public var oidref: Int? // Object internal identifier
public var qual: String? // flux quality flag
}

public struct H_linkResponse: Codable{
var metadata:[String: String]?
var data: H_linkData?
}

public struct H_linkData: Codable{
public var child: Int? // child oid
public var link_bibcode: String? // link reference
public var membership: Int? // membership probability
public var parent: Int? // parent oid
}

public struct Has_refResponse: Codable{
var metadata:[String: String]?
var data: Has_refData?
}

public struct Has_refData: Codable{
public var obj_freq: Int? // flag
public var oidbibref: Int? // Bibcode internal identifier
public var oidref: Int? // Object internal identifier
public var ref_flag: Int? // flag
public var ref_raw_id: String? // id like it appears in the article
}

public struct IdentResponse: Codable{
var metadata:[String: String]?
var data: IdentData?
}

public struct IdentData: Codable{
public var id: String? // Identifier
public var oidref: Int? // Object internal identifier
}

public struct IdsResponse: Codable{
var metadata:[String: String]?
var data: IdsData?
}

public struct IdsData: Codable{
public var ids: String? // List of all identifiers concatenated with pipe
public var oidref: Int? // Object internal identifier
}

public struct JournalsResponse: Codable{
var metadata:[String: String]?
var data: JournalsData?
}

public struct JournalsData: Codable{
public var journal: String? // Abbreviation for the journal
public var name: String? // Full name of the journal
public var years: String? // Range of years of this journal in the database
}

public struct KeywordsResponse: Codable{
var metadata:[String: String]?
var data: KeywordsData?
}

public struct KeywordsData: Codable{
public var keyword: String? // Keyword text and link
public var oidbibref: Int? // Object internal identifier of reference
public var position: Int? // Position of the keyword in the publication
}

public struct MesDiameterResponse: Codable{
var metadata:[String: String]?
var data: MesDiameterData?
}

public struct MesDiameterData: Codable{
public var bibcode: String? // measurement bibcode
public var diameter: Double? // Diameter value
public var diameter_prec: Int? // Precision (# of decimal positions) associated with the column diameter
public var error: Double? // Error
public var error_prec: Int? // Precision (# of decimal positions) associated with the column error
public var filter: String? // filter or wavelength
public var mespos: Int? // Position of a measurement in a list of measurements
public var method: String? // calculation method
public var oidref: Int? // Object internal identifier
public var qual: String? // Quality
public var unit: String? // Unit (mas/km)
}

public struct MesDistanceResponse: Codable{
var metadata:[String: String]?
var data: MesDistanceData?
}

public struct MesDistanceData: Codable{
public var bibcode: String? // measurement bibcode
public var dist: Double? // Distance value
public var dist_prec: Int? // Precision (# of decimal positions) associated with the column dist
public var mespos: Int? // Position of a measurement in a list of measurements
public var method: String? // distance calculation method
public var minus_err: Double? // minus error
public var minus_err_prec: Int? // Precision (# of decimal positions) associated with the column minus_err
public var oidref: Int? // Object internal identifier
public var plus_err: Double? // plus error
public var plus_err_prec: Int? // Precision (# of decimal positions) associated with the column plus_err
public var qual: String? // Quality
public var unit: String? // Unit (pc,kpc or Mpc)
}

public struct MesFe_hResponse: Codable{
var metadata:[String: String]?
var data: MesFe_hData?
}

public struct MesFe_hData: Codable{
public var bibcode: String? // measurement bibcode
public var catno: String? // Star in the Cayrel et al. (1997A&AS..124..299C) compilation
public var compstar: String? // Designates the comparison star from which the [Fe/H] value was obtained
public var fe_h: Double? // Metallicity index relative to the Sun
public var fe_h_prec: Int? // Precision (# of decimal positions) associated with the column fe_h
public var flag: String? // Flag on the [Fe/H] value
public var log_g: Double? // Decimal logarithm of the surface gravity
public var log_g_prec: Int? // Precision (# of decimal positions) associated with the column log_g
public var mespos: Int? // Position of a measurement in a list of measurements
public var oidref: Int? // Object internal identifier
public var teff: Int? // Effective Temperature
}

public struct MesHerschelResponse: Codable{
var metadata:[String: String]?
var data: MesHerschelData?
}

public struct MesHerschelData: Codable{
public var alpha: String? // Right Ascension J2000
public var delta: String? // Declination J2000
public var mespos: Int? // Position of a measurement in a list of measurements
public var obsid: String? // Observation identifier
public var oidref: Int? // Object internal identifier
}

public struct MesISOResponse: Codable{
var metadata:[String: String]?
var data: MesISOData?
}

public struct MesISOData: Codable{
public var dec: Double? // Declination
public var dec_prec: Int? // Precision (# of decimal positions) associated with the column dec
public var mespos: Int? // Position of a measurement in a list of measurements
public var obsid: String? // Observation identifier
public var oidref: Int? // Object internal identifier
public var ra: Double? // Right ascension
public var ra_prec: Int? // Precision (# of decimal positions) associated with the column ra
}

public struct MesIUEResponse: Codable{
var metadata:[String: String]?
var data: MesIUEData?
}

public struct MesIUEData: Codable{
public var abnormcode: String? // Abnormality code
public var aperture: String? // Aperture designation code
public var bibcode: String? // measurement bibcode
public var camid: String? // Camera id
public var classcode: Int? // IUE class code
public var comments: String? // Comments
public var complid: String? // Complementary Identifier
public var dispcode: String? // Dispersion code
public var expqualcode: String? // Exposure quality code
public var exptime: Int? // Effective exposure time
public var fescount: Int? // FES count
public var fesmode: String? // FES mode
public var flag: String? // Flag
public var image: Int? // Image number
public var mespos: Int? // Position of a measurement in a list of measurements
public var name: String? // Homogenized Name
public var obsdate: String? // Observation date
public var obstime: String? // Observation time
public var oidref: Int? // Object internal identifier
public var progid: String? // Observing Program Identification
public var station: String? // Station (V=Vilspa/G=Goddard)
}

public struct MesPLXResponse: Codable{
var metadata:[String: String]?
var data: MesPLXData?
}

public struct MesPLXData: Codable{
public var bibcode: String? // measurement bibcode
public var mespos: Int? // Position of a measurement in a list of measurements
public var obscode: String? // Observatory code
public var oidref: Int? // Object internal identifier
public var plx: Double? // Parallax
public var plx_err: Double? // sigma{plx}
public var plx_prec: Int? // Precision (# of decimal positions) associated with the column plx
}

public struct MesPMResponse: Codable{
var metadata:[String: String]?
var data: MesPMData?
}

public struct MesPMData: Codable{
public var bibcode: String? // measurement bibcode
public var coosystem: String? // coordinates system designation
public var mespos: Int? // Position of a measurement in a list of measurements
public var oidref: Int? // Object internal identifier
public var pmde: Double? // Proper motion DEC.
public var pmde_err: Double? // sigma{pm-de}
public var pmde_err_prec: Int? // Precision (# of decimal positions) associated with the column pmde_err
public var pmde_prec: Int? // Precision (# of decimal positions) associated with the column pmde
public var pmra: Double? // Proper motion R.A.
public var pmra_err: Double? // sigma{pm-ra}
public var pmra_err_prec: Int? // Precision (# of decimal positions) associated with the column pmra_err
public var pmra_prec: Int? // Precision (# of decimal positions) associated with the column pmra
}

public struct MesRotResponse: Codable{
var metadata:[String: String]?
var data: MesRotData?
}

public struct MesRotData: Codable{
public var bibcode: String? // measurement bibcode
public var mespos: Int? // Position of a measurement in a list of measurements
public var nbmes: Int? // Number of measurements
public var oidref: Int? // Object internal identifier
public var qual: String? // Quality
public var upvsini: String? // Upper value of Vsini
public var vsini: Double? // V sini
public var vsini_err: Double? // error
public var vsini_err_prec: Int? // Precision (# of decimal positions) associated with the column vsini_err
public var vsini_prec: Int? // Precision (# of decimal positions) associated with the column vsini
}

public struct MesSpTResponse: Codable{
var metadata:[String: String]?
var data: MesSpTData?
}

public struct MesSpTData: Codable{
public var bibcode: String? // measurement bibcode
public var dispsystem: String? // dispersive system
public var mespos: Int? // Position of a measurement in a list of measurements
public var mssnote: String? // mss notes
public var oidref: Int? // Object internal identifier
public var sptype: String? // MK/MSS spectral type
}

public struct MesVarResponse: Codable{
var metadata:[String: String]?
var data: MesVarData?
}

public struct MesVarData: Codable{
public var bibcode: String? // measurement bibcode
public var epoch: Double? // Epoch of maximum or minimum
public var epoch_prec: Int? // Precision (# of decimal positions) associated with the column epoch
public var lowVmax: String? // Upper limit flag for Vmax
public var magtyp: String? // Magnitude type
public var mespos: Int? // Position of a measurement in a list of measurements
public var oidref: Int? // Object internal identifier
public var period: Double? // Period
public var period_prec: Int? // Precision (# of decimal positions) associated with the column period
public var r_epoch: String? // Uncertainty on epoch (:)
public var r_period: String? // Uncertainty flag on period (:)
public var r_raisingTime: String? // Uncertainty flag on raising time
public var r_vmax: String? // Uncertainty flag
public var r_vmin: String? // Uncertainty flag for Vmin
public var raisingTime: Double? // Raising time for all other variable types
public var raisingTime_prec: Int? // Precision (# of decimal positions) associated with the column raisingTime
public var uppVmin: String? // Lower limit flag for Vmin
public var upperiod: String? // Lower limit flag for the period
public var vartyp: String? // Type of variability
public var vmax: Double? // Maximum of brightness
public var vmax_prec: Int? // Precision (# of decimal positions) associated with the column vmax
public var vmin: Double? // Minimum of brightness
public var vmin_prec: Int? // Precision (# of decimal positions) associated with the column vmin
}

public struct MesVelocitiesResponse: Codable{
var metadata:[String: String]?
var data: MesVelocitiesData?
}

public struct MesVelocitiesData: Codable{
public var bibcode: String? // measurement bibcode
public var d: String? // 'D' if the resolution is a conversion from the dispersion
public var meanError: Double? // sigma(Value)
public var meanError_prec: Int? // Precision (# of decimal positions) associated with the column meanError
public var mespos: Int? // Position of a measurement in a list of measurements
public var nature: String? // nature of the measurement
public var nbmes: Int? // Number of measurements
public var obsdate: Double? // Observation date
public var obsdate_prec: Int? // Precision (# of decimal positions) associated with the column obsdate
public var oidref: Int? // Object internal identifier
public var origin: String? // Origin of the radial velocity
public var qual: String? // Quality
public var quality: String? // Quality
public var remark: String? // colon is uncertain question mark is questionable
public var remarks: String? // Remarks
public var resolution: Int? // Resolution
public var velType: String? // velocity type (v, z or cz)
public var velValue: Double? // Velocity
public var velValue_prec: Int? // Precision (# of decimal positions) associated with the column velValue
public var wdomain: String? // Wavelength domain (Rad,mm,IR,Opt,UV,XRay,Gam)
}

public struct MesXmmResponse: Codable{
var metadata:[String: String]?
var data: MesXmmData?
}

public struct MesXmmData: Codable{
public var mespos: Int? // Position of a measurement in a list of measurements
public var obsid: String? // Observation identifier
public var oidref: Int? // Object internal identifier
}

public struct Mes_otypeResponse: Codable{
var metadata:[String: String]?
var data: Mes_otypeData?
}

public struct Mes_otypeData: Codable{
public var bibcode: String? // bibcode reference
public var comments: String? // explanation of origin of this type
public var oidref: Int? // Object internal identifier
public var otype: String? // Object type
}

public struct OtypedefResponse: Codable{
var metadata:[String: String]?
var data: OtypedefData?
}

public struct OtypedefData: Codable{
public var comment: String? // Additional comment
public var description: String? // Object type, full description string
public var is_candidate: Int? // True if the object type is a candidate (non-confirmed)
public var label: String? // Object type, compact label string
public var otype: String? // Object type
public var otype_longname: String? // (DEPRECATED) Object type, full description string
public var otype_shortname: String? // (DEPRECATED) Object type, short name
public var path: String? // Otype path in the hierarchical classification
}

public struct OtypesResponse: Codable{
var metadata:[String: String]?
var data: OtypesData?
}

public struct OtypesData: Codable{
public var oidref: Int? // Object internal identifier
    public var origin: String? // explanation of origin of this type
public var otype: String? // Object type
    public var otype_txt: String? // Object type
}

public struct RefResponse: Codable{
var metadata:[String: String]?
var data: RefData?
}

public struct RefData: Codable{
public var abstract: String? // (revisited) Abstract of published paper
public var bibcode: String? // Bibcode
public var doi: String? // DOI designation
public var journal: String? // Abbreviation for the journal
public var last_page: Int? // Last page number
public var nbobject: Int? // Number of objects studied in
public var oidbib: Int? // Bibcode internal identifier
public var page: Int? // page number
public var title: String? // Title
public var volume: Int? // volume number
public var year: Int? // Publication year
}

