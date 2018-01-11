LIBRARY ieee  ; 
USE ieee.std_logic_1164.all  ; 
ENTITY keyexpansion_tb  IS 
END ; 
 
ARCHITECTURE keyexpansion_tb_arch OF keyexpansion_tb IS
  SIGNAL a   :  std_logic_vector (127 downto 0)  ; 
  SIGNAL b   :  std_logic_vector (127 downto 0)  ; 
  SIGNAL Rcon   :  std_logic_vector (7 downto 0)  ; 
  COMPONENT KeyExpansion  
    PORT ( 
      a  : in std_logic_vector (127 downto 0) ; 
      b  : out std_logic_vector (127 downto 0) ; 
      Rcon  : in std_logic_vector (7 downto 0) ); 
  END COMPONENT ; 
BEGIN
  DUT  : KeyExpansion  
    PORT MAP ( 
      a   => a  ,
      b   => b  ,
      Rcon   => Rcon   ) ; 
      
process
  begin
    wait for 10 ns;
    a <= x"2b7e151628aed2a6abf7158809cf4f3c";
    Rcon <= x"01";
    wait for 10 ns;
  end process;
END ; 

