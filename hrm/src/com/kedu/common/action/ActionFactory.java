package com.kedu.common.action;

public class ActionFactory {
	private static ActionFactory instance = new ActionFactory();
	
	private ActionFactory() {
		super();
	}
	
	public static ActionFactory getInstance(){
		return instance;
	}
	
	public Action getAction(String command) {
		Action action = null;
		System.out.println("ActionFactory : " + command);
		
		if(command.equals("staff_list")){
			action = new StaffListAction();
		} else if (command.equals("staff_insert_form")){
			action = new NewStaffInsertActionForm();
		} else if (command.equals("staff_insert")){
			action = new NewStaffInsertAction();
		} else if (command.equals("staff_delete")){
			action = new StaffDeleteAction();
		} else if (command.equals("staff_info_detail")) {
			action = new StaffInfoAction();
		} else if (command.equals("main")) {
			action = new MainAction();
		} else if (command.equals("login")) {
			action = new LoginAction();
		}
		
		return action;
	}
}
