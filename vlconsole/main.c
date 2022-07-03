  #include <stdlib.h>
  #include <curses.h>

  int main(){
    int lines, cols;
    long iter;
    int index;
    int y[3], x[3];
    initscr(); /* Initialize screen, size, feat, etx */ 
    cbreak(); 
    noecho();

    clear();
    lines = LINES - 1;
    cols = COLS - 1;

    x[0] = 0;
    y[0] = 0;
    
    y[1] = lines;
    x[1] = cols / 2;

    y[2] = 0;
    x[2] = cols;
    printw("h");
    

    refresh();
    getch();
    endwin();
  }