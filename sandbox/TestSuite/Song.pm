package Song;

use strict;
use warnings;
use 5.010;

use lib '../../lib';
use base 'ActiveRecord::Simple';

__PACKAGE__->table_name('song');
__PACKAGE__->columns(['id', 'title']);
__PACKAGE__->primary_key('id');

__PACKAGE__->relations({
    albums => {
        class => { 'CDSong' => 'CD' },
        type  => 'many',
    }
})