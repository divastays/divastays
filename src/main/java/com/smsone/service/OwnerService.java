package com.smsone.service;

import com.smsone.model.Owner;
public interface OwnerService {
	public void saveOwner(Owner owner);
	public boolean checkContactNumber(Owner owner);
	public boolean checkAadharNumber(Owner owner);
	public boolean checkEmail(Owner owner);

}
