function gamblers_ruin_simulation ( a_stakes, b_stakes, game_num )

  if ( nargin < 1 )
    a_stakes = input ( 'Enter A_STAKES: ' );
  elseif ( ischar ( a_stakes ) )
    a_stakes = str2num ( a_stakes );
  end

  if ( nargin < 2 )
    b_stakes = input ( 'Enter B_STAKES: ' );
  elseif ( ischar ( b_stakes ) )
    b_stakes = str2num ( b_stakes );
  end

  if ( nargin < 3 )
    game_num = input ( 'Enter GAME_NUM, the number of games to play: ' );
  elseif ( ischar ( game_num ) )
    game_num = str2num ( game_num );
  end

  count = 0;

  for game = 1 : game_num

    a = a_stakes;
    b = b_stakes;

    while ( 0 < a && 0 < b )
      r = rand ( );
 
      if ( r <= 0.5 )
        a = a + 1;
        b = b - 1;
      else
        a = a - 1;
        b = b + 1;
      end

    end

    while ( a==0 )

      r = rand ( );
 
      if ( r <= 0.6 )
        a = a + 1;
        b = b - 1;
      else
        a = a;
        b = b;
      end

    while ( b == 0 ) 
        count = count+1
    end
    end
  end

  r = count / game_num;
  fprintf ( 1, '  r = %f\n', r );
  
 