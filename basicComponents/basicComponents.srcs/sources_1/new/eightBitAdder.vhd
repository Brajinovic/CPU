----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 01/02/2023 01:46:04 PM
-- Design Name: 
-- Module Name: eightBitAdder - Behavioral
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

entity eightBitAdder is
  Port ( 
    a, b: in std_logic_vector(7 downto 0);
 
    r: out std_logic_vector(7 downto 0);
    cf: out std_logic
  );
end eightBitAdder;

architecture Behavioral of eightBitAdder is
    signal carry: std_logic_vector(6 downto 0);
begin
    s0: entity work.halfAdder port map (a => a(0), b => b(0), s => r(0), cout => carry(0));  
    s1: entity work.fullAdder port map (a => a(1), b => b(1), s => r(1), cin => carry(0), cout => carry(1));
    s2: entity work.fullAdder port map (a => a(2), b => b(2), s => r(2), cin => carry(1), cout => carry(2));
    s3: entity work.fullAdder port map (a => a(3), b => b(3), s => r(3), cin => carry(2), cout => carry(3));
    s4: entity work.fullAdder port map (a => a(4), b => b(4), s => r(4), cin => carry(3), cout => carry(4));
    s5: entity work.fullAdder port map (a => a(5), b => b(5), s => r(5), cin => carry(4), cout => carry(5));
    s6: entity work.fullAdder port map (a => a(6), b => b(6), s => r(6), cin => carry(5), cout => carry(6));
    s7: entity work.fullAdder port map (a => a(7), b => b(7), s => r(7), cin => carry(6), cout => cf);
    
end Behavioral;
