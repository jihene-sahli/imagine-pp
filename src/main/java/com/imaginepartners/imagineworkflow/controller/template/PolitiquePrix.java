package com.imaginepartners.imagineworkflow.controller.template;

import com.imaginepartners.imagineworkflow.form.FormTemplate;
import com.imaginepartners.imagineworkflow.models.business.BizPolitiquePrix;
import com.imaginepartners.imagineworkflow.models.business.BizPrixVente;

import java.io.Serializable;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import javax.faces.event.AjaxBehaviorEvent;

import com.imaginepartners.imagineworkflow.util.FacesUtil;
import org.apache.log4j.LogManager;

public class PolitiquePrix extends FormTemplate implements Serializable {

	private static final long serialVersionUID = 1L;

	private List<BizPrixVente> list;

	@Override
	public void init() {
		if (varValues == null || varValues.isEmpty()) {
			list = new ArrayList<BizPrixVente>();
			BizPrixVente p = new BizPrixVente();
			p.setTypologie("Hyper");
			list.add(p);
			varValues.put("prix_vente_data", list);
		} else {
			list = (List<BizPrixVente>) varValues.get("prix_vente_data");
		}
	}

	public List<BizPrixVente> getList() {
		return list;
	}

	public void setList(List<BizPrixVente> list) {
		this.list = list;
	}

	@Override
	public void putVars() {

	}

	@Override
	public Map<String, Object> getVarValues() {
		persistEntities();
		return varValues;
	}

	public void persistEntities() {
		if (list != null && !list.isEmpty()) {
			businessService.saveEntityList(list);
		}
	}

	public void calculateLines(AjaxBehaviorEvent event) {
		List<Object> plitiqueVentList = businessService.getEntiteList("com.imaginepartners.imagineworkflow.models.business.BizPolitiquePrix");
		List listPrixVante = ((List) varValues.get("prix_vente_data"));
		BigDecimal firstVal = ((BizPrixVente) listPrixVante.get(0)).getPrixTtc();
		BizPolitiquePrix politiqueVante;
		if (firstVal != null) {
			int i = -1;
			BizPrixVente prixVente;
			if (listPrixVante.size() > 1) {
				for (Object obj : listPrixVante) {
					if (i == -1) {
						i++;
						continue;
					}
					prixVente = (BizPrixVente) obj;
					politiqueVante = ((BizPolitiquePrix) plitiqueVentList.get(i));
					prixVente.setPrixTtc(calculatePrixTTC(politiqueVante, firstVal));
					i++;
				}
			} else {
				for (int index = 0; index < 3; index++) {
					prixVente = new BizPrixVente();
					politiqueVante = ((BizPolitiquePrix) plitiqueVentList.get(index));
					prixVente.setPrixTtc(calculatePrixTTC(politiqueVante, firstVal));
					listPrixVante.add(prixVente);
				}
				((BizPrixVente) listPrixVante.get(1)).setTypologie("Super");
				((BizPrixVente) listPrixVante.get(2)).setTypologie("Proxy");
				((BizPrixVente) listPrixVante.get(3)).setTypologie("Relai");
			}
		}
	}

	public BigDecimal calculatePrixTTC(BizPolitiquePrix politiqueVante, BigDecimal firstVal) {
		BigDecimal prixVente;
		if (politiqueVante != null && politiqueVante.getTauxPrix() != null) {
			prixVente = firstVal.add(firstVal.multiply(BigDecimal.valueOf(politiqueVante.getTauxPrix())).divide(BigDecimal.valueOf(100)));
		} else
			prixVente = firstVal;
		return prixVente;
	}

	public void calculateTva(int i) {
		List listPrixVante = ((List) varValues.get("prix_vente_data"));
		BizPrixVente prixVante = (BizPrixVente) listPrixVante.get(i);
		prixVante.setPrixHt(getPrixHt((prixVante)));
	}

	public BigDecimal getPrixHt(BizPrixVente prixVente) {
		LogManager.getLogger(PolitiquePrix.class).info("prixVente.getPrixRetenuTtc()  " + prixVente.getPrixRetenuTtc());
		if (prixVente.getPrixRetenuTtc() != null) {
			return (new BigDecimal(prixVente.getPrixRetenuTtc().doubleValue() * 100 / 117));
		}
		return null;
	}
}
