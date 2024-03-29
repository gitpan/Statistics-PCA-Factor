use strict;
use warnings;
use Module::Build;

my $builder = Module::Build->new(
    module_name         => 'Statistics::PCA::Factor',
    license             => 'perl',
    dist_author         => 'Daniel S. T. Hughes <dsth@cantab.net>',
    dist_version_from   => 'lib/Statistics/PCA/Factor.pm',
    requires => {
        'Test::More'                =>  0,
        'version'                   =>  0,
        'Carp'                      =>  '1.08',
        'Moose'                     =>  '0.93',
        'MooseX::NonMoose'          =>  '0.07',
        'Statistics::PCA::Varimax'  =>  '0.0.2',
        'Math::GSL::Linalg::SVD'    =>  '0.0.2', 
        'List::Util'                =>  '1.22',
    },
    add_to_cleanup      => [ 'Statistics-PCA-Factor-*' ],
);

$builder->create_build_script();
