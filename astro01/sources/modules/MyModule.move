module MYADDR::MyModule{
    use std::debug;
    
    struct Country has drop{
        id: u8,
        population: u64
    }

    public fun new_country(c_id: u8, c_population: u64): Country {
        let country = Country{
            id: c_id,
            population: c_population
        };
        country
    }

    public fun get_country_id(country: &Country): u8{
        country.id
    }

    public fun get_country_pop(country: &Country) : u64{
        country.population
    }    

    #[test]
    public fun main(){
        let val: u8 = 10;
        debug::print<u8>(&val);

        let con = new_country(10, 250);
        let id = get_country_id(&con);
        let pop = get_country_pop(&con);

        debug::print<u8>(&id);
        debug::print<u64>(&pop);
    }
}
