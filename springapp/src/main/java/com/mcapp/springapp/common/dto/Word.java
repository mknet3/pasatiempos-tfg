package com.mcapp.springapp.common.dto;

import org.json.JSONObject;

public class Word {
	private final Position pos;
	private final Direction direction;
	private String word;
	private int length;

	public Word(Position pos, Direction direction, int length) {
		this.pos = pos;
		this.direction = direction;
		this.length = length;
	}
	
	public Word(int row, int column, Direction direction, int length) {
		this.pos = new Position(row, column);
		this.direction = direction;
		this.length = length;
	}

	public Position getPos() {
		return this.pos;
	}
	
	public int getCol() {
		return this.pos.getColumn();
	}
	
	public int getRow() {
		return this.pos.getRow();
	}

	public boolean isVertical() {
		return this.direction == Direction.Vertical;
	}

	public boolean isHorizontal() {
		return this.direction == Direction.Horizontal;
	}

	public String getWord() {
		return this.word;
	}

	public void setWord(String word) {
		this.word = word;
	}

	public int getLength() {
		return this.length;
	}
	
	public String toString(){
		return new JSONObject(this).toString();
	}
}