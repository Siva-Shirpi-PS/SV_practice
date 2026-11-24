// 12. When VALID is high and READY is low, the ADDRESS must remain stable for the next two clock cycles.
module ass_12;
  
  bit          clk = 0;
  logic        valid;
  logic        ready;
  logic  [1:0] addr_i, addr_o;


  always #5 clk = ~clk;

  always @(posedge clk) begin
    if(valid && !ready) begin
          addr_o <= addr_i;
    end
  end
 
  initial begin
    $shm_open("waves.shm");
    $shm_probe("AS");
  end

  initial begin
  
      valid  = 0;
      ready  = 0;
      addr_i = 0;
      addr_o = 0;

  @(posedge clk);
      valid  = 1;
      addr_i = 2'd2;
      
  @(posedge clk);
      valid  = 0;
      ready  = 1;
      addr_i = 0;
  
  repeat(2) @(posedge clk);
      ready  = 0;

  @(posedge clk);
      valid  = 1;
      addr_i = 2'd3;
  @(posedge clk);
      ready = 0;
      
  repeat (4) @(posedge clk); $finish;
  end

  property p12;
    @(posedge clk) 
    (valid && !ready) |=> $stable(addr_o) [*2];
  endproperty

  A12: assert property (p12)
    $info("A12 Assertion Pass");
    else
    $error("A12 Assertion Fail");

  endmodule
