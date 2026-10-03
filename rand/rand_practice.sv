class break_fast;

    randc bit  [2:0] coffee;
    randc bit  [2:0] tea; 
    rand  bit  [2:0] green_tea;
    string           starter;

    typedef struct packed
    {
      bit   [2:0]  flour,
      logic [1:0]  oil,
      bit          idli_dosa,
    } fast_break;

    rand fast_break fb;
 
    function void pre_randomize();        
    endfunction

    function void post_randomize();
    endfunction

endclass

class lunch extends break_fast;

    rand bit         veg;

    rand integer     milk;
    rand integer     shake;


    typedef union
    {
        real        meat,
        real        veggies,
        logic [1:0] eggs,
    } lunch;

    rand lunch veg_meter;


    function void pre_randomize();        
    endfunction

    function void post_randomize();
    endfunction

endclass

class dinner extends lunch

    rand bit [1:0]  rice;
    rand bit        hunt;

    rand  shortint   sweet_corn;
    rand  shortint   brownie;

    typedef enum 
    {
        HUNT,
        HOTEL,
        HUSTLE
    } dinner;

    rand dinner dinner_choice;

      function void pre_randomize();        
    endfunction

    function void post_randomize();
    endfunction

endclass

class menu extends dinner

  constraint morning_sip
  {
    if (tea > coffee ^ green_tea)
      starter = "tea";

    else if (coffee > tea ^ green_tea)
      starter = "coffee";

    else 
      starter = "green_tea";
  }

  constraint morning_dish
  {
   if (fb.idli_dosa) ->
              ( fast_break dist {fb.flour := 70, fb.oil := 30} );
   else
              ( fast_breat dist {fb.flour := 50, fb.oil := 50} );
  }

constraint lunch_dish
  {
   if 




module menu_break;

    base    b;
    derived n;

    initial begin
        b = new();
        n = new();

        $display("=== Starting Parent Randomization ===");
        repeat(2) begin
            void'(b.randomize());
        end

        $display("\n=== Starting Child Randomization ===");
        repeat(4) begin
            void'(n.randomize());
        end
    end

endmodule

