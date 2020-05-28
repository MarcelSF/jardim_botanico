import $ from 'jquery';
import select2 from 'select2'

const multiSelect = () => {
  $(document).ready(function() {
    $('.multiple').select2();
  });
}

export { multiSelect }
