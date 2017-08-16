module rand2();
  int i;
  int j;

  class random_dist;
    rand bit [7:0] i;
    bit [7:0] j;
    function new();
      j = 8;
    endfunction
    constraint i_dist {
      i dist {j:=50};
    }
  endclass
  
  random_dist random_dist1;

  initial begin
    random_dist1 = new ();
  
    for (int i=0; i<100; i++)
    begin
      random_dist1.randomize();
      $display ("Randomized value of i,j is : %d\t%d", random_dist1.i, random_dist1.j);
    end

  end

endmodule
