----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/04/2025 02:17:00 PM
-- Design Name: 
-- Module Name: Decoder_3_to_8 - Behavioral
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

entity Decoder_3_to_8 is
    Port ( I : in STD_LOGIC_VECTOR (2 downto 0);
           EN : in STD_LOGIC;
           Y : out STD_LOGIC_VECTOR (7 downto 0));
end Decoder_3_to_8;

architecture Behavioral of Decoder_3_to_8 is

component Decoder_2_to_4 port(
    I : in STD_LOGIC_VECTOR (1 downto 0);
    EN : in STD_LOGIC;
    Y : out STD_LOGIC_VECTOR (3 downto 0));
end component;

signal i0,i1 : std_logic_vector (1 downto 0);
signal y0,y1 : std_logic_vector (3 downto 0);
signal en0,en1,i2 : std_logic;

begin
    Decoder_2_to_4_0 : Decoder_2_to_4
    port map (
    I => i0,
    EN => en0,
    Y => y0);
        
    Decoder_2_to_4_1 : Decoder_2_to_4
    port map(
    I => i1,
    EN => en1,
    Y => y1);
    
    en0 <= NOT(I(2)) AND EN;
    en1 <= I(2) AND EN;
    i0 <= I(1 downto 0);
    i1 <= I(1 downto 0);
    i2 <= I(2);
    Y(3 downto 0) <= y0;
    Y(7 downto 4) <= y1;
    
end Behavioral;
