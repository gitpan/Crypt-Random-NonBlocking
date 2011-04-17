#!perl

eval {
    require Test::Perl::Critic
} or do {
    require Test::More;
    Test::More::plan(
        skip_all => "Test::Perl::Critic required for testing PBP compliance"
    );
};

Test::Perl::Critic::all_critic_ok();
