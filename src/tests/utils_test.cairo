// Core library imports.
use option::OptionTrait;
use array::ArrayTrait;

use quaireaux::utils;

// Test power function
#[test]
#[available_gas(2000000)]
fn count_digits_of_base_test() {
    assert(utils::count_digits_of_base(0, 10) == 0, 'invalid result');
    assert(utils::count_digits_of_base(2, 10) == 1, 'invalid result');
    assert(utils::count_digits_of_base(10, 10) == 2, 'invalid result');
    assert(utils::count_digits_of_base(100, 10) == 3, 'invalid result');
    assert(utils::count_digits_of_base(0x80, 16) == 2, 'invalid result');
    assert(utils::count_digits_of_base(0x800, 16) == 3, 'invalid result');
    assert(utils::count_digits_of_base(0x888888888888888888, 16) == 18, 'invalid result');
}

// Test for power function
#[test]
#[available_gas(2000000)]
fn pow_test() {
    assert(utils::pow(2, 0) == 1, 'invalid result');
    assert(utils::pow(2, 1) == 2, 'invalid result');
    assert(utils::pow(2, 12) == 4096, 'invalid result');
}
