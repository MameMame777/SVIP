class simple_item_t;
import pkg_definitions::*;
  logic [NBITS-1:0] wr_data[255:0];
  logic [NBITS-1:0] rd_data;
  logic             rst;   //FIFO reset
  logic             write; //FIFO write operation
  logic             read;  //FIFO read operation
  logic             nop;   //No operation
  logic             all_write; //FIFO write operation unitl full
  logic             all_read;//Read all the data in the FIFO  

function  new();
  init();
endfunction


function void init();
  //op
  rst      = '0;
  write    = '0;
  read     = '0; 
  nop      = '0;
  all_write= '0;
  all_read = '0;
  //data
  rd_data  = '0;
  for(int i=0; i<255; i++)begin
    wr_data[i] = '0;
  end
endfunction
endclass