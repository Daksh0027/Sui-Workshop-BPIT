module hello_world::hello_world {

    use std::string;
    use sui::object::new;

    public struct HelloWorldObject has key, store {
        id: sui::object::UID,
        text: string::String,
    }

    public fun mint(ctx: &mut TxContext): HelloWorldObject {
        HelloWorldObject {
            id: new(ctx),
            text: string::utf8(b"Hello World!"),
        }
    }
}