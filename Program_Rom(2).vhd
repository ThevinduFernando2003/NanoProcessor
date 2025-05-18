----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/14/2025 01:00:29 PM
-- Design Name: 
-- Module Name: Program_Rom - Behavioral
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Program_Rom is
    Port ( Address : in STD_LOGIC_VECTOR (2 downto 0);
           Data : out STD_LOGIC_VECTOR (11 downto 0));
end Program_Rom;

architecture Behavioral of Program_Rom is

type rom_type is array (0 to 7) of STD_LOGIC_VECTOR (11 downto 0);

    signal PROGRAM_ROM: rom_type := (
        "000010000001", -- MOVI R1,1      -- 0: Load R1 with 1
        "000100000010", -- MOVI R2,2      -- 1: Load R2 with 2
        "100010100000", -- ADD  R1,R2     -- 2: R1 = R1 + R2 (3)
        "000110000001", -- MOVI R3,1      -- 3: Load R3 with 1
        "010110000000", -- NEG  R3        -- 4: R3 = -R3 (-1)
        "100010110000", -- ADD  R1,R3     -- 5: R1 = R1 + R3 (2)
        "100100110000", -- ADD  R2,R3     -- 6: R2 = R2 + R3 (1)
        "110000000010"  -- JZR  R0,2      -- 7: Jump to 2 if R0 = 0
        );
        
begin

Data <= PROGRAM_ROM(to_integer(unsigned(Address)));

end Behavioral;
