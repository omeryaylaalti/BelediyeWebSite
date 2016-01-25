package com.omeryaylaalti.project.dao;

import com.omeryaylaalti.project.imp.persistence.PersistenceServiceImpl;
import com.omeryaylaalti.project.model.Kullanicilar;
import com.omeryaylaalti.project.service.PersistenceService;

public class KullanıcıDAO {

	public static void main(String[] args) {
		
		PersistenceService persistenceService = new PersistenceServiceImpl();
		Kullanicilar k = new Kullanicilar();
		k.setId(1);
		k.setUsername("omer");
		System.out.println("----INSERT----");
		persistenceService.save(k);
		System.out.println("Department Saved:" + k);

		System.out.println("----SELECT----");
		Kullanicilar kullanici = persistenceService.select(Kullanicilar.class, 1);
		System.out.println(kullanici);

		/*System.out.println("----SELECT ALL----");
		List<Kullanicilar> allDepartments = persistenceService.getAllEntities(Kullanicilar.class);
		for (Kullanicilar d : allDepartments)
			System.out.println(d);

		System.out.println("----UPDATE----");
		kullanici.setPassword("12345");
		kullanici.setEmail("yasin@hotmail.com");
		persistenceService.update(kullanici);

		System.out.println(kullanici);*/

		//System.out.println("----DELETE----");
		//persistenceService.delete(kullanici);

	}

}
