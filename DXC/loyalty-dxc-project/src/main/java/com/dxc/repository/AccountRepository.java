package com.dxc.repository;

import java.math.BigDecimal;
import java.util.List;

import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.data.rest.core.annotation.RepositoryRestResource;
import org.springframework.transaction.annotation.Transactional;

import com.dxc.entity.Account;

@RepositoryRestResource
public interface AccountRepository extends CrudRepository<Account, Long> {
 List<Account> findAll();
 Account findByAccountid(int id);
 //@Modifying(clearAutomatically = true)
 //@Transactional
 //@Query("update Account account set account.name =:isAccountName,account.address=:isAddress,accouns.email=:isEmail,account.cellphone=:isCellphone,account.point=:isPoint,account.username=:isUsername,account.password=:isPassword,account.checkadmin=:isCheckadmin where accout.accountid =:isAccountID")
//public  void updateAccount(@Param("isAccountid") int isAccountID,  @Param("isAccountName") String isAccountName , @Param("isAddress") String isAddress, @Param("isEmail")String isEmail,@Param("isCellPhone")String isCellphone,@Param("isPoint") int isPoint,@Param("isUsername")String isUsername,@Param("isPassword")String isPassword,@Param("isCheackadmin")byte Checkadmin);
}
