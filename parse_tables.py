import json as J
import requests as R

TAP_URL = "https://simbad.cds.unistra.fr/simbad/sim-tap/sync?request=doQuery&lang=adql&format=json&query="

def get_json():
    with open("tables.json", "r") as file:
        return J.load(file)

def generate_tables():
    json = get_json()
    data = json['data']
    print("public enum SimbadTable:String, Codable, Identifiable, CaseIterable {")
    for d in data[5:]:
        print(f"case {d[0]}")
    print("\n")
    print("var description:String {\nswitch self {")
    for d in data[5:]:
        print(f'case .{d[0]}: return "{d[1]}"')
    print("}")
    print("}")

def generate_columns():
    json = get_json()
    data = json['data']
    for d in data[5:]:
        table_name = d[0]
        url = TAP_URL + f"SELECT * FROM tap_schema.columns WHERE table_name = '{table_name}' ORDER BY column_name"
        result = R.get(url).json()
        col_data = result['data']
        print(f"public enum {table_name}_columns: String, Codable, Identifiable, CaseIterable " + "{")
        for c in col_data:
            name = c[2]
            desc = c[6]
            print(f"case {name} // {desc}")
        print("")
        print("public var id:String {\nreturn rawValue\n}\n")
        print("public var description:String {\nswitch self{")
        for c in col_data:
            name = c[2]
            desc = c[6]
            print(f'case .{name}: return "{desc}"')
        print("}")
        print("}")
        print("}")
        print("\n")

def get_dtype(dtype):
    if dtype == "int" or dtype == "BIGINT" or dtype == "SMALLINT" or dtype == "INTEGER":
        return "Int"
    if dtype.lower() == "float":
        return "Float"
    if dtype.lower() == "real":
        return "Double"
    if dtype.lower() == "bool":
        return "Bool"
    if dtype == "char" or dtype.lower() in "varchar" or dtype == "CHAR" or dtype == "TEXT" or dtype == "UNICODECHAR":
        return "String"
    if dtype.lower() == "double":
        return "Double"
    if dtype == "date":
        return "Date"
    return dtype


def generate_responses():
    json = get_json()
    data = json['data']
    for d in data[5:]:
        table_name = d[0]
        url = TAP_URL + f"SELECT * FROM tap_schema.columns WHERE table_name = '{table_name}' ORDER BY column_name"
        result = R.get(url).json()
        col_data = result['data']
        c = table_name[0].upper()
        table_name = c + table_name[1:]
        print(f"public struct {table_name}Response: Codable" + "{")
        print("public var metadata:[String: String]?")
        print(f"public var data: [{table_name}Data]?")
        print("}")
        print("")
        print(f"public struct {table_name}Data: Codable" + "{")
        for col in col_data:
            name = col[2]
            dtype = get_dtype(col[3])
            desc = col[6]
            print(f"public var {name}: {dtype}? // {desc}")
        print("}\n")


def generate_payload():
    json = get_json()
    data = json['data']
    print("public struct SimbadResponse: Codable {")
    for d in data[5:]:
        name = d[0]
        c = name[0].upper()
        className = c + name[1:]
        print(f"public var {name}: {className}Response?")
    print("")
    for d in data[5:]:
        name = d[0]
        c = name[0].upper()
        className = c + name[1:]
        print(f"public mutating func set{className}(_ {name}: {className}Response)" + "{")
        print(f"self.{name} = {name}")
        print("}")
        print("")
    print("}")

def generate_switch():
    json = get_json()
    data = json['data']
    template = "result.setCLASS(try! JSONDecoder().decode([CLASSResponse].self, from: data!))"
    for d in data[5:]:
        name = d[0]
        c = name[0].upper()
        className = c + name[1:]
        print(f"case .{name}:")
        print(template.replace("CLASS", className))


if __name__ == "__main__":
    generate_responses()