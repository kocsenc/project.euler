# Kocsen Chung
# Problem 11 Project Euler

#In the 2020 grid below, four numbers along a diagonal line have been marked in red.
#
#08 02 22 97 38 15 00 40 00 75 04 05 07 78 52 12 50 77 91 08
#49 49 99 40 17 81 18 57 60 87 17 40 98 43 69 48 04 56 62 00
#81 49 31 73 55 79 14 29 93 71 40 67 53 88 30 03 49 13 36 65
#52 70 95 23 04 60 11 42 69 24 68 56 01 32 56 71 37 02 36 91
#22 31 16 71 51 67 63 89 41 92 36 54 22 40 40 28 66 33 13 80
#24 47 32 60 99 03 45 02 44 75 33 53 78 36 84 20 35 17 12 50
#32 98 81 28 64 23 67 10 26 38 40 67 59 54 70 66 18 38 64 70
#67 26 20 68 02 62 12 20 95 63 94 39 63 08 40 91 66 49 94 21
#24 55 58 05 66 73 99 26 97 17 78 78 96 83 14 88 34 89 63 72
#21 36 23 09 75 00 76 44 20 45 35 14 00 61 33 97 34 31 33 95
#78 17 53 28 22 75 31 67 15 94 03 80 04 62 16 14 09 53 56 92
#16 39 05 42 96 35 31 47 55 58 88 24 00 17 54 24 36 29 85 57
#86 56 00 48 35 71 89 07 05 44 44 37 44 60 21 58 51 54 17 58
#19 80 81 68 05 94 47 69 28 73 92 13 86 52 17 77 04 89 55 40
#04 52 08 83 97 35 99 16 07 97 57 32 16 26 26 79 33 27 98 66
#88 36 68 87 57 62 20 72 03 46 33 67 46 55 12 32 63 93 53 69
#04 42 16 73 38 25 39 11 24 94 72 18 08 46 29 32 40 62 76 36
#20 69 36 41 72 30 23 88 34 62 99 69 82 67 59 85 74 04 36 16
#20 73 35 29 78 31 90 01 74 31 49 71 48 86 81 16 23 57 05 54
#01 70 54 71 83 51 54 69 16 92 33 48 61 43 52 01 89 19 67 48
#The product of these numbers is 26  63  78  14 = 1788696.

#What is the greatest product of four adjacent numbers in the same direction (up, down, left, right, or diagonally) in the 2020 grid?


def main
  max_val = 0
  board = Array.new()
  puts 'created new array'
  board.push [8, 49, 81, 52, 22, 24, 32, 67, 24, 21, 78, 16, 86, 19, 04, 88, 04, 20, 20, 1]
  board.push [2, 49, 49, 70, 31, 47, 98, 26, 55, 36, 17, 39, 56, 80, 52, 36, 42, 69, 73, 70]
  board.push [22, 99, 31, 95, 16, 32, 81, 20, 58, 23, 53, 5, 0, 81, 8, 68, 16, 36, 35, 54]
  board.push [97, 40, 73, 23, 71, 60, 28, 68, 5, 9, 28, 42, 48, 68, 83, 87, 73, 41, 29, 71]
  board.push [38, 17, 55, 4, 51, 99, 64, 2, 66, 75, 22, 96, 35, 5, 97, 57, 38, 72, 78, 83]
  board.push [15, 81, 79, 60, 67, 3, 23, 62, 73, 0, 75, 35, 71, 94, 35, 62, 25, 30, 31, 51]
  board.push [0, 18, 14, 11, 63, 45, 67, 12, 99, 76, 31, 31, 89, 47, 99, 20, 39, 23, 90, 54]
  board.push [40, 57, 29, 42, 89, 02, 10, 20, 26, 44, 67, 47, 07, 69, 16, 72, 11, 88, 01, 69]
  board.push [0, 60, 93, 69, 41, 44, 26, 95, 97, 20, 15, 55, 5, 28, 7, 3, 24, 37, 74, 16]
  board.push [75, 87, 71, 24, 92, 75, 38, 63, 17, 45, 94, 58, 44, 73, 97, 46, 94, 62, 31, 92]
  board.push [4, 17, 40, 68, 36, 33, 40, 94, 78, 35, 3, 88, 44, 92, 57, 33, 72, 99, 49, 33]
  board.push [5, 40, 67, 56, 54, 53, 67, 39, 78, 14, 80, 24, 37, 13, 32, 67, 18, 69, 71, 48]
  board.push [7, 98, 53, 1, 22, 78, 59, 63, 96, 0, 4, 0, 44, 86, 16, 46, 8, 82, 48, 61]
  board.push [78, 43, 88, 32, 40, 36, 54, 8, 83, 61, 62, 17, 60, 52, 26, 55, 46, 67, 86, 43]
  board.push [52, 69, 30, 56, 40, 84, 70, 40, 14, 33, 16, 54, 21, 17, 26, 12, 29, 59, 81, 52]
  board.push [12, 48, 3, 71, 28, 20, 66, 91, 88, 97, 14, 24, 58, 77, 79, 32, 32, 85, 16, 1]
  board.push [50, 4, 49, 37, 66, 35, 18, 66, 34, 34, 9, 36, 51, 4, 33, 63, 40, 74, 23, 89]
  board.push [77, 56, 13, 2, 33, 17, 38, 49, 89, 31, 53, 29, 54, 89, 27, 93, 62, 4, 57, 19]
  board.push [91, 62, 36, 36, 13, 12, 64, 94, 63, 33, 56, 85, 17, 55, 98, 53, 76, 36, 5, 67]
  board.push [8, 0, 65, 91, 80, 50, 70, 21, 72, 95, 92, 57, 58, 40, 66, 69, 36, 16, 54, 48]


  (0...20).each { |col|
    (0...20).each { |row|
      if board[row][col] != nil
        right = try_right(board, col, row)
        diagonal = try_diag(board, col, row)
        down = try_down(board, col, row)

        puts '@[col,row] : ' + col.to_s + '] [' + row.to_s
        puts 'Right: ' + right.to_s
        puts 'Diag: ' + diagonal.to_s
        puts 'Down: ' + down.to_s

        max_val = right if right > max_val
        max_val = diagonal if diagonal > max_val
        max_val = down if down > max_val
      end
    }
  }
  puts 'Max value ended up being: ' + max_val.to_s
end

def try_right(board, start_col, start_row)
  arr = Array.new
  (start_col..start_col+4).each { |col|
    if board[col][start_row] != nil && col <= 16
      arr.push(board[col][start_row])
    else
      return 0
    end
  }

  arr.inject(:*)
end

def try_diag(board, start_col, start_row)
  arr = Array.new
  row = start_row
  (start_col..start_col+4).each { |col|
    if board[col][row] != nil && row <= 16 && col <= 16
      arr.push(board[col][row])
      row += 1
    else
      return 0
    end
  }

  arr.inject(:*)
end

def try_down(board, start_col, start_row)
  arr = Array.new
  (start_row..start_row+4).each { |row|
    if board[start_col][row] != nil && row <= 16
      arr.push(board[start_col][row])
    else
      return 0
    end
  }
  puts arr.inspect
  arr.inject(:*)
end

main()