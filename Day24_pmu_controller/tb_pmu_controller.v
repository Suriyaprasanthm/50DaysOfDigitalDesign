module tb_pmu_controller;

    reg  [7:0] tb_temp, tb_battery, tb_load;
    wire [1:0] tb_mode;

    pmu_controller dut (
        .temp(tb_temp),
        .battery(tb_battery),
        .load(tb_load),
        .mode(tb_mode)
    );

    initial begin

        tb_temp = 210; tb_battery = 100; tb_load = 50; #5;  // shutdown
        tb_temp = 100; tb_battery = 30;  tb_load = 10; #5;  // power-save
        tb_temp = 80;  tb_battery = 200; tb_load = 90; #5;  // performance
        tb_temp = 100; tb_battery = 100; tb_load = 40; #5;  // normal

        $finish;
    end
    initial begin
	            $dumpfile("tb_pmu_controller.vcd");
        $dumpvars(0, tb_pmu_controller);
end
endmodule

