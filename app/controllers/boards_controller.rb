class BoardsController < ApplicationController
  def index
    @boards = Board.all
  end

  def new
  end

  def create
    # 1. 표에 비어있는 행을 가지고 온다.
    @board = Board.new

    # 2. 비어있는 행의 각각의 컬럼에다 사용자의 입력값을 집어넣는다. 
    @board.title = params[:title]
    @board.content = params[:content]

    # 3. 값을 집어넣은 행을 저장한다.
    @board.save 

    redirect_to "/boards/show/#{@board.id}"
  end

  def show
    @board = Board.find(params[:id])
  end

  def edit
    @board = Board.find(params[:id])
  end

  def update
    # 1. 표에 특정 행을 가지고 온다.
    @board = Board.find(params[:id])

    # 2. 특정 행의 각각의 컬럼에다 변경된 사용자의 입력값을 집어넣는다. 
    @board.title = params[:title]
    @board.content = params[:content]

    # 3. 값을 집어넣은 행을 저장한다.
    @board.save

    redirect_to "/boards/show/#{@board.id}"
  end

  def destroy
    @board = Board.find(params[:id])

    @board.destroy

    redirect_to "/"
  end
end
