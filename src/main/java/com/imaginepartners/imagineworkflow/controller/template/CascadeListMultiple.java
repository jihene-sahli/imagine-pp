package com.imaginepartners.imagineworkflow.controller.template;

import com.imaginepartners.imagineworkflow.form.FormTemplate;
import com.imaginepartners.imagineworkflow.models.business.BizFamille;
import com.imaginepartners.imagineworkflow.models.business.BizRayon;
import com.imaginepartners.imagineworkflow.models.business.BizSecteur;
import com.imaginepartners.imagineworkflow.models.business.BizSecteurRayon;
import com.imaginepartners.imagineworkflow.models.business.BizSousFamille;
import com.imaginepartners.imagineworkflow.models.business.BizSrFamille;
import com.imaginepartners.imagineworkflow.models.business.BizSrfSousFamille;
import org.osgi.service.component.annotations.Component;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;
import javax.faces.component.UISelectOne;
import javax.faces.event.AjaxBehaviorEvent;

public class CascadeListMultiple extends FormTemplate implements Serializable {

	private static final long serialVersionUID = 1L;

	protected List<BizSecteur> sectorList;

	private List<BizRayon> rayonList;

	private List<BizFamille> familyList;

	private List<BizSousFamille> subFamilyList;

	private BizSecteur selectedSecteur;

	private BizRayon selectedRayon;

	private BizSecteurRayon selectedSecteurRayon;

	private BizFamille selectedFamille;

	private BizSrFamille selectedSrFamille;

	private BizSousFamille selectedSousFamille;

	private List<BizSecteurRayon> secteurRayonList;

	private List<BizSrFamille> secteurRayonFamilleList;

	private List<BizSrfSousFamille> secteurRayonFamilleSousFamilleList;

	public void init() {
		if (varValues.get("sector") != null) {
			secteurRayonList = businessService.getRayonListForSector(Integer.valueOf((String) varValues.get("sector")));
			selectedSecteur= (BizSecteur) businessService.getEntitytById(BizSecteur.class.getName(),  varValues.get("sector").toString() );
		} else {
			rayonList= businessService.getRayonList();
		}
		if (varValues.get("ray") != null) {
			selectedRayon= (BizRayon) businessService.getEntitytById(BizRayon.class.getName(),  varValues.get("ray").toString() );
			selectedSecteurRayon= businessService.getSecteurRayonById(selectedSecteur, selectedRayon);
			secteurRayonFamilleList = businessService.getFamilyListForRayon(selectedSecteur, selectedRayon);
		} else {
			rayonList= businessService.getRayonList();
			familyList= businessService.getFamilyList();
		}
		if (varValues.get("family") != null) {
			selectedFamille= (BizFamille) businessService.getEntitytById(BizFamille.class.getName(), varValues.get("family").toString() );
			selectedSrFamille= businessService.getSecteurFamilleRayonById(selectedSecteurRayon, selectedFamille);
			secteurRayonFamilleSousFamilleList = businessService.getSubFamilyListForFamily(selectedSrFamille);
		} else {
			subFamilyList= businessService.getSubFamilyList();
		}
	}

	@Override
	public void putVars() {

	}

	private void persisteValues(){
		if(selectedSecteur != null)
			varValues.put("sector", selectedSecteur.getCodeSecteur());
		if(selectedRayon != null)
			varValues.put("ray", selectedRayon.getCodeRayon());
		if(selectedFamille != null)
			varValues.put("family", selectedFamille.getCodeFamille());
		if(selectedSousFamille != null)
			varValues.put("subFamily", selectedSousFamille.getCodeSousFamille());
	}

	public List<BizSecteur> getSectorList() {
		return sectorList = businessService.getSectorList();
	}

	public List<BizRayon> getRayonList() {
		return rayonList;
	}

	public List<BizFamille> getFamilyList() {
		return familyList;
	}

	public List<BizSousFamille> getSubFamilyList() {
		return subFamilyList;
	}

	public void changeSecteurList(AjaxBehaviorEvent event) {
		String sectorId = String.valueOf(((UISelectOne) event.getSource()).getValue());
		selectedSecteur= new BizSecteur(Integer.valueOf(sectorId));
		secteurRayonList = businessService.getRayonListForSector(Integer.valueOf(sectorId));
		persisteValues();
	}

	public void changeRayonList(AjaxBehaviorEvent event) {
		String sectorId = String.valueOf(((UISelectOne) event.getSource()).getValue());
		selectedSecteur= new BizSecteur(Integer.valueOf(sectorId));
		secteurRayonList = businessService.getRayonListForSector(Integer.valueOf(sectorId));
		secteurRayonList= businessService.getSecteurRayonList(selectedSecteur);
		persisteValues();
	}

	public void changeFamilyList(AjaxBehaviorEvent event) {
		String rayonId = String.valueOf(((UISelectOne) event.getSource()).getValue());
		selectedRayon= new BizRayon(Integer.valueOf(rayonId));
		selectedSecteurRayon= businessService.getSecteurRayonById(selectedSecteur, selectedRayon);
		secteurRayonFamilleList= businessService.getSecteurRayonFamilleList(selectedSecteurRayon);
		persisteValues();
	}

	public void changeSubFamilyList(AjaxBehaviorEvent event) {
		String familyId = String.valueOf(((UISelectOne) event.getSource()).getValue());
		selectedFamille= new BizFamille(Integer.valueOf(familyId));
		selectedSrFamille= businessService.getSecteurFamilleRayonById(selectedSecteurRayon, selectedFamille);
		secteurRayonFamilleSousFamilleList= businessService.getSecteurRayonFamilleSousFamilleList(selectedSrFamille);
		persisteValues();
	}

	public List<BizSecteurRayon> getSecteurRayonList() {
		return secteurRayonList;
	}

	public List<BizSrFamille> getSecteurRayonFamilleList() {
		return secteurRayonFamilleList;
	}

	public List<BizSrfSousFamille> getSecteurRayonFamilleSousFamilleList() {
		return secteurRayonFamilleSousFamilleList;
	}
}
