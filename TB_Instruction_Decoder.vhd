----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/16/2025 01:23:52 AM
-- Design Name: 
-- Module Name: TB_Instruction_Decoder - Behavioral
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

entity TB_Instruction_Decoder is
--  Port ( );
end TB_Instruction_Decoder;

architecture Behavioral of TB_Instruction_Decoder is

component Instruction_Decoder
Port ( Ins_Bus : in STD_LOGIC_VECTOR (11 downto 0);
       Reg_Ch_Jump : in STD_LOGIC_VECTOR (3 downto 0);
       Reg_Enable : out STD_LOGIC_VECTOR (2 downto 0);
       Load_Sel : out STD_LOGIC;  -- 1 when immediate value
       Imm_Value : out STD_LOGIC_VECTOR (3 downto 0);
       Reg_Sel_1 : out STD_LOGIC_VECTOR (2 downto 0);
       Reg_Sel_2 : out STD_LOGIC_VECTOR (2 downto 0);
       Add_Sub_Sel : out STD_LOGIC; -- add - 0
       Jump_Flag : out STD_LOGIC;
       Address_Jump : out STD_LOGIC_VECTOR (2 downto 0));
end component;

signal Ins_Bus : std_logic_vector (11 downto 0);
signal Reg_Ch_Jump,Imm_Value : std_logic_vector (3 downto 0);
signal Reg_Enable,Reg_Sel_1,Reg_Sel_2,Address_Jump : std_logic_vector (2 downto 0);
signal Load_Sel,Add_Sub_Sel,Jump_Flag : std_logic;

begin

UUT : Instruction_decoder port map (
Ins_Bus => Ins_Bus,
Reg_Ch_Jump => Reg_Ch_Jump,
Reg_Enable => Reg_Enable,
Load_Sel => Load_Sel,
Imm_Value => Imm_Value,
Reg_Sel_1 => Reg_Sel_1,
Reg_Sel_2 => Reg_Sel_2,
Add_Sub_Sel => Add_Sub_Sel,
Jump_Flag => Jump_Flag,
Address_Jump => Address_Jump);

process begin
-- Test ADD (type 00): ADD R1, R2
Ins_Bus <= "000010010000";
Reg_Ch_Jump <= "0000";
wait for 10 ns;

-- Test SUB (type 01): SUB R3
Ins_Bus <= "010011000000";
wait for 10 ns;

-- Test LOAD immediate (type 10): LOAD 1010 into R5
Ins_Bus <= "101000001010";
wait for 10 ns;

-- Test JUMP (type 11): if Reg_Ch_Jump = 0000, then Jump
Ins_Bus <= "110110000011";
Reg_Ch_Jump <= "0000";     
wait for 10 ns;

-- Test JUMP (type 11): condition not met (Reg_Ch_Jump != 0000)
Ins_Bus <= "111000000001";
Reg_Ch_Jump <= "0001";     
wait for 10 ns;

wait;
end process;



end Behavioral;
