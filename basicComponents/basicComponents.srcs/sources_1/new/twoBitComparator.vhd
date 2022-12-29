----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 12/24/2022 08:48:34 PM
-- Design Name: 
-- Module Name: twoBitComparator - Behavioral
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

entity twoBitComparator is
  Port (
    i0, i1: in std_logic_vector(1 downto 0);
    eq: out std_logic
   );
end twoBitComparator;

architecture Behavioral of twoBitComparator is
    signal p0, p1, p2, p3: std_logic;
begin
    p0 <= ((not i0(1)) and (not i1(1))) and ((not i0(0)) and (not i1(0)));
    p1 <= ((not i0(1)) and (not i1(1))) and (i0(0) and i1(0));
    p2 <= (i0(1) and i1(1)) and ((not i0(0)) and (not i1(0)));
    p3 <= (i0(1) and i1(1)) and (i0(0) and i1(0));
    
    eq <= p0 or p1 or p2 or p3;


end Behavioral;
