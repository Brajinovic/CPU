----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 12/29/2022 10:38:33 PM
-- Design Name: 
-- Module Name: dFlipFlop - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity dFlipFlop is
  Port ( 
    d, cp, reset, en: in std_logic;
    q, qn: out std_logic
  );
end dFlipFlop;

architecture Behavioral of dFlipFlop is

begin
    process(reset, cp, en)
        begin
        if(en = '1')then
            if(reset = '1')then
                q <= '0';
            elsif(cp'event and cp = '1')then
                q <= d;
            end if;
            
        else
            q <= '0';
            
        end if;
        
            qn <= not d;
    end process;

end Behavioral;
