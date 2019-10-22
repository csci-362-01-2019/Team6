/**
 * This Source Code Form is subject to the terms of the Mozilla Public License,
 * v. 2.0. If a copy of the MPL was not distributed with this file, You can
 * obtain one at http://mozilla.org/MPL/2.0/. OpenMRS is also distributed under
 * the terms of the Healthcare Disclaimer located at http://openmrs.org/license.
 *
 * Copyright (C) OpenMRS Inc. OpenMRS is a registered trademark and the OpenMRS
 * graphic logo is a trademark of OpenMRS Inc.
 */
package org.openmrs.parameter;

import org.openmrs.CareSetting;
import org.openmrs.Concept;
import org.openmrs.OrderType;
import org.openmrs.Patient;

import java.util.Collection;
import java.util.Date;

/**
 * The search parameter object for orders. A convenience interface for building
 * instances is provided by {@link OrderSearchCriteriaBuilder}.
 *
 * @since 2.2
 * @see OrderSearchCriteriaBuilder
 */
public class OrderSearchCriteria {
	
	private final Patient patient;
	
	private final CareSetting careSetting;
	
	private final Collection<Concept> concepts;
	
	private final Collection<OrderType> orderTypes;

	/**
	 * Matches on dateActivated that is any time on this date or less
	 */
	private final Date activatedOnOrBeforeDate;
	
	/**
	 * Matches on dateActivated that is any time on this date or more
	 */
	private final Date activatedOnOrAfterDate;
	
	private final boolean includeVoided;

	/**
	 * Instead of calling this constructor directly, it is recommended to use {@link OrderSearchCriteriaBuilder}.
	 * @param patient the patient the order is for
	 * @param careSetting the care setting to match on
	 * @param concepts the concepts to match on; if not specified, matches on all concepts
	 * @param orderTypes the order types to match on; if not specified, matches all order types
	 * @param activatedOnOrBeforeDate orders must have dateActivated on or before this date
	 * @param activatedOnOrAfterDate orders must have dateActivated on or after this date
	 * @param includeVoided whether to include the voided orders or not
	 */
	public OrderSearchCriteria(Patient patient, CareSetting careSetting, Collection<Concept> concepts, 
							   Collection<OrderType> orderTypes, Date activatedOnOrBeforeDate, 
							   Date activatedOnOrAfterDate, boolean includeVoided) {
		this.patient = patient;
		this.careSetting = careSetting;
		this.concepts = concepts;
		this.orderTypes = orderTypes;
		this.activatedOnOrBeforeDate = activatedOnOrBeforeDate;
		this.activatedOnOrAfterDate = activatedOnOrAfterDate;
		this.includeVoided = includeVoided;
	}

	/**
	 * @return the patient the order is for
	 */
	public Patient getPatient() { return patient; }

	/**
	 * @return the care setting to match on
	 */
	public CareSetting getCareSetting() { return careSetting; }

	/**
	 * @return the concepts defining the order must be in this collection
	 */
	public Collection<Concept> getConcepts() { return concepts; }

	/**
	 * @return the order types to match on must be in this collection
	 */
	public Collection<OrderType> getOrderTypes() { return orderTypes; }

	/**
	 * @return orders must have dateActivated on or before this date
	 */
	public Date getActivatedOnOrBeforeDate() { return activatedOnOrBeforeDate; }

	/**
	 * @return orders must have dateActivated on or after this date
	 */
	public Date getActivatedOnOrAfterDate() { return activatedOnOrAfterDate; }

	/**
	 * @return whether to include the voided orders or not
	 */
	public boolean getIncludeVoided() { return includeVoided; }
	
}
