package com.soundcloud.perPage.domain;

import java.io.File;

public class perPageVO {

	private int song_no;
	private String user_name;
	private String song_name;
	private byte[] song;
	private byte[] song_pic;
	private String theme;
	private String reg_date;
	private String play_list;
	private int view;

	public int getSong_no() {
		return song_no;
	}

	public void setSong_no(int song_no) {
		this.song_no = song_no;
	}

	public String getUser_name() {
		return user_name;
	}

	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}

	public String getSong_name() {
		return song_name;
	}

	public void setSong_name(String song_name) {
		this.song_name = song_name;
	}

	public byte[] getSong() {
		return song;
	}

	public void setSong(byte[] song) {
		this.song = song;
	}

	public byte[] getSong_pic() {
		return song_pic;
	}

	public void setSong_pic(byte[] song_pic) {
		this.song_pic = song_pic;
	}

	public String getTheme() {
		return theme;
	}

	public void setTheme(String theme) {
		this.theme = theme;
	}

	public String getReg_date() {
		return reg_date;
	}

	public void setReg_date(String reg_date) {
		this.reg_date = reg_date;
	}

	public String getPlay_list() {
		return play_list;
	}

	public void setPlay_list(String play_list) {
		this.play_list = play_list;
	}

	public int getView() {
		return view;
	}

	public void setView(int view) {
		this.view = view;
	}

}
