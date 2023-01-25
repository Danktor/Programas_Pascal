CONST N = ...; (* un entero mayor que 1 *)
TYPE
    Dominio = 0..1;
    NumeroBinario = ARRAY [1..N] OF Dominio;

FUNCTION maximaBinaryGap (bin : NumeroBinario) : Integer;
var
    i,j,cont,cont_aux : integer;

begin
    i := 1;
    cont := 0;
    if N > 2 then
        begin   
            while i <= N do 
                begin
                    j := i + 1;
                    if bin[i] = 1 and j < N and bin[j] = 0 then
                        begin
                            cont_aux := 0;
                            while j < N and bin[j] = 0 do
                                begin
                                    cont_aux := cont_aux + 1
                                    j := j + 1;
                                end;
                            if j < N and cont_aux > cont then
                                cont := cont_aux;
                        end   
                    else
                        i := i + 1
                end;
        end
    maximaBinaryGap := cont;
    

end;
