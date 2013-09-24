use 5.008001;
use strict;
use warnings;

package Dancer::Plugin::Queue::Role::Queue;
# ABSTRACT: Dancer::Plugin::Queue implementation API
# VERSION

use Moo::Role;

requires 'add_msg';

requires 'get_msg';

requires 'remove_msg';

1;

=for Pod::Coverage method_names_here

=head1 SYNOPSIS

    package Dancer::Plugin::Queue::MyBackend

    use Moo;
    with 'Dancer::Plugin::Queue::Role::Queue';

    sub add_msg    { ... }

    sub get_msg    { ... }

    sub remove_msg { ... }

=head1 DESCRIPTION

This role specifies the API required by queue backend implementations.
The following methods must be provided:

=for :list
* add_msg
* get_msg
* remove_msg

=cut

# vim: ts=4 sts=4 sw=4 et:
