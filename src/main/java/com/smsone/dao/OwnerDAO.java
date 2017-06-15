package com.smsone.dao;

import com.smsone.model.Owner;


public interface OwnerDAO {
	public void saveOwner(Owner owner);
	public boolean checkContactNumber(Owner owner);
	public boolean checkAadharNumber(Owner owner);
	public boolean checkEmail(Owner owner);

}
