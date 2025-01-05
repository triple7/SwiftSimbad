//
//  SimbadTable.swift
//  SwiftSimbad
//
//  Created by Yuma decaux on 4/1/2025.
//

public enum SimbadFormat:String, Codable, Identifiable {
    case csv
    case json
    case ascii
    case tap
    
    public var id:String {
        return self.rawValue
    }
}


public enum SimbadTable:String, Codable, Identifiable, CaseIterable {
    case allfluxes
    case alltypes
    case author
    case basic
    case biblio
    case cat
    case filter
    case flux
    case h_link
    case has_ref
    case ident
    case ids
    case journals
    case keywords
    case mesDiameter
    case mesDistance
    case mesFe_h
    case mesHerschel
    case mesISO
    case mesIUE
    case mesPLX
    case mesPM
    case mesRot
    case mesSpT
    case mesVar
    case mesVelocities
    case mesXmm
    case mes_otype
    case otypedef
    case otypes
    case ref
    
    public var id:String {
        return rawValue
    }
    
    public var description:String {
        switch self {
        case .allfluxes: return "all flux/magnitudes U,B,V,I,J,H,K,u_,g_,r_,i_,z_"
        case .alltypes: return "all object types concatenated with pipe"
        case .author: return "Author of a bibliographic reference"
        case .basic: return "General data about an astronomical object"
        case .biblio: return "Bibliography"
        case .cat: return "Catalogues name"
        case .filter: return "Description of a flux filter"
        case .flux: return "Magnitude/Flux information about an astronomical object"
        case .h_link: return "hierarchy of membership measure"
        case .has_ref: return "Associations between astronomical objects and their bibliographic references"
        case .ident: return "Identifiers of an astronomical object"
        case .ids: return "all names concatenated with pipe"
        case .journals: return "Description of all used journals in the database"
        case .keywords: return "List of keywords in a paper"
        case .mesDiameter: return "Collection of stellar diameters."
        case .mesDistance: return "Collection of distances (pc, kpc or Mpc) by several means."
        case .mesFe_h: return "Collection of metallicity, as well as Teff, logg for stars."
        case .mesHerschel: return "The Herschel observing Log"
        case .mesISO: return "Infrared Space Observatory (ISO) observing log."
        case .mesIUE: return "International Ultraviolet Explorer observing log."
        case .mesPLX: return "Collection of trigonometric parallaxes."
        case .mesPM: return "Collection of proper motions."
        case .mesRot: return "Stellar Rotational Velocities."
        case .mesSpT: return "Collection of spectral types."
        case .mesVar: return "Collection of stellar variability types and periods."
        case .mesVelocities: return "Collection of HRV, Vlsr, cz and redshifts."
        case .mesXmm: return "XMM observing log."
        case .mes_otype: return "Other object types associated with an object with origins"
        case .otypedef: return "all names and definitions for the object types"
        case .otypes: return "List of all object types associated with an object"
        case .ref: return "Bibliographic reference"
        }
    }
    
}



public enum SimbadOperator:String, Codable, Identifiable {
    case eq = "="
    case lt = "<"
    case gt = ">"
    case lte = "<="
    case gte = ">="
    case like = "like"
    case between = "between"
    case and = "and"
    case or = "or"
    case all = "*"
    
    public var id:String {
        return rawValue
    }
}
