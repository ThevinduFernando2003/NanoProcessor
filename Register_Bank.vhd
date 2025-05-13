----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/13/2025 09:14:29 PM
-- Design Name: 
-- Module Name: Register_Bank - Behavioral
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

entity Register_Bank is
    Port ( D : in STD_LOGIC_VECTOR (7 downto 0);
           I : in STD_LOGIC_VECTOR (2 downto 0);
           CLK : in STD_LOGIC;
           CLR : in STD_LOGIC;
           R0 : out STD_LOGIC_VECTOR (7 downto 0);
           R1 : out STD_LOGIC_VECTOR (7 downto 0);
           R2 : out STD_LOGIC_VECTOR (7 downto 0);
           R3 : out STD_LOGIC_VECTOR (7 downto 0);
           R4 : out STD_LOGIC_VECTOR (7 downto 0);
           R5 : out STD_LOGIC_VECTOR (7 downto 0);
           R6 : out STD_LOGIC_VECTOR (7 downto 0);
           R7 : out STD_LOGIC_VECTOR (7 downto 0));
end Register_Bank;

architecture Behavioral of Register_Bank is

    component Decoder_3_to_8
    port ( I : in STD_LOGIC_VECTOR(2 downto 0);
           EN : in STD_LOGIC;
           Y : out STD_LOGIC_VECTOR(7 downto 0));
    end component;
    
    component Register_4_Bit
        Port (  D : in STD_LOGIC_VECTOR (3 downto 0);
                Res : in STD_LOGIC;
                EN : in STD_LOGIC;
                Clk : in STD_LOGIC;
                Q : out STD_LOGIC_VECTOR (3 downto 0));
    end component;
   
     signal Reg_Sel: STD_LOGIC_VECTOR (7 downto 0);
                
begin

    Decoder_3_to_8_0: Decoder_3_to_8
        port map( 
            I  => I,
            EN => '1',
            Y => Reg_Sel
        );

    R0 <= "0000";
    
    Reg_1: Register_4_Bit
        port map(
            D  => D,
            Res => CLR,
            EN => Reg_Sel(1),
            Clk => Clk,
            Q => R1
        );
    
    Reg_2: Register_4_Bit
        port map(
            D  => D,
            Res => CLR,
            EN => Reg_Sel(2),
            Clk => Clk,
            Q => R2
        );
    
    Reg_3: Register_4_Bit
        port map(
            D  => D,
            Res => CLR,
            EN => Reg_Sel(3),
            Clk => Clk,
            Q => R3
        );
                
    Reg_4: Register_4_Bit
        port map(
            D  => D,
            Res => CLR,
            EN => Reg_Sel(4),
            Clk => Clk,
            Q => R4
        );
    
    Reg_5: Register_4_Bit
        port map(
            D  => D,
            Res => CLR,
            EN => Reg_Sel(5),
            Clk => Clk,
            Q => R5
        );
    
    Reg_6: Register_4_Bit
        port map(
            D  => D,
            Res => CLR,
            EN => Reg_Sel(6),
            Clk => Clk,
            Q => R6
        );
    
    Reg_7: Register_4_Bit
        port map(
            D  => D,
            Res => CLR,
            EN => Reg_Sel(7),
            Clk => Clk,
            Q => R7
        );

end Behavioral;
