----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 01/07/2023 08:39:46 PM
-- Design Name: 
-- Module Name: multiplexor - Behavioral
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

entity multiplexor is
  Port ( 
    a, b, c: in std_logic_vector(7 downto 0);
    sel: in std_logic_vector(1 downto 0);
    r: out std_logic_vector(7 downto 0)
  );
end multiplexor;

architecture Behavioral of multiplexor is

begin
    r <= a when sel = "00" else
         b when sel = "01" else
         c;

end Behavioral;
