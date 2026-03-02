**# Bookmark #1
*log using "I:\Documents\RESEARCH\Projects NOVA IMS\1 - Risk determinants in the hotel sector (Luís Silvano)\Data\2024_02_11_Portugal_Hotels_&_Touristic_Points_v1_Part1.smcl" , replace /* Always change the Version Number & Date  */
*log close	

log using "C:\Users\Luis Silvano\Desktop\ORBIS & Turismo de Portugal & Visit Portugal Datasets & Stata\2025_06_07_Portugal_Hotels_&_Financial_v1_Descreptive_Statistics_Part1.smcl" , replace 

*//////////////////////////////////////////////////////////////////
*/* Loading the Hotels Financial Variables Dataset Directory *////
*////////////////////////////////////////////////////////////////

* use "C:\Users\Luis Silvano\Desktop\Stata17 Datasets Thesis\Code Portugal Hotels & Touristic Points Do-Files Parts\15. Final Touristic Points & All Hotels with (Latitude & Longitude)"
save "C:\Users\Luis Silvano\Desktop\ORBIS & Turismo de Portugal & Visit Portugal Datasets & Stata\2025_06_07_Portugal_Hotels_&_Financial_v1_Descreptive_Statistics_Part1.scml", replace

*/////////////////////////////////////////////////////////////
*/* Installing the Packages & Removing Empty Columns  *//////
*///////////////////////////////////////////////////////////

		*/* Missing Values Observations & Frequency Description Package */
			ssc install mdesc
			*/* Regression Package */
				ssc install xtabond2
				
*////////////////////////////
*/* Removing  Columns   *///
*//////////////////////////
					
	*/* Removing Empty columns */
			drop v380-v593		
			*/* Removing Variables */		
					drop ht_location_4
						drop ht_location_beach4
							drop ht_location_castle4
						drop ht_location_church4
					drop othernoncurrentassets
				drop of_which_provisions
			drop enterprise_value_ebitda
		drop market_cap_cash_flow_from_operat
	drop income_tax_expenses_benefit
		drop net_extraordinary_revenues_expen
			drop extraordinary_revenues
				drop extraordinary_expenses
					drop cash_flow_net_income_before_d_a
						drop ht_location_3_mtr
					drop profit_loss_before_tax_pbt
				drop shareholders_funds2
			drop roe_using_p_l_before_tax
		drop profit_margin2
	drop operating_revenue_turnover
		drop ht_profit_loss_for_the_period_ne
			drop profit_loss_for_the_period_net_i
				drop ht_thirdmineuclideandistance_bch 
					drop ht_fourthmineuclideandistance_bc 
					drop ht_fifthmineuclideandistance_bch
				drop ht_sixthmineuclideandistance_bch 
			drop ht_secondmineuclideandistance_ct 
		drop ht_thirdmineuclideandistance_ctl 
	drop ht_fourthmineuclideandistance_ct 
		drop ht_fifthdmineuclideandistance_ct 
			drop ht_sixthmineuclideandistance_ctl 
				drop ht_secondthmineuclideandistance_ 
					drop ht_thirdmineuclideandistance_chc 
						drop ht_fourthmineuclideandistance_ch 
					drop ht_fifthmineuclideandistance_chc 
				drop ht_sixthmineuclideandistance_chc 
			drop ht_location_beach1v99
		drop ht_location_beach2v99 
	drop ht_location_beach3v99 
		drop ht_location_castle1v99 
			drop location_castle2v99 
				drop location_castle3v99 
					drop location_church1v99 
						drop location_church2v99 
					drop location_church3v99 
			drop ht_location_2v99 
		drop ht_location_3v99 
	drop v275	
		drop ht_location_1v99
			drop ht_secondmineuclideandistancev99
		
*/*//////////////////////////////////////////////////////////// */
*/* Completing Hotels & Financial Variables Labels Names  //// */  
*/*////////////////////////////////////////////////////////// */			
			
 */* Replacing the name of the variables */*
	
		rename profit_loss_after_tax_pat f_profit_l_after_tax_pat
	rename ht_company_name_latin_alphabet f_company_name_latin_alphabet 
		rename ht_bvd_id_number f_bvd_id_number 
			rename ht_bvd_account_number f_bvd_account_number 
				rename ht_european_vat_number f_european_vat_number 
					rename ht_lei_legal_entity_identifier f_lei_legal_entity_identifier 
					rename operating_revenue_turnover2 f_operating_revenue_turnover2 
				rename p_l_before_tax f_p_l_before_tax 
			rename p_l_for_period_net_income f_p_l_for_period_net_income 
		* rename cash_flow_net_income_before_d_a
			rename ht_fiscal_number f_fiscal_number 
				rename ht_orbis_id_number f_orbis_id_number 
				rename ht_total_assets_w f_total_assets_w 
			rename ht_capital_w f_capital_w 
		rename ht_tax_identification_number_tin f_tax_identification_number_tin 
			rename year f_year 
				rename number_of_employees f_number_of_employees 
					rename ht_zscore f_zscore 
						rename ht_zscore_w f_zscore_w 
					rename ht_roe f_roe 
				rename ht_roe_w f_roe_w 
			rename ht_total_assets f_total_assets 
		rename ht_ln_total_assets f_ln_total_assets 
			rename ht_ln_total_assets_w f_ln_total_assets_w 
				rename ht_capital f_capital 
					rename ht_roaa f_roaa 
						rename ht_roaa_w f_roaa_w 
					rename ht_roa f_roa 
				rename ht_roa_w f_roa_w
			rename ht_sector_roaa_volatility f_sector_roaa_volatility 
		rename ht_roaa_volatility_w f_roaa_volatility_w 
			rename noncurrentassets f_noncurrentassets 
				rename intangibleassets f_intangibleassets 
				rename tangiblefixedassets f_tangiblefixedassets 
			rename currentassets f_currentassets 	
		rename stock f_stock 
			rename debtors f_debtors 	
				rename othercurrentassets f_othercurrentassets 
					rename ofwhichcashandcashequivalent f_ofwhichcashandcashequivalent 	
						rename shareholders_funds f_shareholders_funds 
					rename other_shareholders_funds f_other_shareholders_funds 
				rename non_current_liabilities f_non_current_liabilities 
			rename long_term_debt f_long_term_debt 
		rename other_non_current_liabilities f_other_non_current_liabilities 
				rename current_liabilities f_current_liabilities 
					rename loans_short_term_debt f_loans_short_term_debt 
						rename creditors f_creditors 
					rename other_current_liabilities f_other_current_liabilities 
				rename total_shareholders_funds_and_lia f_ttl_shareholders_funds_and_lia 
			rename roe_using_profit_loss_before_tax f_roe_using_pft_loss_before_tax 
		rename roce_using_profit_loss_before_ta f_roce_using_pft_loss_before_ta 
			rename roa_using_profit_loss_before_tax f_roa_using_pft_loss_before_tax 
				rename roe_using_net_income f_roe_using_net_income 
					rename roce_using_net_income f_roce_using_net_income 
						rename roa_using_net_income f_roa_using_net_income 
					rename profit_margin f_profit_margin 
				rename gross_margin f_gross_margin 
			rename ebitda_margin f_ebitda_margin 		
				rename cash_flow_operating_revenue f_cash_flow_operating_revenue 
						rename sales f_sales 
					rename costs_of_goods_sold f_costs_of_goods_sold 
				rename gross_profit f_gross_profit 
			rename other_operating_expense_income f_other_operating_expense_income 
		rename operating_profit_loss_ebit f_ebit 
			rename financial_profit_loss f_financial_profit_loss 
				rename financial_revenue f_financial_revenue 
					rename financial_expenses f_financial_expenses 
		rename current_ratio f_current_ratio 
			 rename roce_using_p_l_before_tax f_roce_using_p_l_before_tax 
				rename solvency_ratio_asset_based f_solvency_ratio_asset_based 
			rename nace_rev_2_core_code_4_digits f_nace_rev_2_core_code_4_digits
				rename nace_rev_2_secondary_code_s f_nace_rev_2_secondary_code_s
					rename nace_rev_2_secondary_code_s_2 f_nace_rev_2_secondary_code_s_2
						rename nace_rev_2_secondary_code_s_3 f_nace_rev_2_secondary_code_s_3
					rename nace_rev_2_secondary_code_s_4 f_nace_rev_2_secondary_code_s_4			
				rename f_d_sectordiversification_1 f_d_sectordiversification_d
			rename tot_oper_rev_turn_nutsiii f_tot_oper_rev_turn_nutsiii	
				rename tot_oper_rev_turn_munic f_tot_oper_rev_turn_munic
*					rename mkt_share_nutsii f_mkt_share_nutsii missing this variable
						rename mkt_share_nutsiii f_mkt_share_nutsiii
					rename mkt_share_munic f_mkt_share_munic
				*rename mkt_share_pwr_nutsii f_mkt_share_pwr_nutsii missing this variable
			rename mkt_share_pwr_nutsiii f_mkt_share_pwr_nutsiii
		rename mkt_share_pwr_munic f_mkt_share_pwr_munic
			rename ht_room_ocup_rt_nutsii_jan ht_room_ocup_rt_nutsii_1
		rename ht_room_ocup_rt_nutsii_fev ht_room_ocup_rt_nutsii_2
			rename ht_room_ocup_rt_nutsii_mar ht_room_ocup_rt_nutsii_3
				rename ht_room_ocup_rt_nutsii_apr ht_room_ocup_rt_nutsii_4
					rename ht_room_ocup_rt_nutsii_may ht_room_ocup_rt_nutsii_5
						rename ht_room_ocup_rt_nutsii_jun ht_room_ocup_rt_nutsii_6
					rename ht_room_ocup_rt_nutsii_jul ht_room_ocup_rt_nutsii_7
				rename ht_room_ocup_rt_nutsii_aug ht_room_ocup_rt_nutsii_8
			rename ht_room_ocup_rt_nutsii_sep ht_room_ocup_rt_nutsii_9
		rename ht_room_ocup_rt_nutsii_oct ht_room_ocup_rt_nutsii_10
			rename ht_room_ocup_rt_nutsii_nov ht_room_ocup_rt_nutsii_11
				rename ht_room_ocup_rt_nutsii_dec ht_room_ocup_rt_nutsii_12
			rename ht_room_ocup_rt_munic_jan ht_room_ocup_rt_munic_1
		rename ht_room_ocup_rt_munic_fev ht_room_ocup_rt_munic_2
			rename ht_room_ocup_rt_munic_mar ht_room_ocup_rt_munic_3
				rename ht_room_ocup_rt_munic_apr ht_room_ocup_rt_munic_4
					rename ht_room_ocup_rt_munic_may ht_room_ocup_rt_munic_5
						rename ht_room_ocup_rt_munic_jun ht_room_ocup_rt_munic_6
					rename ht_room_ocup_rt_munic_jul ht_room_ocup_rt_munic_7
				rename ht_room_ocup_rt_munic_aug ht_room_ocup_rt_munic_8
			rename ht_room_ocup_rt_munic_sep ht_room_ocup_rt_munic_9
		rename ht_room_ocup_rt_munic_oct ht_room_ocup_rt_munic_10
			rename ht_room_ocup_rt_munic_nov ht_room_ocup_rt_munic_11
				rename ht_room_ocup_rt_munic_dec ht_room_ocup_rt_munic_12
					rename mkt_share_conc_nutsiii f_mkt_share_conc_nutsiii
					rename mkt_share_conc_munic f_mkt_share_conc_munic
				rename ht_liquidity_r f_liquidity_r
			rename ht_debt_r f_debt_r
		rename ht_efficiency_r f_efficiency_r
			rename ht_profit_r f_profit_r
				rename ht_growth_r f_growth_r
					rename ht_cashflow_operatingrevenue_v2 f_cashflow_operatingrevenue_v2
						rename ht_roe_v1 f_roe_v1
					rename ht_roe_v2 f_roe_v2
				rename ht_roa_v1 f_roa_v1
			rename ht_roa_v2 f_roa_v2
		rename ht_equitycapital_total_assets f_equitycapital_total_assets	
			rename ht_equitycapital_total_assets_w f_equitycapital_total_assets_w
				rename ht_solvency_v1 f_solvency_v1
					rename ht_solvency_v2 f_solvency_v2
						rename ht_solvency_v3 f_solvency_v3
					rename ht_net_income_d f_net_income_d
				rename d_secondary_code_s f_d_secondary_code_s
			rename d_secondary_code_s_2 f_d_secondary_code_s_2 
		rename d_secondary_code_s_3 f_d_secondary_code_s_3
			rename d_secondary_code_s_4 f_d_secondary_code_s_4 
				rename c_sectordiversification f_c_sectordiversification 		
					rename location_castle5 ht_location_castle5
				rename location_church5 ht_location_church5
		rename v294 ht_ThirdMinEuclideanDist_bchv99
			rename v295 ht_FourthMinEuclidDist_bchv99	
				rename v296 ht_FifthMinEuclideanDist_bchv99		
						rename v309 ht_SecondMinEuclidDist_ctlv99
					rename v310 ht_ThirdMinEuclideanDist_ctlv99
				rename v311 ht_FourthMinEuclidDist_ctlv99
			rename v312 ht_FifthdMinEuclidDist_ctlv99
		rename v313 ht_SixthMinEuclidDist_ctlv99
			rename v318 ht_EleventhMinEuclidDist_ctlv99
				rename v325 ht_SecondthMinEuclidDist_chcv99
					rename v326 ht_ThirdMinEuclidDist_chcv99
						rename v327 ht_FourthMinEuclidDist_chcv99
					rename v328 ht_FifthMinEuclidDist_chcv99
				rename v329 ht_SixthMinEuclidDist_chcv99
			rename v330 ht_SeventhMinEuclidDist_chcv99
		rename v334 ht_EleventhMinEuclidDist_chcv99
					rename mkt_share_nutsiiv99 f_mkt_share_nutsii
						rename ht_ln_numberemployees f_ln_numberemployees
			rename location_castle4v99 ht_location_castle4v99
				rename location_church4v99 ht_location_church4	
					rename tot_oper_rev_turn_nutsiiv99 f_tot_oper_rev_turn_nutsii
					rename mkt_share_pwr_nutsiiv99 f_mkt_share_pwr_nutsii
				rename mkt_share_conc_nutsiiv99 f_mkt_share_conc_nutsii
			rename pdt_overnight_stays_nutsiiv99 pdt_overnight_stays_nutsii_2024
		rename pdt_overnight_stays_nutsiiiv99 pdt_overnight_stays_nutsiii_2024
			rename pdt_overnight_stays_muncipv99 pdt_overnight_stays_muncic
				rename ht_islands_ptcont_dv99 ht_islands_ptcont_d
					rename ht_msm_bm_dv99 ht_msm_bm_d
						rename ht_postal_codev99 ht_postal_code
					rename ht_closure_periods_dv99 ht_closure_periods_d
				rename ht_bed_ocup_rt_nutsii_yv99 ht_bed_ocup_rt_nutsii_y
			rename ht_room_ocup_rt_nutsii_yv99 ht_room_ocup_rt_nutsii_y		
			rename ht_room_ocup_nutsiiv99 ht_room_ocup_nutsii
				rename ht_room_ocup_sea_nutsiiv99 ht_room_ocup_sea_nutsii
						rename ht_room_ocup_nutsiiiv99 ht_room_ocup_nutsiii
					rename ht_room_ocup_sea_nutsiiiv99 ht_room_ocup_sea_nutsiii
				rename ht_room_ocup_rt_munic_yv99 ht_room_ocup_rt_munic_y
			rename ht_room_ocup_municv99 ht_room_ocup_municv
		rename ht_room_ocup_sea_municv99 ht_room_ocup_sea_munic
			rename ht_location_4v99 ht_location_4
				rename ht_location_5v99 ht_location_5
					rename ht_thirdmineuclideandistancev99 ht_thirdmineuclideandistance
					rename ht_fourthmineuclideandistancev99 ht_fourthmineuclideandistance
				rename ht_fifthmineuclideandistancev99 ht_fifthmineuclideandistance
			rename ht_sixthmineuclideandistancev99 ht_sixthmineuclideandistance
		rename ht_seventhmineuclideandistancev9 ht_seventhmineuclideandistance
			rename ht_eighthmineuclideandistancev99 ht_eighthmineuclideandistance
				rename ht_ninethmineuclideandistancev99 ht_ninethmineuclideandistance
					rename ht_tenthmineuclideandistancev99  ht_tenthmineuclideandistance
						rename ht_eleventhmineuclideandistancev ht_eleventhmineuclideandistance 
					rename ht_twelfthmineuclideandistancev9 ht_twelfthmineuclideandistance
				rename ht_location_beach4v99 ht_location_beach4 
			rename ht_location_beach5v99 ht_location_beach5
		rename ht_ThirdMinEuclideanDist_bchv99 ht_ThirdMinEuclideanDist_bch
			rename ht_FourthMinEuclidDist_bchv99 ht_FourthMinEuclidDist_bch
				rename ht_FifthMinEuclideanDist_bchv99 ht_FifthMinEuclideanDist_bch
					rename v297 ht_SixthMinEuclideanDist_bch
					rename ht_SecondthMinEuclidDist_chcv99 ht_SecondthMinEuclidDist_chc
				rename ht_ThirdMinEuclidDist_chcv99 ht_ThirdMinEuclidDist_chc
			rename ht_FourthMinEuclidDist_chcv99 ht_FourthMinEuclidDist_chc
		rename ht_FifthMinEuclidDist_chcv99 ht_FifthMinEuclidDist_chc
			rename ht_SixthMinEuclidDist_chcv99 ht_SixthMinEuclidDist_chc 
				rename ht_SeventhMinEuclidDist_chcv99 ht_SeventhMinEuclidDist_chc
					rename ht_EleventhMinEuclidDist_chcv99 ht_EleventhMinEuclidDist_chc
						rename ht_location_castle4v99 ht_location_castle4
					rename ht_SecondMinEuclidDist_ctlv99 ht_SecondMinEuclidDist_ctl 
				rename ht_ThirdMinEuclideanDist_ctlv99 ht_ThirdMinEuclideanDist_ctl 
			rename ht_FourthMinEuclidDist_ctlv99 ht_FourthMinEuclidDist_ctl 
		rename ht_FifthdMinEuclidDist_ctlv99 ht_FifthdMinEuclidDist_ctl 
			rename ht_SixthMinEuclidDist_ctlv99 ht_SixthMinEuclidDist_ctl
				rename ht_EleventhMinEuclidDist_ctlv99 ht_EleventhMinEuclidDist_ctlv		
						
*//////////////////////////////////////
*/* Recovering Main Variables  *//////
*////////////////////////////////////
					
	generate ht_Meeting_Room_Capacity = ht_events_meetings
		generate ht_stars_classification = ht_quality_stars
			generate f_ebit_margin = f_profit_r						
				generate ht_room_ocup_rt_nutsiii_1 = ht_occupancy_rooms_nuts_3_newcr0
					generate ht_room_ocup_rt_nutsiii_2 = ht_occupancy_rooms_nuts_3_newcr1
			generate ht_room_ocup_rt_nutsiii_3 = ht_occupancy_rooms_nuts_3_newcr2
		generate ht_room_ocup_rt_nutsiii_4 = ht_occupancy_rooms_nuts_3_newcr3
	generate ht_room_ocup_rt_nutsiii_5 = ht_occupancy_rooms_nuts_3_newcr4
		generate ht_room_ocup_rt_nutsiii_6 = ht_occupancy_rooms_nuts_3_newcr5
			generate ht_room_ocup_rt_nutsiii_7 = ht_occupancy_rooms_nuts_3_newcr6
				generate ht_room_ocup_rt_nutsiii_8 = ht_occupancy_rooms_nuts_3_newcr7
					generate ht_room_ocup_rt_nutsiii_9 = ht_occupancy_rooms_nuts_3_newcr8
						generate ht_room_ocup_rt_nutsiii_10 = ht_occupancy_rooms_nuts_3_newcr9
					generate ht_room_ocup_rt_nutsiii_11 = ht_occupancy_rooms_nuts_3_newc00
				generate ht_room_ocup_rt_nutsiii_12 = ht_occupancy_rooms_nuts_3_newc01			
							
* //////////////////////////////////////////////////
* / Creating New Variables to Hotel Financial  ////  
* ////////////////////////////////////////////////
																
	*/* Measures the proportion of total debt in relation to total assets */
		gen f_total_debt = f_long_term_debt + f_loans_short_term_debt 
			label variable f_total_debt "ORBIS_f_Formula_(Short-Term Debt + Long-Term Debt)"
		gen f_total_debt_fin = f_total_debt / f_total_assets
			label variable f_total_debt_fin "ORBIS_f_Ratio_(Total Debt / Total Assets)"
	*/* Indicates the proportion of long-term debt to total assets */
		gen f_long_term_debt_f = f_long_term_debt / f_total_assets 
			label variable f_long_term_debt_f "ORBIS_f_Ratio_(Long-Term Debt / Total Assets)"
	*/* Indicates the proportion of short-term debt to total assets */
		gen f_short_term_debt_f = f_loans_short_term_debt / f_total_assets 
			label variable f_short_term_debt_f "ORBIS_f_Ratio_(Short-Term Debt / Total Assets)"
	*/* Measures the proportion of trade credit in relation to total assets */
		gen f_traded_credit_financing = f_creditors / f_total_assets
			label variable f_traded_credit_financing "ORBIS_f_Ratio_(Trade Credit / Total Assets)" 
	*/* Measures the proportion of fixed assets to total assets */
		gen f_assets_tangibility = f_tangiblefixedassets / f_total_assets 
			label variable f_assets_tangibility "ORBIS_f_Ratio_(Fixed Assets / Total Assets)"
	*/* Measures the bank's operating profit as a percentage of sales */
		gen f_operating_profit_margin = f_ebit / f_sales 
			label variable f_operating_profit_margin "ORBIS_f_Ratio_(Operating Profit / Sales)" 
	*/* Measures the bank's net profit as a percentage of sales */
		gen f_net_profit_margin = f_p_l_for_period_net_income / f_sales
			label variable f_net_profit_margin "ORBIS_f_Ratio_(Income / Sales)" 
	*/* Measures the proportion of total debt to total capital */
		gen f_total_debt_capital_ratio = f_total_debt / f_capital       
			label variable f_total_debt_capital_ratio "ORBIS_f_Ratio_(Total Debt / Total Capital)"	
	*/* Measures the ability to cover short-term liabilities using the most liquid assets, excluding inventory */
		gen f_liquid_assets = f_currentassets - f_stock 
			label variable f_liquid_assets "ORBIS_f_Formula_(Current Assets - Stocks)"
		*gen f_quick_ratio = f_liquid_assets / f_current_liabilities
			*label variable f_quick_ratio "ORBIS_f_Ratio_((Current Assets - Stocks) / Current Liabilities)" is the same as liquidity ratio

					  						
* ////////////////////////////////////////////////////////////
* Sorting the Order of Hotel and Financial Variables/////////
* //////////////////////////////////////////////////////////
	
	order ht_managing_entity_tax_id, after(ht_id)
		order ht_managing_entity_id, after(ht_managing_entity_tax_id)
			order ht_managing_entity, after(ht_managing_entity_id)
				order ht_registration_number, after (ht_managing_entity)
					order ht_name, after (ht_registration_number)
				order ht_events_meetings, after (ht_name)
			order ht_quality_stars, after (ht_events_meetings)
		order ht_opening_year, after (ht_quality_stars)
	order ht_age, after (ht_opening_year)
		order ht_ln_age, after (ht_age)
			order ht_accommodation_type, after (ht_ln_age)
				order ht_ln_accomodation, after (ht_accommodation_type)
					order ht_ln_capacity, after (ht_ln_accomodation)
				order ht_ln_reducedmobility, after (ht_ln_capacity)
			order ht_r_reducedmobility_totalaccomo, after (ht_ln_reducedmobility)
		order ht_r_reducedmobility_totalcapaci, after (ht_r_reducedmobility_totalaccomo)
	order ht_brands, after (ht_r_reducedmobility_totalcapaci)
		order ht_classification_status, after (ht_brands)
			order ht_classification_status_c, after (ht_classification_status)
				order ht_capacity, after (ht_classification_status_c)
					order ht_number_of_accommodation_units, after (ht_capacity)
				order ht_number_of_reduced_mobility_un, after (ht_number_of_accommodation_units)
			order ht_address_location, after (ht_number_of_reduced_mobility_un)	
		order ht_postal_designation, after (ht_address_location)
	order ht_municipality, after (ht_postal_designation)
		order ht_municipality_c, after (ht_municipality)
			order ht_district, after (ht_municipality_c)
				order ht_district_c, after (ht_district)
					order ht_telephone_contact, after (ht_district_c)
				order ht_fax_contact, after (ht_telephone_contact)
			order ht_email_contact, after (ht_fax_contact)
		order ht_website, after (ht_email_contact)
	order ht_ert, after (ht_website)
		order ht_ert_c, after (ht_ert)
			order ht_nuts_2_oldcriteria, after (ht_ert_c)
				order ht_nuts_2_c_oldcriteria, after (ht_nuts_2_oldcriteria)
					order ht_nuts_3_oldcriteria, after (ht_nuts_2_c_oldcriteria)
				order ht_nuts_3_c_oldcriteria, after (ht_nuts_3_oldcriteria)
			order ht_nuts_2_newcriteriacode, after (ht_nuts_3_c_oldcriteria)
		order ht_nuts_2_newcriteria, after (ht_nuts_2_newcriteriacode)
	order ht_nuts_3_newcriteriacode, after (ht_nuts_2_newcriteria)
		order ht_nuts_3_newcriteria, after (ht_nuts_3_newcriteriacode)
			order ht_closure_periods, after (ht_nuts_3_newcriteria)
				order ht_tourist_utility, after (ht_closure_periods)
					order ht_tourist_utility_d, after (ht_tourist_utility)
				order ht_classified_heritage_building, after (ht_tourist_utility_d)
			order ht_classified_heritage_c, after (ht_classified_heritage_building)
		order ht_number_of_restaurants, after (ht_classified_heritage_c)
	order ht_ln_restaurants, after (ht_number_of_restaurants)
		order ht_restaurants_c, after (ht_ln_restaurants)
			order ht_meeting_rooms, after (ht_restaurants_c)
				order ht_meeting_rooms_d, after (ht_meeting_rooms)
					order ht_spa, after (ht_meeting_rooms_d)
				order ht_spa_d, after (ht_spa)
			order ht_outdoor_pools, after (ht_spa_d)
		order ht_outdoor_pools_d, after (ht_outdoor_pools)
	order ht_indoor_pools, after (ht_outdoor_pools_d)
		order ht_indoor_pools_d, after (ht_indoor_pools)
			order ht_tennis, after (ht_indoor_pools_d)
				order ht_tennis_d, after (ht_tennis)
					order ht_gym, after (ht_tennis_d)
				order ht_gym_d, after (ht_gym)
			order ht_golf, after (ht_gym_d)
		order ht_golf_d, after (ht_golf)
	order ht_other_facilities, after (ht_golf_d)
		order ht_other_facilities_d, after (ht_other_facilities)
			order ht_hotel_size_c, after (ht_other_facilities_d)
				order ht_hotel_chain_d, after (ht_hotel_size_c)
					order ht_vlg_city_oth, after (ht_nuts_3_newcriteriacode)
				order ht_Meeting_Room_Capacity, after (ht_vlg_city_oth)
			order ht_postal_code, after (ht_Meeting_Room_Capacity)
		order ht_islands_ptcont_d, after (ht_vlg_city_oth)
	order ht_closure_periods_d, after (ht_closure_periods)
		order ht_postal_code_8dig, after (ht_postal_code)
			order ht_postal_code_6dig, after (ht_postal_code)
				order ht_postal_code_4dig, after (ht_postal_code)
					order ht_postal_code_2dig, after (ht_postal_code)
				order ht_msm_bm_d, after (ht_islands_ptcont_d)
			order ht_room_ocup_rt_nutsii_1, after (ht_hotel_chain_d)
		order ht_room_ocup_rt_nutsii_2, after (ht_room_ocup_rt_nutsii_1)
	order ht_room_ocup_rt_nutsii_3, after (ht_room_ocup_rt_nutsii_2)
		order ht_room_ocup_rt_nutsii_4, after (ht_room_ocup_rt_nutsii_3)
			order ht_room_ocup_rt_nutsii_5, after (ht_room_ocup_rt_nutsii_4)
				order ht_room_ocup_rt_nutsii_6, after (ht_room_ocup_rt_nutsii_5)
					order ht_room_ocup_rt_nutsii_7, after (ht_room_ocup_rt_nutsii_6)
				order ht_room_ocup_rt_nutsii_8, after (ht_room_ocup_rt_nutsii_7)
			order ht_room_ocup_rt_nutsii_9, after (ht_room_ocup_rt_nutsii_8)
		order ht_room_ocup_rt_nutsii_10, after (ht_room_ocup_rt_nutsii_9)
	order ht_room_ocup_rt_nutsii_11, after (ht_room_ocup_rt_nutsii_10)
		order ht_room_ocup_rt_nutsii_12, after (ht_room_ocup_rt_nutsii_11)
			order ht_bed_ocup_rt_nutsii_y, after (ht_room_ocup_rt_nutsii_12)
				order ht_room_ocup_rt_nutsii_y, after (ht_bed_ocup_rt_nutsii_y)
				order ht_room_ocup_nutsii, after (ht_room_ocup_rt_nutsii_y)
			order ht_room_ocup_sea_nutsii, after (ht_room_ocup_nutsii)
	order ht_occupancy_rooms_nuts_3_newcr0, after (ht_room_ocup_sea_nutsii)
		order ht_occupancy_rooms_nuts_3_newcr1, after (ht_occupancy_rooms_nuts_3_newcr0)
			order ht_occupancy_rooms_nuts_3_newcr2, after (ht_occupancy_rooms_nuts_3_newcr1)
				order ht_occupancy_rooms_nuts_3_newcr3, after (ht_occupancy_rooms_nuts_3_newcr2)
					order ht_occupancy_rooms_nuts_3_newcr4, after (ht_occupancy_rooms_nuts_3_newcr3)
				order ht_occupancy_rooms_nuts_3_newcr5, after (ht_occupancy_rooms_nuts_3_newcr4)
			order ht_occupancy_rooms_nuts_3_newcr6, after (ht_occupancy_rooms_nuts_3_newcr5)
		order ht_occupancy_rooms_nuts_3_newcr7, after (ht_occupancy_rooms_nuts_3_newcr6)
	order ht_occupancy_rooms_nuts_3_newcr8, after (ht_occupancy_rooms_nuts_3_newcr7)
		order ht_occupancy_rooms_nuts_3_newcr9, after (ht_occupancy_rooms_nuts_3_newcr8)
			order ht_occupancy_rooms_nuts_3_newc00, after (ht_occupancy_rooms_nuts_3_newcr9)
				order ht_occupancy_rooms_nuts_3_newc01, after (ht_occupancy_rooms_nuts_3_newc00)
					order ht_occupancy_rooms_nuts_3_newc02, after (ht_occupancy_rooms_nuts_3_newc01)
				order ht_occupancy_rooms_nuts_3_newc03, after (ht_occupancy_rooms_nuts_3_newc02)
			order ht_occupancy_beds_nuts_3_newcrit, after (ht_occupancy_rooms_nuts_3_newc03)
	order ht_room_ocup_nutsiii, after (ht_occupancy_beds_nuts_3_newcrit)
		order ht_room_ocup_sea_nutsiii, after (ht_room_ocup_nutsiii)
				order ht_room_ocup_rt_munic_2, after (ht_room_ocup_sea_nutsiii)
					order ht_room_ocup_rt_munic_3, after (ht_room_ocup_rt_munic_2)
				order ht_room_ocup_rt_munic_4, after (ht_room_ocup_rt_munic_3)
			order ht_room_ocup_rt_munic_5, after (ht_room_ocup_rt_munic_4)
		order ht_room_ocup_rt_munic_6, after (ht_room_ocup_rt_munic_5)
	order ht_room_ocup_rt_munic_7, after (ht_room_ocup_rt_munic_6)
		order ht_room_ocup_rt_munic_8, after (ht_room_ocup_rt_munic_7)
			order ht_room_ocup_rt_munic_9, after (ht_room_ocup_rt_munic_8)
				order ht_room_ocup_rt_munic_10, after (ht_room_ocup_rt_munic_9)
					order ht_room_ocup_rt_munic_11, after (ht_room_ocup_rt_munic_10)
				order ht_room_ocup_rt_munic_12, after (ht_room_ocup_rt_munic_11)
			order ht_room_ocup_rt_munic_y, after (ht_room_ocup_rt_munic_12)
	order ht_room_ocup_munic, after (ht_room_ocup_rt_munic_y)
		order ht_room_ocup_sea_munic, after (ht_room_ocup_munic)
				order ht_location_1, after (ht_room_ocup_sea_munic)
					order ht_location_2, after (ht_location_1)
				order ht_location_3, after (ht_location_2)
			order ht_location_4, after (ht_location_3)
		order ht_location_5, after (ht_location_4)
	order ht_secondmineuclideandistance, after (ht_location_5)
		order ht_thirdmineuclideandistance, after (ht_secondmineuclideandistance)
			order ht_fourthmineuclideandistance, after (ht_thirdmineuclideandistance)
				order ht_fifthmineuclideandistance, after (ht_fourthmineuclideandistance)
					order ht_sixthmineuclideandistance, after (ht_fifthmineuclideandistance)
				order ht_seventhmineuclideandistance, after (ht_sixthmineuclideandistance)
			order ht_eighthmineuclideandistance, after (ht_seventhmineuclideandistance)
		order ht_ninethmineuclideandistance, after (ht_eighthmineuclideandistance)
	order ht_tenthmineuclideandistance, after (ht_ninethmineuclideandistance)
		order ht_eleventhmineuclideandistance, after (ht_tenthmineuclideandistance)
			order ht_twelfthmineuclideandistance, after (ht_eleventhmineuclideandistance)
				order ht_location_beach1, after (ht_twelfthmineuclideandistance)
					order ht_location_beach2, after (ht_location_beach1)
				order ht_location_beach3, after (ht_location_beach2)
			order ht_location_beach4, after (ht_location_beach3)
		order ht_location_beach5, after (ht_location_beach4)
	order ht_secondmineuclideandistance_bc, after (ht_location_beach5)
		order ht_ThirdMinEuclideanDist_bch, after (ht_secondmineuclideandistance_bc)
			order ht_FourthMinEuclidDist_bch, after (ht_ThirdMinEuclideanDist_bch)
				order ht_FifthMinEuclideanDist_bch, after (ht_FourthMinEuclidDist_bch)
					order ht_SixthMinEuclideanDist_bch, after (ht_FifthMinEuclideanDist_bch)
				order ht_seventhmineuclideandistance_b, after (ht_SixthMinEuclideanDist_bch)
			order ht_eighthmineuclideandistance_bc, after (ht_seventhmineuclideandistance_b)
		order ht_ninethmineuclideandistance_bc, after (ht_eighthmineuclideandistance_bc)
	order ht_tenthmineuclideandistance_bch, after (ht_ninethmineuclideandistance_bc)
		order ht_eleventhmineuclideandistance_, after (ht_tenthmineuclideandistance_bch)
			order ht_twelfthmineuclideandistance_b, after (ht_eleventhmineuclideandistance_)
				order ht_location_castle1, after (ht_twelfthmineuclideandistance_b)
					order ht_location_castle2, after (ht_location_castle1)
				order ht_location_castle3, after (ht_location_castle2)
			order ht_location_castle4, after (ht_location_castle3)
		order ht_location_castle5, after (ht_location_castle4)
	order ht_SecondMinEuclidDist_ctl, after (ht_location_castle5)
		order ht_ThirdMinEuclideanDist_ctl, after (ht_SecondMinEuclidDist_ctl)
			order ht_FourthMinEuclidDist_ctl, after (ht_ThirdMinEuclideanDist_ctl)
				order ht_FifthdMinEuclidDist_ctl, after (ht_FourthMinEuclidDist_ctl)
					order ht_SixthMinEuclidDist_ctl, after (ht_FifthdMinEuclidDist_ctl)
				order ht_seventhmineuclideandistance_c, after (ht_SixthMinEuclidDist_ctl)
			order ht_eighthmineuclideandistance_ct, after (ht_seventhmineuclideandistance_c)
		order ht_ninethmineuclideandistance_ct, after (ht_eighthmineuclideandistance_ct)
	order ht_tenthmineuclideandistance_ctl, after (ht_ninethmineuclideandistance_ct)
		order ht_EleventhMinEuclidDist_ctl, after (ht_tenthmineuclideandistance_ctl)
			order ht_twelfthmineuclideandistance_c, after (ht_EleventhMinEuclidDist_ctl)
				order ht_location_church1, after (ht_twelfthmineuclideandistance_b)
					order ht_location_church2, after (ht_location_church1)
				order ht_location_church3, after (ht_location_church2)
			order ht_location_church4, after (ht_location_church3)
		order ht_location_church5, after (ht_location_church4)
	order ht_SecondthMinEuclidDist_chc, after (ht_location_church5)
		order ht_ThirdMinEuclidDist_chc, after (ht_SecondthMinEuclidDist_chc)
			order ht_FourthMinEuclidDist_chc, after (ht_ThirdMinEuclidDist_chc)
				order ht_FifthMinEuclidDist_chc, after (ht_FourthMinEuclidDist_chc)
					order ht_SixthMinEuclidDist_chc, after (ht_FifthMinEuclidDist_chc)
				order ht_SeventhMinEuclidDist_chc, after (ht_SixthMinEuclidDist_chc)
			order ht_eighthmineuclideandistance_ch, after (ht_SeventhMinEuclidDist_chc)
		order ht_ninethmineuclideandistance_ch, after (ht_eighthmineuclideandistance_ch)
	order ht_tenthmineuclideandistance_chc, after (ht_ninethmineuclideandistance_ch)
		order ht_EleventhMinEuclidDist_chc, after (ht_tenthmineuclideandistance_chc)
			order ht_twelfththmineuclideandistance, after (ht_EleventhMinEuclidDist_chc)
				order ht_latitude, after (ht_twelfththmineuclideandistance)
					order ht_longitude, after (ht_latitude)
			order ht_stars_classification, after (ht_quality_stars)
		order ht_room_ocup_rt_nutsiii_1, after (ht_stars_classification)
	order ht_room_ocup_rt_nutsiii_2, after (ht_room_ocup_rt_nutsiii_1)
		order ht_room_ocup_rt_nutsiii_3, after (ht_room_ocup_rt_nutsiii_2)
			order ht_room_ocup_rt_nutsiii_4, after (ht_room_ocup_rt_nutsiii_3)
				order ht_room_ocup_rt_nutsiii_5, after (ht_room_ocup_rt_nutsiii_4)
					order ht_room_ocup_rt_nutsiii_6, after (ht_room_ocup_rt_nutsiii_5)
				order ht_room_ocup_rt_nutsiii_7, after (ht_room_ocup_rt_nutsiii_6)
			order ht_room_ocup_rt_nutsiii_8, after (ht_room_ocup_rt_nutsiii_7)
		order ht_room_ocup_rt_nutsiii_9, after (ht_room_ocup_rt_nutsiii_8)
	order ht_room_ocup_rt_nutsiii_10, after (ht_room_ocup_rt_nutsiii_9)
		order ht_room_ocup_rt_nutsiii_11, after (ht_room_ocup_rt_nutsiii_10)
			order ht_room_ocup_rt_nutsiii_12, after (ht_room_ocup_rt_nutsiii_11)
			

* /////////////////////////////////////////////////////////////
* Changing the Types of Hotel and Financial Variables/////////
* ///////////////////////////////////////////////////////////
	
	destring pdt_overnight_stays_nutsii_2024, replace
		recast long pdt_overnight_stays_nutsii_2024									
			destring pdt_overnight_stays_muncic, replace  				
				recast long pdt_overnight_stays_muncic
				recast double ht_id
					recast double f_fiscal_number
				format %12.0g ht_id
			recast double f_fiscal_number
		format %12.0g ht_id
			recast double ht_managing_entity_tax_id
				recast double f_orbis_id_number
					recast double ht_managing_entity_id
						format %12.0g ht_managing_entity_id
					recast str89 ht_managing_entity
				format %89s ht_managing_entity
			recast str89 ht_managing_entity
		recast str ht_managing_entity
			recast strL ht_managing_entity
				format %89s ht_managing_entity
					recast str ht_managing_entity
						format %89s ht_managing_entity
					recast str91 f_company_name_latin_alphabet
				format %91s f_company_name_latin_alphabet
			recast str89 ht_managing_entity
		recast str89 ht_managing_entity
			recast double ht_registration_number
				format %12.0g ht_registration_number
					recast double f_year
						format %12.0g f_year
					recast str54 ht_name
				format %54s ht_name
			recast str54 ht_name
		format %64s ht_name
			format %109s ht_managing_entity
				recast double f_zscore
					format %12.0g f_zscore
						recast double f_zscore_w
					format %12.0g f_zscore_w
				recast double ht_location_1
			format %12.0g ht_location_1
		recast double ht_location_2
			format %12.0g ht_location_2
				recast double ht_location_3
					format %12.0g ht_location_3
						recast double ht_location_4
					format %12.0g ht_location_4
				recast double ht_location_beach1
			format %12.0g ht_location_beach1
		recast double ht_location_beach2
			format %12.0g ht_location_beach2
				recast double ht_location_beach3
					format %12.0g ht_location_beach3
						recast double ht_location_beach4
					format %12.0g ht_location_beach4
				recast double ht_location_castle1
			format %12.0g ht_location_castle1
		recast double ht_location_castle2
			format %12.0g ht_location_castle2
				recast double ht_location_castle3
					format %12.0g ht_location_castle3
						recast double ht_location_castle4
					format %12.0g ht_location_castle4
				recast double ht_location_church1
			format %12.0g ht_location_church1
		recast double ht_location_church2
			format %12.0g ht_location_church2
				recast double ht_location_church3
					format %12.0g ht_location_church3
						recast double ht_location_church4
					format %12.0g ht_location_church4
				recast double ht_events_meetings
			format %12.0g ht_events_meetings
		recast double f_ln_total_assets_w
			format %12.0g f_ln_total_assets_w
				recast double f_liquidity_r
					format %12.0g f_liquidity_r
						recast double f_debt_r
					format %12.0g f_debt_r
				recast double f_efficiency_r
			format %12.0g f_efficiency_r
		recast double f_profit_r
			format %12.0g f_profit_r
				recast double f_growth_r
					format %12.0g f_growth_r
						recast double f_cashflow_operatingrevenue_v2
					format %12.0g f_cashflow_operatingrevenue_v2
				recast double ht_quality_stars
			format %12.0g ht_quality_stars
		recast double f_roe
			format %12.0g f_roe
				recast double f_roe_w
					format %12.0g f_roe_w
						format %12.0g f_roe_v1
					format %12.0g f_roe_v2
				recast double f_roe_v2
			recast double f_roe_v1
		recast double f_roa
			format %12.0g f_roa
				recast double f_roa_w
					format %12.0g f_roa_w
						recast double f_roaa
					format %12.0g f_roaa
				recast double f_roaa_w
			format %12.0g f_roaa_w
		recast double f_roa_v1
			format %12.0g f_roa_v1
				recast double f_roa_v2
					format %12.0g f_roa_v2
						recast double f_total_assets
					format %12.0g f_total_assets
				recast double f_ln_total_assets
			format %12.0g f_ln_total_assets
		recast double f_total_assets_w
			recast double f_sector_roaa_volatility
				format %12.0g f_sector_roaa_volatility
					recast double f_roaa_volatility_w
						format %12.0g f_roaa_volatility_w
					recast double f_capital
				format %12.0g f_capital
			recast double f_capital_w
		recast double f_equitycapital_total_assets
			format %12.0g f_equitycapital_total_assets
				recast double f_equitycapital_total_assets_w
					format %12.0g f_equitycapital_total_assets_w
						recast double f_solvency_v1
					format %12.0g f_solvency_v1
				recast double f_solvency_v2
			format %12.0g f_solvency_v2
		recast double f_solvency_v3
			format %12.0g f_solvency_v3
					recast double f_net_income_d
						format %12.0g f_net_income_d
							recast double ht_profit_loss_for_the_period_n0
						recast double ht_opening_year
					format %12.0g ht_opening_year
				recast double ht_age
			format %12.0g ht_age
		recast double ht_ln_age
			format %12.0g ht_ln_age
				recast double ht_ln_accomodation
					format %12.0g ht_ln_accomodation
						recast double ht_ln_capacity
					format %12.0g ht_ln_capacity
				recast double ht_ln_reducedmobility
			format %12.0g ht_ln_reducedmobility
		recast double ht_r_reducedmobility_totalaccomo
			format %12.0g ht_r_reducedmobility_totalaccomo
				recast double ht_r_reducedmobility_totalcapaci
					format %12.0g ht_r_reducedmobility_totalcapaci
						recast str55 ht_brands
					format %55s ht_brands
				format %64s ht_brands
			recast double ht_classification_status_c
		format %12.0g ht_classification_status_c
			recast double ht_capacity
				format %12.0g ht_capacity
					recast double ht_number_of_accommodation_units
						format %12.0g ht_number_of_accommodation_units
					recast double ht_number_of_reduced_mobility_un
				format %12.0g ht_number_of_reduced_mobility_un
			recast double ht_postal_code_2dig
		format %12.0g ht_postal_code_2dig
			recast double ht_postal_code_4dig
				format %12.0g ht_postal_code_4dig
					recast str25 ht_postal_designation
						format %25s ht_postal_designation
					format %36s ht_postal_designation
				recast double ht_latitude
			format %12.0g ht_latitude
		recast double ht_longitude
			format %12.0g ht_longitude
				recast double ht_municipality_c
					format %12.0g ht_municipality_c
						recast double ht_district_c
					format %12.0g ht_district_c
				format %12.0g ht_fax_contact
			recast double ht_ert_c
		format %12.0g ht_ert_c
			recast str100 ht_nuts_2_oldcriteria
				format %100s ht_nuts_2_oldcriteria
					recast double ht_nuts_2_c_oldcriteria
						format %12.0g ht_nuts_2_c_oldcriteria
					recast str100 ht_nuts_3_oldcriteria
				format %100s ht_nuts_3_oldcriteria
			recast double ht_nuts_3_c_oldcriteria
		format %12.0g ht_nuts_3_c_oldcriteria
			recast str100 ht_nuts_2_newcriteriacode
				format %100s ht_nuts_2_newcriteriacode
					recast str4 ht_nuts_2_newcriteriacode
						format %4s ht_nuts_2_newcriteriacode
					recast str100 ht_nuts_2_newcriteria
				format %100s ht_nuts_2_newcriteria
			recast str4 ht_nuts_3_newcriteriacode
		format %4s ht_nuts_3_newcriteriacode
			recast str100 ht_nuts_3_newcriteria
				format %100s ht_nuts_3_newcriteria
					format %2045s ht_closure_periods
						recast str4 ht_tourist_utility
					format %4s ht_tourist_utility
				format %10s ht_tourist_utility
			recast double ht_tourist_utility_d
		format %12.0g ht_tourist_utility_d
			recast double ht_classified_heritage_c
				format %12.0g ht_classified_heritage_c
					recast double ht_number_of_restaurants
						format %12.0g ht_number_of_restaurants
					recast double ht_ln_restaurants
				format %12.0g ht_ln_restaurants
			recast double ht_restaurants_c
		format %12.0g ht_restaurants_c
			recast double ht_meeting_rooms_d
				format %12.0g ht_meeting_rooms_d
					recast double ht_spa_d
						format %12.0g ht_spa_d
					recast double ht_outdoor_pools_d
				format %12.0g ht_outdoor_pools_d
			recast double ht_indoor_pools_d
		format %12.0g ht_indoor_pools_d
			recast double ht_tennis_d
				format %12.0g ht_tennis_d
					recast double ht_gym_d
						format %12.0g ht_gym_d
					recast double ht_golf_d
				format %12.0g ht_golf_d
			recast double ht_other_facilities_d
		format %12.0g ht_other_facilities_d
			recast double ht_hotel_size_c
				format %12.0g ht_hotel_size_c
					recast double ht_hotel_chain_d
						format %12.0g ht_hotel_chain_d
					recast double f_tax_identification_number_tin
				recast double f_noncurrentassets
			format %12.0g f_noncurrentassets
		recast double f_intangibleassets
			format %12.0g f_intangibleassets
				recast double f_tangiblefixedassets
					format %12.0g f_tangiblefixedassets
				recast double f_currentassets
			format %12.0g f_currentassets
		recast double f_stock
			format %12.0g f_stock
				recast double f_debtors
					format %12.0g f_debtors
						recast double f_othercurrentassets
					format %12.0g f_othercurrentassets
				recast double f_ofwhichcashandcashequivalent
			format %12.0g f_ofwhichcashandcashequivalent
		recast double f_shareholders_funds
			format %12.0g f_shareholders_funds
				recast double f_other_shareholders_funds
					format %12.0g f_other_shareholders_funds
						recast double f_non_current_liabilities
					format %12.0g f_non_current_liabilities
				recast double f_long_term_debt
			format %12.0g f_long_term_debt
		recast double f_other_non_current_liabilities
			format %12.0g f_other_non_current_liabilities
					recast double f_current_liabilities
					format %12.0g f_current_liabilities
				recast double f_loans_short_term_debt
			format %12.0g f_loans_short_term_debt
		recast double f_creditors
			format %12.0g f_creditors
				recast double f_other_current_liabilities
					format %12.0g f_other_current_liabilities
						recast double f_ttl_shareholders_funds_and_lia
					format %12.0g f_ttl_shareholders_funds_and_lia
				recast double f_roe_using_pft_loss_before_tax
			format %12.0g f_roe_using_pft_loss_before_tax
		recast double f_roce_using_pft_loss_before_ta
			format %12.0g f_roce_using_pft_loss_before_ta
				recast double f_roa_using_pft_loss_before_tax
					format %12.0g f_roa_using_pft_loss_before_tax
						recast double f_roe_using_net_income
					format %12.0g f_roe_using_net_income
				recast double f_roce_using_net_income
			format %12.0g f_roce_using_net_income
		recast double f_roa_using_net_income
			format %12.0g f_roa_using_net_income
				recast double f_profit_margin
					format %12.0g f_profit_margin
						recast double f_gross_margin
					format %12.0g f_gross_margin
				recast double f_ebitda_margin
			format %12.0g f_ebitda_margin
		recast double f_cash_flow_operating_revenue
			format %12.0g f_cash_flow_operating_revenue
		recast double f_sales
			format %12.0g f_sales
				recast double f_costs_of_goods_sold
					format %12.0g f_costs_of_goods_sold
						recast double f_gross_profit
					format %12.0g f_gross_profit
				recast double f_other_operating_expense_income
			format %12.0g f_other_operating_expense_income
		recast double f_ebit
			format %12.0g f_ebit
				recast double f_financial_profit_loss
					format %12.0g f_financial_profit_loss
						recast double f_financial_revenue
					format %12.0g f_financial_revenue
				recast double f_financial_expenses
			format %12.0g f_financial_expenses
				recast double f_profit_l_after_tax_pat
			format %12.0g f_profit_l_after_tax_pat
				recast double f_operating_revenue_turnover2
			format %12.0g f_operating_revenue_turnover2
		recast double f_p_l_before_tax
			format %12.0g f_p_l_before_tax
				recast double f_p_l_for_period_net_income
			format %12.0g f_p_l_for_period_net_income
		recast double f_current_ratio
			format %12.0g f_current_ratio
				recast double f_roce_using_p_l_before_tax
			format %12.0g f_roce_using_p_l_before_tax
		recast double f_solvency_ratio_asset_based
			format %12.0g f_solvency_ratio_asset_based
				recast double f_number_of_employees
					format %12.0g f_number_of_employees
						recast double f_ln_numberemployees
					format %12.0g f_ln_numberemployees
						recast double f_nace_rev_2_core_code_4_digits
					format %12.0g f_nace_rev_2_core_code_4_digits
				recast double f_nace_rev_2_secondary_code_s
			format %12.0g f_nace_rev_2_secondary_code_s
		recast double f_nace_rev_2_secondary_code_s_2
			format %12.0g f_nace_rev_2_secondary_code_s_2
				recast double f_nace_rev_2_secondary_code_s_3
					format %12.0g f_nace_rev_2_secondary_code_s_3
						recast double f_nace_rev_2_secondary_code_s_4
					format %12.0g f_nace_rev_2_secondary_code_s_4
				recast double f_d_secondary_code_s
			format %12.0g f_d_secondary_code_s
		recast double f_d_secondary_code_s_2
			format %12.0g f_d_secondary_code_s_2
				recast double f_d_secondary_code_s_3
					format %12.0g f_d_secondary_code_s_3
						recast double f_d_secondary_code_s_4
					format %12.0g f_d_secondary_code_s_4
				recast double f_d_sectordiversification_d
			format %12.0g f_d_sectordiversification_d
		recast double f_c_sectordiversification
			format %12.0g f_c_sectordiversification
				recast double ht_vlg_city_oth
					format %12.0g ht_vlg_city_oth
					recast double ht_total_operating_revenue_turno
				format %12.0g ht_total_operating_revenue_turno
			recast double ht_total_operating_revenue_turn0
		format %12.0g ht_total_operating_revenue_turn0
			recast double ht_total_operating_revenue_turn1
				format %12.0g ht_total_operating_revenue_turn1
					recast double ht_total_operating_revenue_turn2
						format %12.0g ht_total_operating_revenue_turn2
					recast double ht_marketshare_postalcode8dig
				format %12.0g ht_marketshare_postalcode8dig
			recast double ht_marketshare_postalcode6dig
		format %12.0g ht_marketshare_postalcode6dig
			recast double ht_marketshare_postalcode4dig
				format %12.0g ht_marketshare_postalcode4dig
					notes f_c_sectordiversification: Yes
						notes ht_marketshare_postalcode8dig: Yes
					notes ht_marketshare_postalcode6dig: Yes
				notes ht_marketshare_postalcode4dig: Yes
			recast double ht_marketshare_postalcode2dig
		format %12.0g ht_marketshare_postalcode2dig
			recast double ht_marketshare_postalcode8dig_sq
				format %12.0g ht_marketshare_postalcode8dig_sq
					recast double ht_marketshare_postalcode6dig_sq
						format %12.0g ht_marketshare_postalcode6dig_sq
					recast double ht_marketshare_postalcode4dig_sq
				format %12.0g ht_marketshare_postalcode4dig_sq
			recast double ht_marketshare_postalcode2dig_sq
		format %12.0g ht_marketshare_postalcode2dig_sq
			recast double ht_sum_marketshare_square_postal
				format %12.0g ht_sum_marketshare_square_postal
					recast double ht_sum_marketshare_square_posta0
						format %12.0g ht_sum_marketshare_square_posta0
					recast double ht_sum_marketshare_square_posta1
				format %12.0g ht_sum_marketshare_square_posta1
			recast double ht_sum_marketshare_square_posta2
		format %12.0g ht_sum_marketshare_square_posta2
			recast double ht_ln_sum_marketshare_square_pos
				format %12.0g ht_ln_sum_marketshare_square_pos
					recast double ht_ln_sum_marketshare_square_po0
						format %12.0g ht_ln_sum_marketshare_square_po0
					recast double ht_ln_sum_marketshare_square_po1
				format %12.0g ht_ln_sum_marketshare_square_po1
			recast double ht_ln_sum_marketshare_square_po2
		format %12.0g ht_ln_sum_marketshare_square_po2
			notes ht_marketshare_postalcode2dig: Yes
				notes ht_marketshare_postalcode8dig_sq: Yes
					notes ht_marketshare_postalcode6dig_sq: Yes
						notes ht_marketshare_postalcode4dig_sq: Yes
					notes ht_marketshare_postalcode2dig_sq: Yes
				notes ht_ln_sum_marketshare_square_pos: Yes
			notes ht_ln_sum_marketshare_square_po0: Yes
		notes ht_ln_sum_marketshare_square_po1: Yes
			notes ht_ln_sum_marketshare_square_po2: Yes
				recast double ht_occupancy_rooms_nuts_3_newcri
					format %12.0g ht_occupancy_rooms_nuts_3_newcri
						recast double ht_occupancy_beds_nuts_3_newcrit
					format %12.0g ht_occupancy_beds_nuts_3_newcrit
				recast double ht_occupancy_rooms_nuts_3_newcr0
			format %12.0g ht_occupancy_rooms_nuts_3_newcr0
		recast double ht_occupancy_rooms_nuts_3_newcr1
			format %12.0g ht_occupancy_rooms_nuts_3_newcr1
				recast double ht_occupancy_rooms_nuts_3_newcr2
					format %12.0g ht_occupancy_rooms_nuts_3_newcr2
						recast double ht_occupancy_rooms_nuts_3_newcr3
					format %12.0g ht_occupancy_rooms_nuts_3_newcr3
				recast double ht_occupancy_rooms_nuts_3_newcr4
			format %12.0g ht_occupancy_rooms_nuts_3_newcr4
		recast double ht_occupancy_rooms_nuts_3_newcr5
			format %12.0g ht_occupancy_rooms_nuts_3_newcr5
				recast double ht_occupancy_rooms_nuts_3_newcr6
					format %12.0g ht_occupancy_rooms_nuts_3_newcr6
						recast double ht_occupancy_rooms_nuts_3_newcr7
					format %12.0g ht_occupancy_rooms_nuts_3_newcr7
				recast double ht_occupancy_rooms_nuts_3_newcr8
		format %12.0g ht_occupancy_rooms_nuts_3_newcr8
			recast double ht_occupancy_rooms_nuts_3_newcr9
				format %12.0g ht_occupancy_rooms_nuts_3_newcr9
					recast double ht_occupancy_rooms_nuts_3_newc00
						format %12.0g ht_occupancy_rooms_nuts_3_newc00
					recast double ht_occupancy_rooms_nuts_3_newc01
				format %12.0g ht_occupancy_rooms_nuts_3_newc01
			recast double ht_occupancy_rooms_nuts_3_newc02
		format %12.0g ht_occupancy_rooms_nuts_3_newc02
			recast double ht_occupancy_rooms_nuts_3_newc03
				format %12.0g ht_occupancy_rooms_nuts_3_newc03
			recast double ht_location_4
				format %12.0g ht_location_4
					recast double ht_location_5
						format %12.0g ht_location_5
					recast double ht_secondmineuclideandistance
				format %12.0g ht_secondmineuclideandistance
			recast double ht_thirdmineuclideandistance
		format %12.0g ht_thirdmineuclideandistance
			recast double ht_fourthmineuclideandistance
				format %12.0g ht_fourthmineuclideandistance
					recast double ht_fifthmineuclideandistance
						format %12.0g ht_fifthmineuclideandistance
					recast double ht_sixthmineuclideandistance
				format %12.0g ht_sixthmineuclideandistance
			recast double ht_seventhmineuclideandistance
		format %12.0g ht_seventhmineuclideandistance
			recast double ht_eighthmineuclideandistance
				format %12.0g ht_eighthmineuclideandistance
					recast double ht_ninethmineuclideandistance
						format %12.0g ht_ninethmineuclideandistance
					recast double ht_tenthmineuclideandistance
				format %12.0g ht_tenthmineuclideandistance
			recast double ht_eleventhmineuclideandistance
		format %12.0g ht_eleventhmineuclideandistance
			recast double ht_twelfthmineuclideandistance
				format %12.0g ht_twelfthmineuclideandistance
					format %12.0g ht_islands_ptcont_d
				recast double ht_closure_periods_d
			format %12.0g ht_closure_periods_d
		recast double ht_msm_bm_d
			format %12.0g ht_msm_bm_d
				recast double f_tot_oper_rev_turn_nutsii
					format %12.0g f_tot_oper_rev_turn_nutsii
						recast double f_tot_oper_rev_turn_nutsiii
					format %12.0g f_tot_oper_rev_turn_nutsiii
				recast double f_tot_oper_rev_turn_munic
			format %12.0g f_tot_oper_rev_turn_munic
		recast double f_mkt_share_nutsii
			format %12.0g f_mkt_share_nutsii
				recast double f_mkt_share_nutsiii
					format %12.0g f_mkt_share_nutsiii
						recast double f_mkt_share_munic
					format %12.0g f_mkt_share_munic
				recast double f_mkt_share_pwr_nutsii
			format %12.0g f_mkt_share_pwr_nutsii
		recast double f_mkt_share_pwr_nutsiii
			format %12.0g f_mkt_share_pwr_nutsiii
				recast double f_mkt_share_pwr_munic
					format %12.0g f_mkt_share_pwr_munic
						recast double f_mkt_share_conc_nutsii
					format %12.0g f_mkt_share_conc_nutsii
				recast double f_mkt_share_conc_nutsiii
			format %12.0g f_mkt_share_conc_nutsiii
		recast double f_mkt_share_conc_munic
			format %12.0g f_mkt_share_conc_munic
						recast double ht_secondmineuclideandistance_bc
					format %12.0g ht_secondmineuclideandistance_bc
				recast double ht_ThirdMinEuclideanDist_bch
			format %12.0g ht_ThirdMinEuclideanDist_bch
		recast double ht_FourthMinEuclidDist_bch
			format %12.0g ht_FourthMinEuclidDist_bch
				recast double ht_FifthMinEuclideanDist_bch
					format %12.0g ht_FifthMinEuclideanDist_bch
						recast double ht_SixthMinEuclideanDist_bch
					format %12.0g ht_SixthMinEuclideanDist_bch
				recast double ht_seventhmineuclideandistance_b
			format %12.0g ht_seventhmineuclideandistance_b
		recast double ht_eighthmineuclideandistance_bc
			format %12.0g ht_eighthmineuclideandistance_bc
				recast double ht_ninethmineuclideandistance_bc
					format %12.0g ht_ninethmineuclideandistance_bc
						recast double ht_tenthmineuclideandistance_bch
					format %12.0g ht_tenthmineuclideandistance_bch
				recast double ht_eleventhmineuclideandistance_
			format %12.0g ht_eleventhmineuclideandistance_
		recast double ht_twelfthmineuclideandistance_b
			format %12.0g ht_twelfthmineuclideandistance_b
				recast double ht_location_beach4
			format %12.0g ht_location_beach4
		recast double ht_location_beach5
			format %12.0g ht_location_beach5
						recast double ht_SecondMinEuclidDist_ctl
					format %12.0g ht_SecondMinEuclidDist_ctl
				recast double ht_ThirdMinEuclideanDist_ctl
			format %12.0g ht_ThirdMinEuclideanDist_ctl
		recast double ht_FourthMinEuclidDist_ctl
			format %12.0g ht_FourthMinEuclidDist_ctl
				recast double ht_FifthdMinEuclidDist_ctl
					format %12.0g ht_FifthdMinEuclidDist_ctl
				recast double ht_SixthMinEuclidDist_ctl
			format %12.0g ht_SixthMinEuclidDist_ctl
		recast double ht_seventhmineuclideandistance_c
			format %12.0g ht_seventhmineuclideandistance_c
				recast double ht_eighthmineuclideandistance_ct
					format %12.0g ht_eighthmineuclideandistance_ct
						recast double ht_ninethmineuclideandistance_ct
					format %12.0g ht_ninethmineuclideandistance_ct
				recast double ht_tenthmineuclideandistance_ctl
			format %12.0g ht_tenthmineuclideandistance_ctl
		recast double ht_EleventhMinEuclidDist_ctl
			format %12.0g ht_EleventhMinEuclidDist_ctl
				recast double ht_twelfthmineuclideandistance_c
					format %12.0g ht_twelfthmineuclideandistance_c
		recast double ht_location_castle4
			format %12.0g ht_location_castle4
				recast double ht_location_castle5
					format %12.0g ht_location_castle5
				recast double ht_SecondthMinEuclidDist_chc
		format %12.0g ht_SecondthMinEuclidDist_chc
			recast double ht_ThirdMinEuclidDist_chc
				format %12.0g ht_ThirdMinEuclidDist_chc
					recast double ht_FourthMinEuclidDist_chc
						format %12.0g ht_FourthMinEuclidDist_chc
					recast double ht_FifthMinEuclidDist_chc
				format %12.0g ht_FifthMinEuclidDist_chc
			recast double ht_SixthMinEuclidDist_chc
		format %12.0g ht_SixthMinEuclidDist_chc
			recast double ht_SeventhMinEuclidDist_chc
				format %12.0g ht_SeventhMinEuclidDist_chc
					recast double ht_eighthmineuclideandistance_ch
						format %12.0g ht_eighthmineuclideandistance_ch
					recast double ht_ninethmineuclideandistance_ch
				format %12.0g ht_ninethmineuclideandistance_ch
			recast double ht_tenthmineuclideandistance_chc
		format %12.0g ht_tenthmineuclideandistance_chc
			recast double ht_EleventhMinEuclidDist_chc
				format %12.0g ht_EleventhMinEuclidDist_chc
					recast double ht_twelfththmineuclideandistance
						format %12.0g ht_twelfththmineuclideandistance
			recast double ht_location_church4
				format %12.0g ht_location_church4
					recast double ht_location_church5
						format %12.0g ht_location_church5
					recast double f_d_sectordiversification_qtv99
				format %12.0g f_d_sectordiversification_qtv99
					recast double ht_room_ocup_rt_nutsii_y
						format %12.0g ht_room_ocup_rt_nutsii_y
			recast double ht_room_ocup_nutsii
		format %12.0g ht_room_ocup_nutsii
			recast double ht_room_ocup_sea_nutsii
				format %12.0g ht_room_ocup_sea_nutsii
					recast double ht_room_ocup_rt_nutsii_1
						format %12.0g ht_room_ocup_rt_nutsii_1
					recast double ht_room_ocup_rt_nutsii_2
				format %12.0g ht_room_ocup_rt_nutsii_2
			recast double ht_room_ocup_rt_nutsii_3
		format %12.0g ht_room_ocup_rt_nutsii_3
			recast double ht_room_ocup_rt_nutsii_4
				format %12.0g ht_room_ocup_rt_nutsii_4
					recast double ht_room_ocup_rt_nutsii_5
						format %12.0g ht_room_ocup_rt_nutsii_5
					recast double ht_room_ocup_rt_nutsii_6
				format %12.0g ht_room_ocup_rt_nutsii_6
			recast double ht_room_ocup_rt_nutsii_7
		format %12.0g ht_room_ocup_rt_nutsii_7
			recast double ht_room_ocup_rt_nutsii_8
				format %12.0g ht_room_ocup_rt_nutsii_8
					recast double ht_room_ocup_rt_nutsii_9
						format %12.0g ht_room_ocup_rt_nutsii_9
					recast double ht_room_ocup_rt_nutsii_10
				format %12.0g ht_room_ocup_rt_nutsii_10
			recast double ht_room_ocup_rt_nutsii_11
		format %12.0g ht_room_ocup_rt_nutsii_11
			recast double ht_room_ocup_rt_nutsii_12
				format %12.0g ht_room_ocup_rt_nutsii_12
					format %12.0g ht_bed_ocup_rt_nutsii_y
						recast double ht_bed_ocup_rt_nutsii_y
			recast double ht_room_ocup_nutsiii
		format %12.0g ht_room_ocup_nutsiii
			recast double ht_room_ocup_sea_nutsiii
				format %12.0g ht_room_ocup_sea_nutsiii
					recast double ht_room_ocup_rt_munic_y
					format %12.0g ht_room_ocup_rt_munic_y
			format %12.0g ht_room_ocup_munic
		format %12.0g ht_room_ocup_sea_munic
			format %12.0g ht_room_ocup_rt_munic_1
				recast double ht_room_ocup_munic
					recast double ht_room_ocup_sea_munic
						recast double ht_room_ocup_rt_munic_1
					recast double ht_room_ocup_rt_munic_2
				recast double ht_room_ocup_rt_munic_3
			format %12.0g ht_room_ocup_rt_munic_3
		recast double ht_room_ocup_rt_munic_4
			format %12.0g ht_room_ocup_rt_munic_4
				recast double ht_room_ocup_rt_munic_5
					format %12.0g ht_room_ocup_rt_munic_5
						recast double ht_room_ocup_rt_munic_6
					format %12.0g ht_room_ocup_rt_munic_6
				recast double ht_room_ocup_rt_munic_7
			format %12.0g ht_room_ocup_rt_munic_7
		recast double ht_room_ocup_rt_munic_8
			format %12.0g ht_room_ocup_rt_munic_8
				recast double ht_room_ocup_rt_munic_9
					format %12.0g ht_room_ocup_rt_munic_9
						recast double ht_room_ocup_rt_munic_10
					format %12.0g ht_room_ocup_rt_munic_10
				recast double ht_room_ocup_rt_munic_11
			format %12.0g ht_room_ocup_rt_munic_11
		recast double ht_room_ocup_rt_munic_12
			format %12.0g ht_room_ocup_rt_munic_12
				recast double ht_Meeting_Room_Capacity
					format %12.0g ht_Meeting_Room_Capacity
						recast double ht_stars_classification
					format %12.0g ht_stars_classification
				recast double f_total_debt
			format %12.0g f_total_debt
		recast double f_total_debt_fin
			format %12.0g f_total_debt_fin
				recast double f_long_term_debt_f
					format %12.0g f_long_term_debt_f
						recast double f_short_term_debt_f
					format %12.0g f_short_term_debt_f
				recast double f_traded_credit_financing
			format %12.0g f_traded_credit_financing
		recast double f_assets_tangibility
			format %12.0g f_assets_tangibility
				recast double f_operating_profit_margin
					format %12.0g f_operating_profit_margin
						recast double f_net_profit_margin
					format %12.0g f_net_profit_margin
				recast double f_total_debt_capital_ratio
			format %12.0g f_total_debt_capital_ratio
		recast double f_liquid_assets
			format %12.0g f_liquid_assets					
			
*/* For Change the Labels Names of the variables regarding the financial variables of the hotels  */
		
		label variable f_company_name_latin_alphabet "ORBIS_f_Company_Name"
			label variable f_bvd_id_number "ORBIS_f_Bureau_Van_Dijk_ID_Number"
				label variable f_bvd_account_number "ORBIS_f_Bureau_Van_Dijk_Account_Number"
					label variable f_european_vat_number "ORBIS_f_European_VAT_Number"
						label variable f_lei_legal_entity_identifier "ORBIS_f_Legal_Entity_Identifier"
					label variable f_operating_revenue_turnover2 "ORBIS_f_Operating_Revenue_Turnover_2"
				label variable f_p_l_before_tax "ORBIS_f_Profit_Loss_Before_Tax" 
			label variable f_p_l_for_period_net_income "ORBIS_f_Profit_Loss_for_Period_Net_Income" 
			label variable f_fiscal_number "ORBIS_f_Fiscal_Number"
				label variable f_orbis_id_number "ORBIS_f_Number_ID"
					label variable f_total_assets_w "ORBIS_f_Total_Assets_Winsorized_5%"
				label variable f_capital_w "ORBIS_f_Capital_Winsorized_5%"
			label variable f_tax_identification_number_tin "ORBIS_f_Tax_Identification_Number"
			label variable f_year "ORBIS_f_Year"
				label variable f_number_of_employees "ORBIS_f_Number_of_Employees"
					label variable f_zscore "ORBIS_f_Z-Score (without main variables winsorized)" 
						label variable f_zscore_w "ORBIS_f_Z-Score_Winsorized_5% (with winsorized for main financial variables)"
					label variable f_roe "ORBIS_f_Return_On_Equity = (f_Profit_Loss_for_the_Period_Net_Income / f_Capital)"
				label variable f_roe_w "ORBIS_f_(f_Profit_Loss_for_the_Period_Net_Income / f_Equity_Capital_in_Perce)"
			label variable f_total_assets "ORBIS_f_Total_Assets"
		label variable f_ln_total_assets "ORBIS_f_Natural_Logarithm_Total_Assets = ln(Total_assets)"
			label variable f_ln_total_assets_w "ORBIS_f_Natural_Logarithm_Total_Assets_Winsorized_5% = ln(f_total_assets_w)"
				label variable f_capital "ORBIS_f_Capital"
					label variable f_roaa "ORBIS_f_Return_On_Average_Assets"
						label variable f_roaa_w "ORBIS_f_Return_On_Average_Assets_Winsorized_5%"
					label variable f_roa "ORBIS_f_Return_On_Assets"
				label variable f_roa_w "ORBIS_f_Return_On_Assets Winsorized_5%"
			label variable f_sector_roaa_volatility "ORBIS_f_Return_On_Average_Assets_Volatility"
		label variable f_roaa_volatility_w "ORBIS_f_Return_On_Average_Assets_Volatility_Winsorized_5%"
			label variable f_noncurrentassets "ORBIS_f_Non_current_Assets"
				label variable f_intangibleassets "ORBIS_f_Intangible_Assets"
					label variable f_tangiblefixedassets "ORBIS_f_Tangible_Fixed_Assets"
			label variable f_currentassets "ORBIS_f_Current_Assets"	
		label variable f_stock "ORBIS_f_Stock"
			label variable f_debtors "ORBIS_f_Debtors"	
				label variable f_othercurrentassets "ORBIS_f_Other_Current_Assets"
					label variable f_ofwhichcashandcashequivalent "ORBIS_f_Of_Which_Cash_Hand_Cash_Equivalent"	
						label variable f_shareholders_funds "ORBIS_f_Shareholders_Funds"
					label variable f_other_shareholders_funds "ORBIS_f_Other_Shareholders_Funds"
				label variable f_non_current_liabilities "ORBIS_f_Non_Current_Liabilities"
			label variable f_long_term_debt "ORBIS_f_Long_Term_Debt"
		label variable f_other_non_current_liabilities "ORBIS_f_Other_Non_Current_Liabilties"
			label variable f_current_liabilities "ORBIS_f_Current_Liabilities"
					label variable f_loans_short_term_debt "ORBIS_f_Loans_Short_Term_Debt"
						label variable f_creditors "ORBIS_f_Creditors"
					label variable f_other_current_liabilities "ORBIS_f_Other_Current_Liabilities"
				label variable f_ttl_shareholders_funds_and_lia "ORBIS_f_Total_Shareholders_Funds_Liabilities"
			label variable f_roe_using_pft_loss_before_tax "ORBIS_f_Return_On_Equity_Using_Profit_Loss_Before_Tax"
		label variable f_roce_using_pft_loss_before_ta "ORBIS_f_Return_On_Capital_Employed_Using_Profit_Loss_Before_Tax"
			label variable f_roa_using_pft_loss_before_tax "ORBIS_f_Return_On_Assets_Using_Profit_Loss_Before_Tax"
				label variable f_roe_using_net_income "ORBIS_f_Return_On_Equity_Using_Net_Income"
					label variable f_roce_using_net_income "ORBIS_f_Return_On_Capital_Employed_Using_Net_Income"
						label variable f_roa_using_net_income "ORBIS_f_Return_On_Assets_Using_Net_Income"
					label variable f_profit_margin "ORBIS_f_Profit_Margin"
				label variable f_gross_margin "ORBIS_f_Gross_Margin"
			label variable f_ebitda_margin "ORBIS_f_Earnings_Before_Interest_Taxes_Depreciation_Amortization_Margin"		
		label variable f_ebit_margin "ORBIS_f_Earnings_Before_Interest_Taxes_Margin"
			label variable f_cash_flow_operating_revenue "ORBIS_f_Cash_Flow_Operating_Revenue"
				label variable f_sales "ORBIS_f_Sales"
					label variable f_costs_of_goods_sold "ORBIS_f_Costs_Of_Goods_Sold"
				label variable f_gross_profit "ORBIS_f_Gross_Profit"
			label variable f_other_operating_expense_income "ORBIS_f_Other_Operating_Expense_Income"
		label variable f_ebit "ORBIS_f_Earnings_Before_Interest_Taxes"
			label variable f_financial_profit_loss "ORBIS_f_Financial_Profit_Loss"
				label variable f_financial_revenue "ORBIS_f_Financial_Revenue"
				label variable f_financial_expenses "ORBIS_f_Financial_Expenses"
		label variable f_current_ratio "ORBIS_f_Current_Ratio"
				label variable f_roce_using_p_l_before_tax "ORBIS_f_Return_On_Capital_Employed_Using_Profit_Loss_Before_Tax"
			label variable f_solvency_ratio_asset_based "ORBIS_f_Solvency_Ratio_Using_Assets"
				label variable f_profit_l_after_tax_pat	"ORBIS_f_Profit_Loss_After_Tax"
					label variable  f_tot_oper_rev_turn_nutsii "ORBIS_f_Total_Operating_Revenue_Turnover_NUTS_II_2024"            
				label variable f_tot_oper_rev_turn_nutsiii "ORBIS_f_Total_Operating_Revenue_Turnover_NUTS_III_2024"	
			label variable f_tot_oper_rev_turn_munic "ORBIS_f_Total_Operating_Revenue_Turnover_Municipality"
		label variable f_mkt_share_nutsiii "ORBIS_f_Market_Share_NUTS_III_2024"
			label variable f_mkt_share_munic "ORBIS_f_Market_Share_Municipality"
				label variable f_mkt_share_pwr_nutsiii "ORBIS_f_Market_Share_Power2_NUTS_III_2024"
					label variable f_mkt_share_pwr_munic "ORBIS_f_Market_Share_Power2_Municipality"
				label variable f_mkt_share_conc_nutsiii "ORBIS_f_Market_Share_Concentration_NUTS_III_2024"
			label variable f_mkt_share_conc_munic "ORBIS_f_Market_Share_Concentration_Municipality"
				label variable f_liquidity_r "ORBIS_f_Ratio_((Current Assets - Stocks) / Current Liabilities)"
					label variable f_debt_r "(Total_Shareholders_And_Liabilities-Shareholders_funds-Other_Shareholders_Funds)" 
				label variable f_efficiency_r "ORBIS_f_Ratio_(Income / Total Assets)"
			label variable f_profit_r "ORBIS_f_Earnings_Before_Interest_Taxes_Margin = (f_ebit_margin)" 
		label variable f_growth_r "((Operating_Revenue_Turnover/LAG(ORBIS_f_Operating_Revenue_Turnover,1)-1))"
			label variable f_cashflow_operatingrevenue_v2 "ORBIS_f_Cash_Flow_Operating_Revenue_Version_2 = f_Cash_Flow_Operating_Revnue/100"
				label variable f_roe_v1 "ORBIS_f_Return_On_Equity_Version_1 = (ROE_using_Profit_Loss_before_tax / 100)"
					label variable f_roe_v2 "ORBIS_f_Return_On_Equity_Version_2 = (ROE_using_Net_Income / 100)" 
						label variable f_roa_v1 "ORBIS_f_Return_On_Assets_Version_1 = (ROA_using_Profit_loss_before_tax / 100)" 
					label variable f_roa_v2 "ORBIS_f_Return_On_Assets_Version_2 = (ROA_using_Net_Income / 100)"
				label variable  f_equitycapital_total_assets "ORBIS_f_Equity_Capital_Percent_of_Total_Assets"	
			label variable f_equitycapital_total_assets_w "ORBIS_f_Equity_Capital_Percent_of_Total_Assets_Winsorized_5%"
				label variable f_solvency_v1 "ORBIS_f_Solvency_Version_1 = (f_Capital / f_Total_Assets)"	
					label variable f_solvency_v2 "ORBIS_f_(Shareholders_funds / Total_shareholders_funds_and_liabilities)"
						label variable f_solvency_v3 "(Shareholders_funds+Other_Shareholders_Funds) / Total_Shareholders_funds_and_Liabilities"
							label variable f_net_income_d "ORBIS_f_Net_Income_Positive_Dummy = net_income_positive; 1 if > 0; 0 if <=0"
						label variable f_d_secondary_code_s "ORBIS_f_Diversity_Secondary_Code_S; 1= if exists secondary_code_s"
					label variable f_d_secondary_code_s_2 "ORBIS_f_Diversity_Secondary_Code_S_2; 1= if exists secondary_code_s_2"
				label variable f_d_secondary_code_s_3 "ORBIS_f_Diversity_Secondary_Code_S_3; 1= if exists secondary_code_s_3"
			label variable f_d_secondary_code_s_4 "ORBIS_f_Diversity_Secondary_Code_S_4; 1= if exists secondary_code_s_4"
				label variable f_c_sectordiversification "1 if 2 NACES codes; 2 if 3 NACES codes; 3 if 4 NACES codes;"
					label variable f_mkt_share_conc_nutsii "ORBIS_f_Market_Share_Concentration_NUTS_II_2024"
						label variable f_mkt_share_pwr_nutsii "ORBIS_f_Market_Share_Power2_NUTS_II_2024"
							label variable f_mkt_share_nutsii "ORBIS_f_Market_Share_NUTS_II_2024"
						label variable ht_profit_loss_for_the_period_n0 "ORBIS_f_Profit_Loss_for_Period_Net_Income_Winsorized_5%"
				
*/* For Change the Labels Names of the variables regarding the hotels */
		
		label variable ht_accommodation_type "Turismo_Portugal_ht_Accommodation_Type"
			label variable ht_registration_number "Turismo_Portugal_ht_Registration_Number"		
				label variable ht_name "Turismo_Portugal_ht_Name"
					label variable ht_brands "Turismo_Portugal_ht_Brands"
					label variable ht_classification_status "Turismo_Portugal_ht_Classification_Status"
				label variable ht_capacity "Turismo_Portugal_ht_Capacity"
			label variable ht_address_location "Turismo_Portugal_ht_Address_Location"
					label variable ht_postal_designation "Turismo_Portugal_ht_Postal_Designation"
						label variable ht_municipality "Turismo_Portugal_ht_Municipality"
					label variable ht_district "Turismo_Portugal_ht_District"
				label variable ht_telephone_contact "Turismo_Portugal_ht_Telephone_Contact"
			label variable ht_fax_contact "Turismo_Portugal_ht_Fax_Contact"
		label variable ht_email_contact "Turismo_Portugal_ht_Email_Contact"	
			label variable ht_website "Turismo_Portugal_ht_Website"
				label variable ht_ert "Turismo_Portugal_ht_Entidade_Regionais_Turismo"
					label variable ht_closure_periods "Turismo_Portugal_ht_Closure_Periods"
				label variable ht_tourist_utility "Turismo_Portugal_ht_Tourist_Utility"		
			label variable ht_classified_heritage_building "Turismo_Portugal_ht_Classified_Heritage_Building"			
		label variable ht_number_of_restaurants "Turismo_Portugal_ht_Number_of_Restaurants"				
			label variable ht_meeting_rooms "Turismo_Portugal_ht_Meeting_Rooms"			
				label variable ht_events_meetings "Turismo_Portugal_ht_Events_Meetings = (ht_Meeting_Room_Capacity)"		 
					label variable ht_spa "Turismo_Portugal_ht_SPA"	
						label variable ht_outdoor_pools "Turismo_Portugal_ht_Outdoor_Pools"
					label variable ht_indoor_pools "Turismo_Portugal_ht_Indoor_Pools"	
				label variable ht_tennis "Turismo_Portugal_ht_Tennis"		
			label variable ht_gym "Turismo_Portugal_ht_Gym"			
		label variable ht_golf "Turismo_Portugal_ht_Golf"				
			label variable ht_other_facilities "Turismo_Portugal_ht_Other_Facilities"			
				label variable ht_managing_entity "Turismo_Portugal_ht_Managing_Entity"		
					label variable ht_opening_year "Turismo_Portugal_ht_Opening_Year"	
						label variable ht_managing_entity_tax_id "Turismo_Portugal_ht_Managing_Entity_Tax_ID"
					label variable ht_hotel_size "1-(<20 rooms);2-(21-50 rooms);3-(51-80 rooms);4-(81-120 rooms);5-(>121 rooms)" 							
				label variable ht_longitude "Turismo_Visit_Portugal_ht_Longitude"
					label variable ht_latitude "Turismo_Visit_Portugal_ht_Latitude"
						label variable ht_location_1 "Turismo_Visit_Portugal_ht_Location_1Minimum_All_Distances_km"
					label variable ht_location_2 "Turismo_Visit_Portugal_ht_Location_3Minimum_All_Distances_Average_km"
				label variable ht_location_3 "Turismo_Visit_Portugal_ht_Location_6Minimum_All_Distances_Average_km"
			label variable f_d_sectordiversification_d "ORBIS_f_Sector_Diversification_Dummy ; 1 if has any secondary_code_s; 0 if No"
				label variable ht_id "Turismo_Portugal_ht_ID"
			label variable ht_age "Turismo_Portugal_ht_Age = (f_Year - ht_Opening_Year)"
		label variable ht_number_of_accommodation_units "Turismo_Portugal_ht_Number_Accomodation_Units"
				label variable ht_municipality_c "Turismo_Portugal_ht_Municipality_ID"
					label variable f_nace_rev_2_core_code_4_digits "ORBIS_f_NACE_Rev_2_Core_Code_4_Digits"
						label variable f_nace_rev_2_secondary_code_s "ORBIS_f_NACE_Rev_2_Secondary_Code_S_1"
					label variable f_nace_rev_2_secondary_code_s_2 "ORBIS_f_NACE_Rev_2_Secondary_Code_S_2"
				label variable f_nace_rev_2_secondary_code_s_3 "ORBIS_f_NACE_Rev_2_Secondary_Code_S_3"
			label variable f_nace_rev_2_secondary_code_s_4 "ORBIS_f_NACE_Rev_2_Secondary_Code_S_4"
		label variable ht_location_4 "Turismo_Visit_Portugal_ht_Location_12Minimum_All_Distances_Average_km"
			label variable ht_location_5 "Turismo_Visit_Portugal_ht_Location_12Minimum_All_Distances_Average_km"
					label variable ht_location_beach1 "Turismo_Visit_Portugal_ht_Location_1Minimum_Beach__Distance_km" 		
				label variable ht_secondmineuclideandistance_bc "Turismo_Visit_Portugal_ht_Beach_2Minimum_Distance_km" 				
					label variable ht_seventhmineuclideandistance_b	"Turismo_Visit_Portugal_ht_Beach_7Minimum_Distance_km"		
						label variable ht_eighthmineuclideandistance_bc "Turismo_Visit_Portugal_ht_Beach_8Minimum_Distance_km"		
					label variable ht_ninethmineuclideandistance_bc	"Turismo_Visit_Portugal_ht_Beach_9Minimum_Distance_km"		
				label variable ht_tenthmineuclideandistance_bch	"Turismo_Visit_Portugal_ht_Beach_10Minimum_Distance_km"		
			label variable ht_eleventhmineuclideandistance_	"Turismo_Visit_Portugal_ht_Beach_11Minimum_Distance_km"		
		label variable ht_twelfthmineuclideandistance_b	"Turismo_Visit_Portugal_ht_Beach_12Minimum_Distance_km"		
			label variable ht_location_beach2 "Turismo_Visit_Portugal_ht_Location_3Minimum_Beach_Distances_Average_km"
				label variable ht_location_beach3 "Turismo_Visit_Portugal_ht_Location_6Minimum_Beach_Distances_Average_km"
					label variable ht_location_beach4 "Turismo_Visit_Portugal_ht_Location_12Minimum_Beach_Distances_Average_km"
						label variable ht_location_beach5 "Turismo_Visit_Portugal_ht_Location_12Minimum_Beach_Distances_Average_km"
				label variable ht_seventhmineuclideandistance_c "Turismo_Visit_Portugal_ht_Castle_7Minimum_Distance_km"
					label variable ht_eighthmineuclideandistance_ct "Turismo_Visit_Portugal_ht_Castle_8Minimum_Distance_km"
					label variable ht_ninethmineuclideandistance_ct "Turismo_Visit_Portugal_ht_Castle_9Minimum_Distance_km"
				label variable ht_tenthmineuclideandistance_ctl "Turismo_Visit_Portugal_ht_Castle_10Minimum_Distance_km"
			label variable ht_twelfthmineuclideandistance_c "Turismo_Visit_Portugal_ht_Castle_12Minimum_Distance_km"
		label variable ht_location_castle1 "Turismo_Visit_Portugal_ht_Location_1Minimum_Castle_Distance_km"
			label variable ht_location_castle2 "Turismo_Visit_Portugal_ht_Location_3Minimum_Castle_Distances_Average_km"
				label variable ht_location_castle3 "Turismo_Visit_Portugal_ht_Location_6Minimum_Castle_Distances_Average_km"
					label variable ht_location_castle4 "Turismo_Visit_Portugal_ht_Location_12Minimum_Castle_Distances_Average_km"
						label variable ht_location_castle5 "Turismo_Visit_Portugal_ht_Location_12Minimum_Castle_Distances_Average_km"
					label variable ht_location_church1 "Turismo_Visit_Portugal_ht_Location_1Minimum_Church_Distance_km"
						label variable ht_eighthmineuclideandistance_ch "Turismo_Visit_Portugal_ht_Church_8Minimum_Distance_km"
					label variable ht_ninethmineuclideandistance_ch "Turismo_Visit_Portugal_ht_Church_9Minimum_Distance_km"
				label variable ht_tenthmineuclideandistance_chc "Turismo_Visit_Portugal_ht_Church_10Minimum_Distance_km"
		label variable ht_twelfththmineuclideandistance "Turismo_Visit_Portugal_ht_Church_12Minimum_Distance_km"
			label variable ht_location_church2 "Turismo_Visit_Portugal_ht_Location_3Minimum_Church_Distances_Average_km" 
				label variable ht_location_church3 "Turismo_Visit_Portugal_ht_Location_6Minimum_Church_Distances_Average_km"
					label variable ht_location_church4 "Turismo_Visit_Portugal_ht_Location_12Minimum_Church_Distances_Average_km"
						label variable ht_location_church5 "Turismo_Visit_Portugal_ht_Location_12Minimum_Church_Distances_Average_km"
					label variable ht_managing_entity_id "Turismo_Portugal_ht_Managing_Entity_ID"	
				label variable ht_quality_stars "Turismo_Portugal_ht_Quality_Stars = (ht_Stars_Classification)"
			label variable ht_classification_status_c "Turismo_Portugal_ht_Classification_Status_ID"
		label variable ht_number_of_reduced_mobility_un "Turismo_Portugal_ht_Number_Reduced_Mobility_Units"
				label variable ht_district_c "Turismo_Portugal_ht_District_ID"
					label variable ht_ert_c "Turismo_Portugal_ht_Entidade_Regionais_Turismo_ID"
				label variable ht_tourist_utility_d "Turismo_Portugal_ht_Tourist_Utility_Dummy; 1 if Yes; 0 if No"	
			label variable ht_classified_heritage_c "Turismo_Portugal_ht_Classified_Heritage_Building_ID"
		label variable ht_meeting_rooms_d "Turismo_Portugal_ht_Meeting_Rooms_Dummy; 1 if Yes; 0 if No"	
			label variable ht_spa_d "Turismo_Portugal_ht_SPA_Dummy; 1 if Yes; 0 if No"	
				label variable ht_outdoor_pools_d "Turismo_Portugal_ht_Outdoor_Pools_Dummy; 1 if Yes; 0 if No"
					label variable ht_indoor_pools_d "Turismo_Portugal_ht_Indoor_Pools_Dummy; 1 if Yes; 0 if No"
						label variable ht_tennis_d "Turismo_Portugal_ht_Tennis_Dummy; 1 if Yes; 0 if No"	
					label variable ht_gym_d "Turismo_Portugal_ht_Gym_Dummy; 1 if Yes; 0 if No"
				label variable ht_golf_d "Turismo_Portugal_ht_Golf_Dummy; 1 if Yes; 0 if No"
			label variable ht_other_facilities_d "Turismo_Portugal_ht_Other_Facilities_Dummy; 1 if Yes; 0 if No"	
		label variable f_d_sectordiversification_qt "ORBIS_f_Diversification_Quantity"
			label variable ht_hotel_chain_d "Turismo_Portugal_ht_Chain_Dummy; 1 if Yes; 0 if No"				
				label variable ht_islands_ptcont_d "Turismo_Portugal_ht_Islands_Portugal_Continental_Dummy; 1 if Yes; 0 if No"
					label variable ht_msm_bm_d "Turismo_Portugal_ht_Micro_Small_Medium_Big_Macro_Dummy; 1 if Yes; 0 if No"
						label variable ht_room_ocup_rt_nutsii_1 "Turismo_Portugal_ht_Occupation_Room_Rate_NUTS_II_2024_January"
					label variable ht_room_ocup_rt_nutsii_2 "Turismo_Portugal_ht_Occupation_Room_Rate_NUTS_II_2024_February"
				label variable ht_room_ocup_rt_nutsii_3 "Turismo_Portugal_ht_Occupation_Room_Rate_NUTS_II_2024_March"
			label variable ht_room_ocup_rt_nutsii_4 "Turismo_Portugal_ht_Occupation_Room_Rate_NUTS_II_2024_April"
		label variable ht_room_ocup_rt_nutsii_5 "Turismo_Portugal_ht_Occupation_Room_Rate_NUTS_II_2024_May"
			label variable ht_room_ocup_rt_nutsii_6 "Turismo_Portugal_ht_Occupation_Room_Rate_NUTS_II_2024_June"
				label variable ht_room_ocup_rt_nutsii_7 "Turismo_Portugal_ht_Occupation_Room_Rate_NUTS_II_2024_July"
					label variable ht_room_ocup_rt_nutsii_8 "Turismo_Portugal_ht_Occupation_Room_Rate_NUTS_II_2024_August"
						label variable ht_room_ocup_rt_nutsii_9 "Turismo_Portugal_ht_Occupation_Room_Rate_NUTS_II_2024_September"
					label variable ht_room_ocup_rt_nutsii_10 "Turismo_Portugal_ht_Occupation_Room_Rate_NUTS_II_2024_October"
				label variable ht_room_ocup_rt_nutsii_11 "Turismo_Portugal_ht_Occupation_Room_Rate_NUTS_II_2024_November"
			label variable ht_room_ocup_rt_nutsii_12 "Turismo_Portugal_ht_Occupation_Room_Rate_NUTS_II_2024_December"
						label variable ht_room_ocup_rt_munic_1 "Turismo_Portugal_ht_Occupation_Room_Rate_Municipality_January"
					label variable ht_room_ocup_rt_munic_2 "Turismo_Portugal_ht_Occupation_Room_Rate_Municipality_February"
				label variable ht_room_ocup_rt_munic_3 "Turismo_Portugal_ht_Occupation_Room_Rate_Municipality_March"
			label variable ht_room_ocup_rt_munic_4 "Turismo_Portugal_ht_Occupation_Room_Rate_Municipality_April"
		label variable ht_room_ocup_rt_munic_5 "Turismo_Portugal_ht_Occupation_Room_Rate_Municipality_May"
			label variable ht_room_ocup_rt_munic_6 "Turismo_Portugal_ht_Occupation_Room_Rate_Municipality_June"
				label variable ht_room_ocup_rt_munic_7 "Turismo_Portugal_ht_Occupation_Room_Rate_Municipality_July"
					label variable ht_room_ocup_rt_munic_8 "Turismo_Portugal_ht_Occupation_Room_Rate_Municipality_August"
						label variable ht_room_ocup_rt_munic_9 "Turismo_Portugal_ht_Occupation_Room_Rate_Municipality_September"
					label variable ht_room_ocup_rt_munic_10 "Turismo_Portugal_ht_Occupation_Room_Rate_Municipality_October"
				label variable ht_room_ocup_rt_munic_11 "Turismo_Portugal_ht_Occupation_Room_Rate_Municipality_November"
			label variable ht_room_ocup_rt_munic_12 "Turismo_Portugal_ht_Occupation_Room_Rate_Municipality_December"
		label variable ht_closure_periods_d "Turismo_Portugal_ht_Closure_Periods_Dummy 1 if Yes; 0 if No"
			label variable pdt_overnight_stays_nutsiii_2024 "Pordata_ht_Overnight_Stays_NUTS_III_2024"
				label variable pdt_overnight_stays_muncic "Pordata_ht_Overnight_Stays_Municipality"
					label variable ht_room_ocup_rt_nutsii_y "Turismo_Portugal_ht_Room_Occupancy_Rate_NUTS_II_Year_2024"
						label variable ht_bed_ocup_rt_nutsii_y "Turismo_Portugal_ht_Bed_Occupancy_Rate_NUTS_II_2024"
					label variable ht_room_ocup_nutsiii "Turismo_Portugal_ht_Room_Occupancy_NUTS_III_2024"
				label variable ht_room_ocup_sea_nutsiii "Turismo_Portugal_ht_Room_Occupancy_Seasonality_NUTS_III_2024"
		label variable ht_room_ocup_rt_munic_y "Turismo_Portugal_ht_Room_Occupancy_Rate_Municipality_Year"
				label variable ht_room_ocup_munic "Turismo_Portugal_ht_Room_Occupancy_Municipality"
					label variable ht_room_ocup_sea_munic "Turismo_Portugal_ht_Room_Occupancy_Seasonality_Municipality"
						label variable ht_Meeting_Room_Capacity "Turismo_Portugal_ht_Meeting_Room_Capacity"
					label variable ht_stars_classification "Turismo_Portugal_ht_Stars_Classification"
				label variable ht_ln_age "Turismo_Portugal_ht_Natural_Logarithm_Age = ln(f_Year - ht_Opening_Year)"
			label variable ht_postal_code_2dig "Turismo_Portugal_ht_Postal_Code_2Dig = First 2 digits of the ht_Postal_Code_8dig"
		label variable ht_postal_code_4dig "Turismo_Portugal_ht_Postal_Code_4Dig = First 4 digits of the ht_Postal_Code_8dig"
			label variable ht_postal_code_6dig "Turismo_Portugal_ht_Postal_Code_6Dig = First 6 digits of the ht_Postal_Code_8dig"
				label variable ht_postal_code_8dig "Turismo_Portugal_ht_Postal_Code_8_Digits"
					label variable ht_nuts_2_oldcriteria "Wikipedia_NUTS_II_(2013_criteria)"
						label variable ht_nuts_2_c_oldcriteria "Wikipedia_NUTS_II_(2013_criteria)_ID"
					label variable ht_nuts_3_oldcriteria "Wikipedia_NUTS_III_(2013_criteria)"
				label variable ht_nuts_3_c_oldcriteria "Wikipedia_NUTS_III_(2013_criteria)_ID"
			label variable ht_nuts_2_newcriteriacode  "Wikipedia_NUTS_II_(code_nuts_ii_2024)"
		label variable ht_nuts_2_newcriteria "Turismo_Portugal_ht_NUTS_II_(2024_criteria)"
			label variable ht_nuts_3_newcriteriacode  "Wikipedia_NUTS_III_(code_nuts_iii_2024)"
				label variable ht_nuts_3_newcriteria "Turismo_Portugal_ht_NUTS_III_(2024_criteria)"
					label variable ht_ln_accomodation "Turismo_Portugal_ht_Natural_Logarithm_Number_of_Accomodation"
						label variable ht_ln_capacity "Turismo_Portugal_ht_Natural_Logarithm_Number_of_Capacity"
					label variable ht_ln_reducedmobility "Turismo_Portugal_ht_Natural_Logarithm_Number_of_Reduced_Mobility"
				label variable ht_ln_restaurants "Turismo_Portugal_ht_Natural_Logarithm_Number_of_Restaurants"
			label variable f_ln_numberemployees "ORBIS_f_Natural_Logarithm_Number_of_Employees"
		label variable ht_r_reducedmobility_totalaccomo "Turismo_Portugal_ht_Ratio(NumberofReducedMobility/TotalNumberofAccomodation)"
			label variable ht_r_reducedmobility_totalcapaci "Turismo_Portugal_ht_Ratio_(Number_of_Reduced_Mobility / Total_Capacity)"
				label variable ht_restaurants_c "Turismo_Portugal_ht_Number_of_Restaurants_ID"
					label variable ht_vlg_city_oth "Wikipedia_Village_City_Other; 1 if City; 0 if Village or Other"
						label variable ht_occupancy_rooms_nuts_3_newcri "Turismo_Portugal_ht_room_ocup_rt_nutsiii_y"
					label variable ht_occupancy_beds_nuts_3_newcrit "Turismo_Portugal_ht_bed_rt_nutsiii_newcriteria"
				label variable ht_occupancy_rooms_nuts_3_newcr0 "Turismo_Portugal_ht_Occupation_Room_Rate_NUTS_III_2024_January"
			label variable ht_occupancy_rooms_nuts_3_newcr1 "Turismo_Portugal_ht_Occupation_Room_Rate_NUTS_III_2024_February"
		label variable ht_occupancy_rooms_nuts_3_newcr2 "Turismo_Portugal_ht_Occupation_Room_Rate_NUTS_III_2024_March"
			label variable ht_occupancy_rooms_nuts_3_newcr3 "Turismo_Portugal_ht_Occupation_Room_Rate_NUTS_III_2024_April"
				label variable ht_occupancy_rooms_nuts_3_newcr4 "Turismo_Portugal_ht_Occupation_Room_Rate_NUTS_III_2024_May"
					label variable ht_occupancy_rooms_nuts_3_newcr5 "Turismo_Portugal_ht_Occupation_Room_Rate_NUTS_III_2024_June"
						label variable ht_occupancy_rooms_nuts_3_newcr6 "Turismo_Portugal_ht_Occupation_Room_Rate_NUTS_III_2024_July"
					label variable ht_occupancy_rooms_nuts_3_newcr7 "Turismo_Portugal_ht_Occupation_Room_Rate_NUTS_III_2024_August"
				label variable ht_occupancy_rooms_nuts_3_newcr8 "Turismo_Portugal_ht_Occupation_Room_Rate_NUTS_III_2024_September"
			label variable ht_occupancy_rooms_nuts_3_newcr9 "Turismo_Portugal_ht_Occupation_Room_Rate_NUTS_III_2024_October"
		label variable ht_occupancy_rooms_nuts_3_newc00 "Turismo_Portugal_ht_Occupation_Room_Rate_NUTS_III_2024_November"
			label variable ht_occupancy_rooms_nuts_3_newc01 "Turismo_Portugal_ht_Occupation_Room_Rate_NUTS_III_2024_December" 
				label variable ht_occupancy_rooms_nuts_3_newc02 "ht_room_ocup_rt_nutsiii_StdDev (based on Monthly averages for each year)"
					label variable ht_occupancy_rooms_nuts_3_newc03 "ht_room_ocup_rt_nutsiii_Variance (based on Monthly averages for each year)"
						label variable ht_ThirdMinEuclideanDist_bch "Turismo_Visit_Portugal_ht_Beach_3Minimum_Distance_km"
					label variable ht_room_ocup_sea_nutsii "Turismo_Portugal_ht_Room_Occupancy_Seasonality_NUTS_II_2024"
			label variable ht_room_ocup_sea_munic "Turismo_Portugal_ht_Room_Occupancy_Seasonality_Municipality"
						label variable ht_room_ocup_nutsii "Turismo_Portugal_ht_Room_Occupancy_NUTS_II_2024"
					
*/* For Change the Extra variables regarding the hotels */
		
					label variable ht_location_4"Turismo_Visit_Portugal_ht_Location_9Minimum_All_Distances_Average_km"
						label variable ht_location_5 "Turismo_Visit_Portugal_ht_Location_12Minimum_All_Distances_Average_km"
					label variable ht_secondmineuclideandistance "Turismo_Visit_Portugal_ht_All_2Minimum_Distance_km"
				label variable ht_thirdmineuclideandistance "Turismo_Visit_Portugal_ht_All_3Minimum_Distance_km"
			label variable ht_fourthmineuclideandistance "Turismo_Visit_Portugal_ht_All_4Minimum_Distance_km"
		label variable ht_fifthmineuclideandistance "Turismo_Visit_Portugal_ht_All_5Minimum_Distance_km"
			label variable ht_sixthmineuclideandistance "Turismo_Visit_Portugal_ht_All_6Minimum_Distance_km"
				label variable ht_seventhmineuclideandistance "Turismo_Visit_Portugal_ht_All_7Minimum_Distance_km"
					label variable ht_eighthmineuclideandistance "Turismo_Visit_Portugal_ht_All_8Minimum_Distance_km"
						label variable ht_ninethmineuclideandistance "Turismo_Visit_Portugal_ht_All_9Minimum_Distance_km"
					label variable ht_tenthmineuclideandistance "Turismo_Visit_Portugal_ht_All_10Minimum_Distance_km"
				label variable ht_eleventhmineuclideandistance "Turismo_Visit_Portugal_ht_All_11Minimum_Distance_km"
			label variable ht_twelfthmineuclideandistance "Turismo_Visit_Portugal_ht_All_12Minimum_Distance_km"
		label variable ht_postal_code "Turismo_Portugal_ht_Postal_Code"
					label variable ht_FourthMinEuclidDist_bch "Turismo_Visit_Portugal_ht_Beach_4Minimum_Distance_km"
						label variable ht_FifthMinEuclideanDist_bch "Turismo_Visit_Portugal_ht_Beach_5Minimum_Distance_km"		
					label variable ht_SixthMinEuclideanDist_bch "Turismo_Visit_Portugal_ht_Beach_6Minimum_Distance_km"			
		label variable ht_location_beach4 "Turismo_Visit_Portugal_ht_Location_9Minimum_Beach_Distances_Average_km"
			label variable ht_location_beach5 "Turismo_Visit_Portugal_ht_Location_12Minimum_Beach_Distances_Average_km"
				label variable ht_SecondMinEuclidDist_ctl "Turismo_Visit_Portugal_ht_Castle_2Minimum_Distance_km"
					label variable ht_ThirdMinEuclideanDist_ctl "Turismo_Visit_Portugal_ht_Castle_3Minimum_Distance_km"
				label variable ht_FourthMinEuclidDist_ctl "Turismo_Visit_Portugal_ht_Castle_4Minimum_Distance_km"
			label variable ht_FifthdMinEuclidDist_ctl "Turismo_Visit_Portugal_ht_Castle_5Minimum_Distance_km"
		label variable ht_SixthMinEuclidDist_ctl "Turismo_Visit_Portugal_ht_Castle_6Minimum_Distance_km"
			label variable  ht_EleventhMinEuclidDist_ctl "Turismo_Visit_Portugal_ht_Castle_11Minimum_Distance_km"
				label variable ht_location_castle4"Turismo_Visit_Portugal_ht_Location_9Minimum_Castle_Distances_Average_km"
				label variable ht_SecondthMinEuclidDist_chc "Turismo_Visit_Portugal_ht_Church_2Minimum_Distance_km"
			label variable ht_ThirdMinEuclidDist_chc "Turismo_Visit_Portugal_ht_Church_3Minimum_Distance_km"
		label variable ht_FourthMinEuclidDist_chc "Turismo_Visit_Portugal_ht_Church_4Minimum_Distance_km"
			label variable ht_FifthMinEuclidDist_chc "Turismo_Visit_Portugal_ht_Church_5Minimum_Distance_km"
				label variable ht_SixthMinEuclidDist_chc "Turismo_Visit_Portugal_ht_Church_6Minimum_Distance_km"
					label variable ht_SeventhMinEuclidDist_chc "Turismo_Visit_Portugal_ht_Church_7Minimum_Distance_km" 
				label variable ht_twelfththmineuclideandistance "Turismo_Visit_Portugal_ht_Church_12Minimum_Distance_km"
			label variable ht_EleventhMinEuclidDist_chc "Turismo_Visit_Portugal_ht_Church_11Minimum_Distance_km"
		label variable ht_location_church4 "Turismo_Visit_Portugal_ht_Location_12Minimum_Church_Distances_Average_km"
			label variable pdt_overnight_stays_nutsii_2024 "Pordata_ht_Overnight_Stays_NUTS_II_2024"
				label variable ht_room_ocup_rt_nutsiii_1 "Turismo_Portugal_ht_Occupation_Room_Rate_NUTS_III_2024_January"
					label variable ht_room_ocup_rt_nutsiii_2 "Turismo_Portugal_ht_Occupation_Room_Rate_NUTS_III_2024_February"
						label variable ht_room_ocup_rt_nutsiii_3 "Turismo_Portugal_ht_Occupation_Room_Rate_NUTS_III_2024_March"
					label variable ht_room_ocup_rt_nutsiii_4 "Turismo_Portugal_ht_Occupation_Room_Rate_NUTS_III_2024_April"
				label variable ht_room_ocup_rt_nutsiii_5 "Turismo_Portugal_ht_Occupation_Room_Rate_NUTS_III_2024_May"
			label variable ht_room_ocup_rt_nutsiii_6 "Turismo_Portugal_ht_Occupation_Room_Rate_NUTS_III_2024_June"
		label variable ht_room_ocup_rt_nutsiii_7 "Turismo_Portugal_ht_Occupation_Room_Rate_NUTS_III_2024_July"
			label variable ht_room_ocup_rt_nutsiii_8 "Turismo_Portugal_ht_Occupation_Room_Rate_NUTS_III_2024_August"
				label variable ht_room_ocup_rt_nutsiii_9 "Turismo_Portugal_ht_Occupation_Room_Rate_NUTS_III_2024_September"
					label variable ht_room_ocup_rt_nutsiii_10 "Turismo_Portugal_ht_Occupation_Room_Rate_NUTS_III_2024_October"
						label variable ht_room_ocup_rt_nutsiii_11 "Turismo_Portugal_ht_Occupation_Room_Rate_NUTS_III_2024_November"
					label variable ht_room_ocup_rt_nutsiii_12 "Turismo_Portugal_ht_Occupation_Room_Rate_NUTS_III_2024_December"
		
				*/* For We See Variabes Types & Names */
				describe
		*/* Observing from all variables, Observations, Mean, Standard Deviation, Minimun, and Maximum Variables using Winsorized */ 
			sum
	*/* Variables Number of Missing Values & Frequency of Missing Values Winsorized */					  
		mdesc

*//////////////////////////////////////////////////////
*/* Creation of Descriptive Analysis per Years Table*/
*////////////////////////////////////////////////////

local varlist f_fiscal_number f_year f_zscore f_zscore_w f_ln_total_assets_w f_liquidity_r f_debt_r f_efficiency_r f_profit_r f_growth_r f_cashflow_operatingrevenue_v2 ht_quality_stars f_roe f_roe_w f_roe_v1 f_roe_v2 f_roa f_roa_w f_roaa f_roaa_w f_roa_v1 f_roa_v2 f_total_assets f_ln_total_assets f_total_assets_w f_sector_roaa_volatility f_roaa_volatility_w f_capital f_capital_w f_equitycapital_total_assets f_equitycapital_total_assets_w f_solvency_v1 f_solvency_v2 f_solvency_v3 f_net_income_d ht_profit_loss_for_the_period_n0    f_tax_identification_number_tin f_noncurrentassets f_intangibleassets f_tangiblefixedassets f_currentassets f_stock f_debtors f_othercurrentassets f_ofwhichcashandcashequivalent f_shareholders_funds f_other_shareholders_funds f_non_current_liabilities f_long_term_debt f_other_non_current_liabilities f_current_liabilities f_loans_short_term_debt f_creditors f_other_current_liabilities f_ttl_shareholders_funds_and_lia f_roe_using_pft_loss_before_tax f_roce_using_pft_loss_before_ta f_roa_using_pft_loss_before_tax f_roe_using_net_income f_roce_using_net_income f_roa_using_net_income f_profit_margin f_gross_margin f_ebitda_margin f_cash_flow_operating_revenue f_sales f_costs_of_goods_sold f_gross_profit f_other_operating_expense_income f_ebit f_financial_profit_loss f_financial_revenue f_financial_expenses f_profit_l_after_tax_pat f_operating_revenue_turnover2 f_p_l_before_tax f_p_l_for_period_net_income f_current_ratio f_roce_using_p_l_before_tax f_solvency_ratio_asset_based f_number_of_employees f_ln_numberemployees ht_total_operating_revenue_turno ht_total_operating_revenue_turn0 ht_total_operating_revenue_turn1 ht_total_operating_revenue_turn2 ht_marketshare_postalcode8dig ht_marketshare_postalcode6dig ht_marketshare_postalcode2dig ht_marketshare_postalcode8dig_sq ht_marketshare_postalcode6dig_sq ht_marketshare_postalcode4dig_sq ht_marketshare_postalcode2dig_sq ht_sum_marketshare_square_postal ht_sum_marketshare_square_posta0 ht_sum_marketshare_square_posta1 ht_sum_marketshare_square_posta2 ht_ln_sum_marketshare_square_pos ht_ln_sum_marketshare_square_po0 ht_ln_sum_marketshare_square_po1 ht_ln_sum_marketshare_square_po2 ht_occupancy_rooms_nuts_3_newcri ht_occupancy_beds_nuts_3_newcrit ht_occupancy_rooms_nuts_3_newcr0 ht_occupancy_rooms_nuts_3_newcr1 ht_occupancy_rooms_nuts_3_newcr2 ht_occupancy_rooms_nuts_3_newcr3 ht_occupancy_rooms_nuts_3_newcr4 ht_occupancy_rooms_nuts_3_newcr5 ht_occupancy_rooms_nuts_3_newcr6 ht_occupancy_rooms_nuts_3_newcr7 ht_occupancy_rooms_nuts_3_newcr8 ht_occupancy_rooms_nuts_3_newcr9 ht_occupancy_rooms_nuts_3_newc00 ht_occupancy_rooms_nuts_3_newc01 ht_occupancy_rooms_nuts_3_newc02 ht_occupancy_rooms_nuts_3_newc03 f_tot_oper_rev_turn_nutsii f_tot_oper_rev_turn_nutsiii f_tot_oper_rev_turn_munic f_mkt_share_nutsii f_mkt_share_nutsiii f_mkt_share_munic f_mkt_share_pwr_nutsii f_mkt_share_pwr_nutsiii f_mkt_share_pwr_munic f_mkt_share_conc_nutsii f_mkt_share_conc_nutsiii f_mkt_share_conc_munic pdt_overnight_stays_nutsii_2024 pdt_overnight_stays_muncic ht_room_ocup_rt_nutsii_y ht_room_ocup_nutsii ht_room_ocup_sea_nutsii ht_room_ocup_rt_nutsii_1 ht_room_ocup_rt_nutsii_2 ht_room_ocup_rt_nutsii_3 ht_room_ocup_rt_nutsii_4 ht_room_ocup_rt_nutsii_5 ht_room_ocup_rt_nutsii_6 ht_room_ocup_rt_nutsii_7 ht_room_ocup_rt_nutsii_8 ht_room_ocup_rt_nutsii_9 ht_room_ocup_rt_nutsii_10 ht_room_ocup_rt_nutsii_11 ht_room_ocup_rt_nutsii_12 ht_bed_ocup_rt_nutsii_y ht_room_ocup_nutsiii ht_room_ocup_sea_nutsiii ht_room_ocup_rt_munic_y  ht_room_ocup_munic ht_room_ocup_sea_munic ht_room_ocup_rt_munic_1 ht_room_ocup_rt_munic_2 ht_room_ocup_rt_munic_3 ht_room_ocup_rt_munic_4 ht_room_ocup_rt_munic_5 ht_room_ocup_rt_munic_6 ht_room_ocup_rt_munic_7 ht_room_ocup_rt_munic_8 ht_room_ocup_rt_munic_9 ht_room_ocup_rt_munic_10 ht_room_ocup_rt_munic_11 ht_room_ocup_rt_munic_12 f_ebit_margin f_total_debt f_total_debt_fin f_long_term_debt_f f_short_term_debt_f f_traded_credit_financing f_assets_tangibility f_operating_profit_margin f_net_profit_margin f_total_debt_capital_ratio f_liquid_assets ht_room_ocup_sea_nutsii ht_room_ocup_sea_nutsiii ht_room_ocup_sea_munic
												 
* Loop over each variable to display Summary Statistics by Year
foreach var of local varlist {
    display "Descriptive Statistics by Year for `var'"
    tabstat `var', by(f_year) stat(n mean median sd min max p5 p95)
    display ""
	}
	
*/////////////////////////////
*/* Regressions and Outputs*/
*///////////////////////////

*------------------------------------------------------------
* STEP XX: Data Sample
*------------------------------------------------------------

*Hotel definition
*Hotel establishment that occupies a building or just an independent part of it, its facilities constituting a homogeneous whole, with complete and contiguous floors, its own and direct access for the exclusive use of its users, to whom temporary accommodation services and other ancillary or support services are provided, with or without meals provided, for a fee. These establishments have at least 10 accommodation units. (INE)		



*------------------------------------------------------------
* STEP XX: Panel Data
*------------------------------------------------------------
*Panel Data
* Each hotel ID (based on a specific name and specific location) that may belong or not a Hotel_Chain (with more than one hotel)
* The xt series of commands provides tools for analyzing panel data (also known as longitudinal data or, in some disciplines, as cross-sectional time series when there is an explicit time component).
* The xtset command sets the panel variable and the time variable; see [XT] xtset. Most xt commands require that the panel variable be specified, and some require that the time variable also be specified. Once you xtset your data, you need not do it again. The xtset information is stored with your data.
* Each Hotel (ht_ID), some hotels belonging to the same group/chain of hotels (with same financial info, i.e. consolidated, but with different locations and characteristics)
* Each Year (between 2009 to 2015)
xtset ht_id f_year

*------------------------------------------------------------
* STEP XX: Correlations
*------------------------------------------------------------
corr f_zscore_w ht_location_1 ht_location_2 ht_location_3  ht_location_5 ht_location_beach1 ht_location_beach2 ht_location_beach3 ht_location_beach5 ht_location_castle1 ht_location_castle2 ht_location_castle3 ht_location_castle5 ht_location_church1 ht_location_church2 ht_location_church3 ht_location_church5
corr f_zscore_w f_ln_total_assets_w f_roe_v1 f_cashflow_operatingrevenue_v2 f_equitycapital_total_assets_w
corr f_zscore_w f_ln_total_assets_w f_roe_v1 f_cashflow_operatingrevenue_v2 f_equitycapital_total_assets_w f_liquidity_r f_debt_r f_efficiency_r f_profit_r f_growth_r


*------------------------------------------------------------
* STEP XX: Descriptives
*------------------------------------------------------------
sum ht_location_1 ht_location_2 ht_location_3 ht_location_5 ht_location_beach1 ht_location_beach2 ht_location_beach3 ht_location_5 ht_location_castle1 ht_location_castle2 ht_location_castle3 ht_location_castle5 ht_location_church1 ht_location_church2 ht_location_church3 ht_location_church5
sum f_zscore_w f_ln_total_assets_w f_roe_v1 f_cashflow_operatingrevenue_v2 f_equitycapital_total_assets_w

tabulate f_year, summarize (f_zscore_w) means standard


tabulate f_year, summarize (ht_sum_marketshare_square_posta2) means standard

*------------------------------------------------------------
* STEP XX: Research Question
*------------------------------------------------------------
*Is it possible to reduce credit risk by minimising distances from a hotel location to a combination of different types of touristic points? 

*------------------------------------------------------------
* STEP XX: Z-score and different measurements of distance
*------------------------------------------------------------
**Dynamic panel-data estimation, one-step system GMM
**Arellano-Bond test
***In dynamic panel data analysis, the Arellano-Bond test is a post-estimation diagnostic tool used to assess the validity of the Generalized Method of Moments (GMM) estimator, particularly the one-step system GMM approach. 
***The GMM estimator assumes that the idiosyncratic errors are uncorrelated across time periods.
***The test examines whether the idiosyncratic errors (residuals) exhibit serial correlation, a violation of GMM's underlying assumptions. Specifically, it tests for the presence of first-order (AR(1)) and second-order (AR(2)) autocorrelation in the first-differenced errors.
***A significant p-value for the AR(1) test (typically less than 0.05) indicates that the first-differenced errors are not serially correlated, implying the validity of the GMM estimator. 
***A significant p-value for the AR(2) test suggests that the error terms may be second-order autocorrelated, potentially indicating model misspecification or other issues.



*gmm(L.( Number_of_employees ht_Profit_r ht_Liquidity_r Year))
*iv(Number_of_employees ht_Profit_r ht_Liquidity_r ht_Events_Meetings ht_Quality_Stars Year, *equation(level))
xtabond2 f_zscore_w L.f_zscore_w ht_location_1 f_ln_total_assets_w f_roe_v1 f_cashflow_operatingrevenue_v2 f_equitycapital_total_assets_w ht_events_meetings ht_ln_sum_marketshare_square_po0 ht_occupancy_rooms_nuts_3_newc03 ht_occupancy_rooms_nuts_3_newcri ht_quality_stars ht_marketshare_postalcode2dig i.f_year, gmm(L.( f_number_of_employees f_profit_r f_liquidity_r f_year)) iv(f_number_of_employees f_profit_r f_liquidity_r ht_events_meetings ht_quality_stars f_year, equation(level))
xtabond2 f_zscore_w L.f_zscore_w ht_location_2 f_ln_total_assets_w f_roe_v1 f_cashflow_operatingrevenue_v2 f_equitycapital_total_assets_w ht_events_meetings ht_ln_sum_marketshare_square_po0 ht_occupancy_rooms_nuts_3_newc03 ht_occupancy_rooms_nuts_3_newcri ht_quality_stars ht_marketshare_postalcode2dig i.f_year, gmm(L.( f_number_of_employees f_profit_r f_liquidity_r f_year)) iv(f_number_of_employees f_profit_r f_liquidity_r ht_events_meetings ht_quality_stars f_year, equation(level))
xtabond2 f_zscore_w L.f_zscore_w ht_location_3 f_ln_total_assets_w f_roe_v1 f_cashflow_operatingrevenue_v2 f_equitycapital_total_assets_w ht_events_meetings ht_ln_sum_marketshare_square_po0 ht_occupancy_rooms_nuts_3_newc03 ht_occupancy_rooms_nuts_3_newcri ht_quality_stars ht_marketshare_postalcode2dig i.f_year, gmm(L.( f_number_of_employees f_profit_r f_liquidity_r f_year)) iv(f_number_of_employees f_profit_r f_liquidity_r ht_events_meetings ht_quality_stars f_year, equation(level))
xtabond2 f_zscore_w L.f_zscore_w ht_location_4 f_ln_total_assets_w f_roe_v1 f_cashflow_operatingrevenue_v2 f_equitycapital_total_assets_w ht_events_meetings ht_ln_sum_marketshare_square_po0 ht_occupancy_rooms_nuts_3_newc03 ht_occupancy_rooms_nuts_3_newcri ht_quality_stars ht_marketshare_postalcode2dig i.f_year, gmm(L.( f_number_of_employees f_profit_r f_liquidity_r f_year)) iv(f_number_of_employees f_profit_r f_liquidity_r ht_events_meetings ht_quality_stars f_year, equation(level))
				

**TABLE XX - Determinants of credit risk in the Portuguese hotel sector by different definitions of touristic points
*ht_location_1; ht_location_2; ht_location_3; ht_location_4

*Results:
**The results confirm that the credit risk can be reduced by minimising distances from a hotel location to a combination of different types of touristic points.
**The results show that for each km increase in the distance from touristic points, a hotel reduces its Z-Score (i.e. increases the respective level of risk).
**This study also studied different possible definitions of touristic points by creating different groups based on the number of locations (i.e. the closest touristic point to a hotel; the closest three, six and 12 touristic points to a hotel).
** For different definitions of touristic points, the results confirm the signal (negative), significance (at 0.01% and 0.05%) and coefficient levels (between 0.011 and 0.019).
**The main effect of "ht_location_3" is the change in "f_zscore_w" for a one-unit increase in "ht_location_3", holding other variables constant. For each km increase in the distance from touristic points, a hotel reduces its Z-Score (i.e. increases the respective level of risk). The coefficient of -0.011, which means that f_zscore_w decreases by 0.011 units for each km of hotel distance from touristic points, holding other variables constant. This effect is significant at the 0% level. 
**The same main effect is seen for both "ht_location_2" (f_zscore_w decreases by 0.013 units) and "ht_location_1" (f_zscore_w decreases by 0.019 units) for each km of hotel distance from touristic points, holding other variables constant. These effects are significant at the 0.05% level.

*i.Year interpretation (see below for xtreg)


*gmm(L.( Number_of_employees ht_Profit_r ht_Liquidity_r Year))
*iv(Number_of_employees ht_Profit_r ht_Liquidity_r ht_Events_Meetings ht_Quality_Stars Year, *equation(level)) orthogonal
*iv(Number_of_employees ht_Profit_r ht_Liquidity_r ht_Events_Meetings ht_Quality_Stars Year, *equation(level)) robust orthogonal


*The Wald model test 
*Wald statistic test the null hypothesis that all the coefficients except the constant are zero. Here the null hypothesis is that all the coefficients are zero, because there is no constant in the model. 
***The Wald test has a significant p-value. The null hypothesis is soundly rejected.

*The F-Test
**Code "Small" requests small-sample corrections to the covariance matrix estimate, resulting in t-test instead of z-test statistics for the coefficients and an F test instead of a Wald Ï‡2 test for overall fit.
***The F-test test has a significant p-value. The null hypothesis is soundly rejected.

*Arellano-Bond test: AR(1) and AR(2)
*** The AR(1) test has a significant p-value.
***A significant p-value for the AR(1) test (typically less than 0.05) indicates that the first-differenced errors are not serially correlated, implying the validity of the GMM estimator. 
***The AR(2) test does not have a significant p-value. It presents no evidence of model misspecification.
***A significant p-value for the AR(2) test suggests that the error terms may be second-order autocorrelated, potentially indicating model misspecification or other issues.

*The Sargan/Hansen tests
**The Sargan/Hansen tests are crucial for ensuring that the instruments used in the GMM model are valid. Invalid instruments can lead to biased and inconsistent estimates. 
**If the Sargan or Hansen test rejects the null hypothesis (i.e., not significant p-value, the instruments are valid), it indicates that the model might be misspecified or that the instruments are correlated with the error term. This suggests a need to revisit the model, instruments, or assumptions.
**The Sargan test
***The Sargan test is a diagnostic tool to assess the validity of the instruments used in the model. It tests whether the instruments are uncorrelated with the error term, ensuring they are truly exogenous. While the Sargan test can be performed after a one-step system GMM estimation, it's generally recommended to use the Hansen test, which is a more robust test of over-identification restrictions, particularly when heteroskedasticity or serial correlation in the error term are present, as noted by Stata.
**The Hansen test
***The Hansen test is more robust to heteroskedasticity and serial correlation. It's also used to test the validity of instruments in a system GMM framework, where instruments for both the levels and differences equations are included.
***Hansen test >0.05 = insignificant of overidentification restrictions of the excluded instruments, which means the adequacy and validity of the included instruments. But, if you applied one-step, you shall check Sargen test instead. two-step is used when there is heteroscedasticity problem

*------------------------------------------------------------
* STEP XX: Research Question
*------------------------------------------------------------
*Is the geographic region of a hotel location to respective touristic points a determinant of credit risk? 
 
*Z-score and Location_X and i.ht_NUTS_2_c_oldcriteria

**TABLE XX - Determinants of credit risk in the Portuguese hotel sector across different geographic regions
*ht_location_1; ht_location_2; ht_location_3; ht_location_4
xtabond2 f_zscore_w L.f_zscore_w ht_location_1 f_ln_total_assets_w f_roe_v1 f_cashflow_operatingrevenue_v2 f_equitycapital_total_assets_w ht_events_meetings ht_ln_sum_marketshare_square_po0 ht_occupancy_rooms_nuts_3_newc03 ht_occupancy_rooms_nuts_3_newcri ht_quality_stars ht_marketshare_postalcode2dig i.f_year i.ht_nuts_2_c_oldcriteria, gmm(L.( f_number_of_employees f_profit_r f_liquidity_r f_year)) iv(f_number_of_employees f_profit_r f_liquidity_r ht_events_meetings ht_quality_stars f_year, equation(level)) 
xtabond2 f_zscore_w L.f_zscore_w ht_location_2 f_ln_total_assets_w f_roe_v1 f_cashflow_operatingrevenue_v2 f_equitycapital_total_assets_w ht_events_meetings ht_ln_sum_marketshare_square_po0 ht_occupancy_rooms_nuts_3_newc03 ht_occupancy_rooms_nuts_3_newcri ht_quality_stars ht_marketshare_postalcode2dig i.f_year i.ht_nuts_2_c_oldcriteria, gmm(L.( f_number_of_employees f_profit_r f_liquidity_r f_year)) iv(f_number_of_employees f_profit_r f_liquidity_r ht_events_meetings ht_quality_stars f_year, equation(level))
xtabond2 f_zscore_w L.f_zscore_w ht_location_3 f_ln_total_assets_w f_roe_v1 f_cashflow_operatingrevenue_v2 f_equitycapital_total_assets_w ht_events_meetings ht_ln_sum_marketshare_square_po0 ht_occupancy_rooms_nuts_3_newc03 ht_occupancy_rooms_nuts_3_newcri ht_quality_stars ht_marketshare_postalcode2dig i.f_year i.ht_nuts_2_c_oldcriteria, gmm(L.( f_number_of_employees f_profit_r f_liquidity_r f_year)) iv(f_number_of_employees f_profit_r f_liquidity_r ht_events_meetings ht_quality_stars f_year, equation(level))
xtabond2 f_zscore_w L.f_zscore_w ht_location_4 f_ln_total_assets_w f_roe_v1 f_cashflow_operatingrevenue_v2 f_equitycapital_total_assets_w ht_events_meetings ht_ln_sum_marketshare_square_po0 ht_occupancy_rooms_nuts_3_newc03 ht_occupancy_rooms_nuts_3_newcri ht_quality_stars ht_marketshare_postalcode2dig i.f_year i.ht_nuts_2_c_oldcriteria, gmm(L.( f_number_of_employees f_profit_r f_liquidity_r f_year)) iv(f_number_of_employees f_profit_r f_liquidity_r ht_events_meetings ht_quality_stars f_year, equation(level))


**TABLE XX - Determinants of credit risk in the Portuguese hotel sector by different types of touristic points and across different geographic regions
*Results:
**The results confirm that the geographic regions influence the relationship between credit risk and distances from a hotel location to a combination of different types of touristic points.
**For different definitions of touristic points, the results confirm the signal (negative), significance at 0.01% and coefficient levels (between 0.046 and 0.012, when increasing the number of closest touristic points to a hotel).
**The main effect of "ht_location_1" is the change in "f_zscore_w" for a one-unit increase in "ht_location_1", holding other variables constant. For each km increase in the distance from touristic points, a hotel reduces its Z-Score (i.e. increases the respective level of risk). The coefficient of -0.046, which means that f_zscore_w decreases by 0.046 units for each km of hotel distance from the closest touristic point, holding other variables constant. This effect is significant at the 0% level. 

xtabond2 f_zscore_w L.f_zscore_w ht_location_beach4 f_ln_total_assets_w f_roe_v1 f_cashflow_operatingrevenue_v2 f_equitycapital_total_assets_w ht_events_meetings ht_ln_sum_marketshare_square_po0 ht_occupancy_rooms_nuts_3_newc03 ht_occupancy_rooms_nuts_3_newcri ht_quality_stars ht_marketshare_postalcode2dig i.f_year i.ht_nuts_2_c_oldcriteria, gmm(L.( f_number_of_employees f_profit_r f_liquidity_r f_year)) iv(f_number_of_employees f_profit_r f_liquidity_r ht_events_meetings ht_quality_stars f_year, equation(level))

xtabond2 f_zscore_w L.f_zscore_w ht_location_castle1 f_ln_total_assets_w f_roe_v1 f_cashflow_operatingrevenue_v2 f_equitycapital_total_assets_w ht_events_meetings ht_ln_sum_marketshare_square_po0 ht_occupancy_rooms_nuts_3_newc03 ht_occupancy_rooms_nuts_3_newcri ht_quality_stars ht_marketshare_postalcode2dig i.f_year i.ht_nuts_2_c_oldcriteria, gmm(L.( f_number_of_employees f_profit_r f_liquidity_r f_year)) iv(f_number_of_employees f_profit_r f_liquidity_r ht_events_meetings ht_quality_stars f_year, equation(level))

xtabond2 f_zscore_w L.f_zscore_w ht_location_castle2 f_ln_total_assets_w f_roe_v1 f_cashflow_operatingrevenue_v2 f_equitycapital_total_assets_w ht_events_meetings ht_ln_sum_marketshare_square_po0 ht_occupancy_rooms_nuts_3_newc03 ht_occupancy_rooms_nuts_3_newcri ht_quality_stars ht_marketshare_postalcode2dig i.f_year i.ht_nuts_2_c_oldcriteria, gmm(L.( f_number_of_employees f_profit_r f_liquidity_r f_year)) iv(f_number_of_employees f_profit_r f_liquidity_r ht_events_meetings ht_quality_stars f_year, equation(level))

xtabond2 f_zscore_w L.f_zscore_w ht_location_church1 f_ln_total_assets_w f_roe_v1 f_cashflow_operatingrevenue_v2 f_equitycapital_total_assets_w ht_events_meetings ht_ln_sum_marketshare_square_po0 ht_occupancy_rooms_nuts_3_newc03 ht_occupancy_rooms_nuts_3_newcri ht_quality_stars ht_marketshare_postalcode2dig i.f_year i.ht_nuts_2_c_oldcriteria, gmm(L.( f_number_of_employees f_profit_r f_liquidity_r f_year)) iv(f_number_of_employees f_profit_r f_liquidity_r ht_events_meetings ht_quality_stars f_year, equation(level))

xtabond2 f_zscore_w L.f_zscore_w ht_location_church2 f_ln_total_assets_w f_roe_v1 f_cashflow_operatingrevenue_v2 f_equitycapital_total_assets_w ht_events_meetings ht_ln_sum_marketshare_square_po0 ht_occupancy_rooms_nuts_3_newc03 ht_occupancy_rooms_nuts_3_newcri ht_quality_stars ht_marketshare_postalcode2dig i.f_year i.ht_nuts_2_c_oldcriteria, gmm(L.( f_number_of_employees f_profit_r f_liquidity_r f_year)) iv(f_number_of_employees f_profit_r f_liquidity_r ht_events_meetings ht_quality_stars f_year, equation(level))

*Results:
**Regarding different types of touristic points (e.g. beaches, castles, churches), the results confirm that the geographic regions influence the relationship between credit risk and distances from a hotel location.
**For different types of touristic points, the results confirm the signal (negative), significance (at 0.01% or 0.05%) and coefficient levels (between 0.006 and 0.028).
***The main effect of "ht_location_church1" is the change in "f_zscore_w" for a one-unit increase in "ht_location_church1", holding other variables constant. For each km increase in the distance from the closest church, a hotel reduces its Z-Score (i.e. increases the respective level of risk). The coefficient of -0.028, which means that f_zscore_w decreases by 0.028 units for each km of hotel distance from the closest church, holding other variables constant. This effect is significant at the 0% level.
***Similar results are shown for the closest three group of churches (ht_location_church2), closest twelve group of beaches (ht_location_beach4), closest castle and closest three group of castles.

*Interaction effect of ht_location_X and ht_NUTS_2_c_oldcriteria
xtabond2 f_zscore_w L.f_zscore_w c.ht_location_beach4#i.ht_nuts_2_c_oldcriteria f_ln_total_assets_w f_roe_v1 f_cashflow_operatingrevenue_v2 f_equitycapital_total_assets_w ht_events_meetings ht_ln_sum_marketshare_square_po0 ht_occupancy_rooms_nuts_3_newc03 ht_occupancy_rooms_nuts_3_newcri ht_quality_stars ht_marketshare_postalcode2dig i.f_year, gmm(L.( f_number_of_employees f_profit_r f_liquidity_r f_year)) iv(f_number_of_employees f_profit_r f_liquidity_r ht_events_meetings ht_quality_stars f_year, equation(level))

xtabond2 f_zscore_w L.f_zscore_w c.ht_location_castle2#i.ht_nuts_2_c_oldcriteria f_ln_total_assets_w f_roe_v1 f_cashflow_operatingrevenue_v2 f_equitycapital_total_assets_w ht_events_meetings ht_ln_sum_marketshare_square_po0 ht_occupancy_rooms_nuts_3_newc03 ht_occupancy_rooms_nuts_3_newcri ht_quality_stars ht_marketshare_postalcode2dig i.f_year, gmm(L.( f_number_of_employees f_profit_r f_liquidity_r f_year)) iv(f_number_of_employees f_profit_r f_liquidity_r ht_events_meetings ht_quality_stars f_year, equation(level))

xtabond2 f_zscore_w L.f_zscore_w c.ht_location_church1#i.ht_nuts_2_c_oldcriteria f_ln_total_assets_w f_roe_v1 f_cashflow_operatingrevenue_v2 f_equitycapital_total_assets_w ht_events_meetings ht_ln_sum_marketshare_square_po0 ht_occupancy_rooms_nuts_3_newc03 ht_occupancy_rooms_nuts_3_newcri ht_quality_stars ht_marketshare_postalcode2dig i.f_year, gmm(L.( f_number_of_employees f_profit_r f_liquidity_r f_year)) iv(f_number_of_employees f_profit_r f_liquidity_r ht_events_meetings ht_quality_stars f_year, equation(level))

xtabond2 f_zscore_w L.f_zscore_w c.ht_location_church2#i.ht_nuts_2_c_oldcriteria f_ln_total_assets_w f_roe_v1 f_cashflow_operatingrevenue_v2 f_equitycapital_total_assets_w ht_events_meetings ht_ln_sum_marketshare_square_po0 ht_occupancy_rooms_nuts_3_newc03 ht_occupancy_rooms_nuts_3_newcri ht_quality_stars ht_marketshare_postalcode2dig i.f_year, gmm(L.( f_number_of_employees f_profit_r f_liquidity_r f_year)) iv(f_number_of_employees f_profit_r f_liquidity_r ht_events_meetings ht_quality_stars f_year, equation(level))

*Results:
**Regarding the interactions between different types of touristic points (e.g. beaches, castles, churches) and geographic regions, the results confirm that the geographic regions influence the relationship between credit risk and respective touristic distances from a hotel location.
**Regarding distances from the closest group of six beaches, the interaction effect of "ht_location_beach4" and "ht_NUTS_2_c_oldcriteria" is the difference in the effect of "ht_location_beach4" on z-Score between each region, holding other variables constant. 
**As expected, the coefficient of the region with higher number of beaches (category 5: "Algarve") shows a negative signal (the lower the distances from the beaches, the higher the credit risk score) and is significant at 0.02%. 
**In addition, regarding Castles, the coefficients of the region

*------------------------------------------------------------
* STEP XX: Research Question
*------------------------------------------------------------
*What other characteristics of the hotels may contribute to explain the importance of the distance from a hotel location to respective touristic points as a determinant of credit risk? 
*c.ht_location_X#i.ht_classification_status_c 
** ht_classification_status_c: 1 â€" confirmed by audits; 2 â€" attributed still in project; 3 â€" still for reconversion
**TABLE XX - Interaction of hotels' classification status against each group of touristic points and each type of touristic point

xtabond2 f_zscore_w L.f_zscore_w c.ht_location_1#i.ht_classification_status_c f_ln_total_assets_w f_roe_v1 f_cashflow_operatingrevenue_v2 f_equitycapital_total_assets_w ht_events_meetings ht_ln_sum_marketshare_square_po0 ht_occupancy_rooms_nuts_3_newc03 ht_occupancy_rooms_nuts_3_newcri ht_quality_stars ht_marketshare_postalcode2dig i.f_year i.ht_nuts_2_c_oldcriteria, gmm(L.( f_number_of_employees f_profit_r f_liquidity_r f_year)) iv(f_number_of_employees f_profit_r f_liquidity_r ht_events_meetings ht_quality_stars f_year, equation(level))

xtabond2 f_zscore_w L.f_zscore_w c.ht_location_2#i.ht_classification_status_c f_ln_total_assets_w f_roe_v1 f_cashflow_operatingrevenue_v2 f_equitycapital_total_assets_w ht_events_meetings ht_ln_sum_marketshare_square_po0 ht_occupancy_rooms_nuts_3_newc03 ht_occupancy_rooms_nuts_3_newcri ht_quality_stars ht_marketshare_postalcode2dig i.f_year i.ht_nuts_2_c_oldcriteria, gmm(L.( f_number_of_employees f_profit_r f_liquidity_r f_year)) iv(f_number_of_employees f_profit_r f_liquidity_r ht_events_meetings ht_quality_stars f_year, equation(level))

xtabond2 f_zscore_w L.f_zscore_w c.ht_location_3#i.ht_classification_status_c f_ln_total_assets_w f_roe_v1 f_cashflow_operatingrevenue_v2 f_equitycapital_total_assets_w ht_events_meetings ht_ln_sum_marketshare_square_po0 ht_occupancy_rooms_nuts_3_newc03 ht_occupancy_rooms_nuts_3_newcri ht_quality_stars ht_marketshare_postalcode2dig i.f_year i.ht_nuts_2_c_oldcriteria, gmm(L.( f_number_of_employees f_profit_r f_liquidity_r f_year)) iv(f_number_of_employees f_profit_r f_liquidity_r ht_events_meetings ht_quality_stars f_year, equation(level))

xtabond2 f_zscore_w L.f_zscore_w c.ht_location_4#i.ht_classification_status_c f_ln_total_assets_w f_roe_v1 f_cashflow_operatingrevenue_v2 f_equitycapital_total_assets_w ht_events_meetings ht_ln_sum_marketshare_square_po0 ht_occupancy_rooms_nuts_3_newc03 ht_occupancy_rooms_nuts_3_newcri ht_quality_stars ht_marketshare_postalcode2dig i.f_year i.ht_nuts_2_c_oldcriteria, gmm(L.( f_number_of_employees f_profit_r f_liquidity_r f_year)) iv(f_number_of_employees f_profit_r f_liquidity_r ht_events_meetings ht_quality_stars f_year, equation(level))

**Interactions
***When there is a statistically significant interaction between a categorical (e.g. ht_classification_status_c) and continuous variable (e.g. ht_location_X), the rate of increase (or the slope) for each group within the categorical variable is different.
*Results:
**Regarding the interactions between the distance of hotels locations to a combination of closest touristic points and hotels' classification status, the results confirm that the rate of increase (or the slope) for each group within the categorical variable is different.
**The interaction effect of ht_location_1 and ht_classification_status_c shows that the negative coefficient (slope) is higher for both categories 2 â€" attributed still in project; 3 â€" still for reconversion. These effects are significant at the 5% and 1% level, respectively. The same relationship can be seen in the interaction effect of ht_location_2 and t_classification_status_c (significant at the 10% and 5% level). A similar relationship is shown in the interaction effect of ht_location_4 and t_classification_status_c, with a negative coefficient (slope) higher for both categories 2 â€" attributed still in project; 1 â€" confirmed by audits (instead of category 3, this time). These effects are significant at the 5% and 1% level, respectively. Therefore, the relationship between credit risk and the distance of hotels' location to the closest group of touristic points show to be more important for hotels in which the classification status is still in project (riskier and not certain in comparison with category 1- confirmed by audits, in particular for locations with lower number of closest touristic points).


*c.ht_location_beachX#i.ht_classification_status_c
xtabond2 f_zscore_w L.f_zscore_w c.ht_location_beach1#i.ht_classification_status_c f_ln_total_assets_w f_roe_v1 f_cashflow_operatingrevenue_v2 f_equitycapital_total_assets_w ht_events_meetings ht_ln_sum_marketshare_square_po0 ht_occupancy_rooms_nuts_3_newc03 ht_occupancy_rooms_nuts_3_newcri ht_quality_stars ht_marketshare_postalcode2dig i.f_year i.ht_nuts_2_c_oldcriteria, gmm(L.( f_number_of_employees f_profit_r f_liquidity_r f_year)) iv(f_number_of_employees f_profit_r f_liquidity_r ht_events_meetings ht_quality_stars f_year, equation(level))

xtabond2 f_zscore_w L.f_zscore_w c.ht_location_beach2#i.ht_classification_status_c f_ln_total_assets_w f_roe_v1 f_cashflow_operatingrevenue_v2 f_equitycapital_total_assets_w ht_events_meetings ht_ln_sum_marketshare_square_po0 ht_occupancy_rooms_nuts_3_newc03 ht_occupancy_rooms_nuts_3_newcri ht_quality_stars ht_marketshare_postalcode2dig i.f_year i.ht_nuts_2_c_oldcriteria, gmm(L.( f_number_of_employees f_profit_r f_liquidity_r f_year)) iv(f_number_of_employees f_profit_r f_liquidity_r ht_events_meetings ht_quality_stars f_year, equation(level))

xtabond2 f_zscore_w L.f_zscore_w c.ht_location_beach3#i.ht_classification_status_c f_ln_total_assets_w f_roe_v1 f_cashflow_operatingrevenue_v2 f_equitycapital_total_assets_w ht_events_meetings ht_ln_sum_marketshare_square_po0 ht_occupancy_rooms_nuts_3_newc03 ht_occupancy_rooms_nuts_3_newcri ht_quality_stars ht_marketshare_postalcode2dig i.f_year i.ht_nuts_2_c_oldcriteria, gmm(L.( f_number_of_employees f_profit_r f_liquidity_r f_year)) iv(f_number_of_employees f_profit_r f_liquidity_r ht_events_meetings ht_quality_stars f_year, equation(level))

xtabond2 f_zscore_w L.f_zscore_w c.ht_location_beach4#i.ht_classification_status_c f_ln_total_assets_w f_roe_v1 f_cashflow_operatingrevenue_v2 f_equitycapital_total_assets_w ht_events_meetings ht_ln_sum_marketshare_square_po0 ht_occupancy_rooms_nuts_3_newc03 ht_occupancy_rooms_nuts_3_newcri ht_quality_stars ht_marketshare_postalcode2dig i.f_year i.ht_nuts_2_c_oldcriteria, gmm(L.( f_number_of_employees f_profit_r f_liquidity_r f_year)) iv(f_number_of_employees f_profit_r f_liquidity_r ht_events_meetings ht_quality_stars f_year, equation(level))

*Results:
**Regarding the interactions between different types of touristic points (e.g. beaches, castles, churches) and hotels' classification status, the results confirm once again that the rate of increase (or the slope) for each group within the categorical variable is different.
**Regarding beaches, as a specific type of touristic points, the interaction effects of ht_location_beach1, ht_location_beach2 and ht_location_beach3 against ht_classification_status_c show that the negative coefficients (slopes) are higher for category 3 â€" still for reconversion. These effects are significant at the 1%, 5% and 10% level, respectively. On the other hand, the interaction effect of ht_location_beach4 against ht_classification_status_c shows that the negative coefficients (slopes) are higher (but small) for both categories 1- confirmed by audits and 2 â€" attributed still in project. These effects are significant but only at the 10% level. Again, the relationship between credit risk and the distance of hotels' location to the closest beaches show to be more important for hotels in which the classification status is still for reconversion (a riskier status and not so certain in comparison with categories 1- confirmed by audits and 2â€" attributed still in project, in particular for locations with lower number of closest beaches).

*c.ht_location_castle1#i.ht_classification_status_c
xtabond2 f_zscore_w L.f_zscore_w c.ht_location_castle1#i.ht_classification_status_c f_ln_total_assets_w f_roe_v1 f_cashflow_operatingrevenue_v2 f_equitycapital_total_assets_w ht_events_meetings ht_ln_sum_marketshare_square_po0 ht_occupancy_rooms_nuts_3_newc03 ht_occupancy_rooms_nuts_3_newcri ht_quality_stars ht_marketshare_postalcode2dig i.f_year i.ht_nuts_2_c_oldcriteria, gmm(L.( f_number_of_employees f_profit_r f_liquidity_r f_year)) iv(f_number_of_employees f_profit_r f_liquidity_r ht_events_meetings ht_quality_stars f_year, equation(level))

xtabond2 f_zscore_w L.f_zscore_w c.ht_location_castle2#i.ht_classification_status_c f_ln_total_assets_w f_roe_v1 f_cashflow_operatingrevenue_v2 f_equitycapital_total_assets_w ht_events_meetings ht_ln_sum_marketshare_square_po0 ht_occupancy_rooms_nuts_3_newc03 ht_occupancy_rooms_nuts_3_newcri ht_quality_stars ht_marketshare_postalcode2dig i.f_year i.ht_nuts_2_c_oldcriteria, gmm(L.( f_number_of_employees f_profit_r f_liquidity_r f_year)) iv(f_number_of_employees f_profit_r f_liquidity_r ht_events_meetings ht_quality_stars f_year, equation(level))
*Results:
**Regarding castles, as a specific type of touristic points, the interaction effects of both ht_location_castle1 and ht_location_castle2 against ht_classification_status_c show that the negative coefficients (slopes) are higher for category 2 â€" attributed still in project. These effects are significant at the 5%.

*c.ht_location_church1#i.ht_classification_status_c
xtabond2 f_zscore_w L.f_zscore_w c.ht_location_church2#i.ht_classification_status_c f_ln_total_assets_w f_roe_v1 f_cashflow_operatingrevenue_v2 f_equitycapital_total_assets_w ht_events_meetings ht_ln_sum_marketshare_square_po0 ht_occupancy_rooms_nuts_3_newc03 ht_occupancy_rooms_nuts_3_newcri ht_quality_stars ht_marketshare_postalcode2dig i.f_year i.ht_nuts_2_c_oldcriteria, gmm(L.( f_number_of_employees f_profit_r f_liquidity_r f_year)) iv(f_number_of_employees f_profit_r f_liquidity_r ht_events_meetings ht_quality_stars f_year, equation(level))

xtabond2 f_zscore_w L.f_zscore_w c.ht_location_church3#i.ht_classification_status_c f_ln_total_assets_w f_roe_v1 f_cashflow_operatingrevenue_v2 f_equitycapital_total_assets_w ht_events_meetings ht_ln_sum_marketshare_square_po0 ht_occupancy_rooms_nuts_3_newc03 ht_occupancy_rooms_nuts_3_newcri ht_quality_stars ht_marketshare_postalcode2dig i.f_year i.ht_nuts_2_c_oldcriteria, gmm(L.( f_number_of_employees f_profit_r f_liquidity_r f_year)) iv(f_number_of_employees f_profit_r f_liquidity_r ht_events_meetings ht_quality_stars f_year, equation(level))

xtabond2 f_zscore_w L.f_zscore_w c.ht_location_church4#i.ht_classification_status_c f_ln_total_assets_w f_roe_v1 f_cashflow_operatingrevenue_v2 f_equitycapital_total_assets_w ht_events_meetings ht_ln_sum_marketshare_square_po0 ht_occupancy_rooms_nuts_3_newc03 ht_occupancy_rooms_nuts_3_newcri ht_quality_stars ht_marketshare_postalcode2dig i.f_year i.ht_nuts_2_c_oldcriteria, gmm(L.( f_number_of_employees f_profit_r f_liquidity_r f_year)) iv(f_number_of_employees f_profit_r f_liquidity_r ht_events_meetings ht_quality_stars f_year, equation(level))
*Results:

**Regarding churches, as a specific type of touristic points, the interaction effects with all possible definitions of locations (i.e. ht_location_church1 to ht_location_church4) against ht_classification_status_c show that the negative coefficients (slopes) are higher for category 2 â€" attributed still in project. These effects are significant at the 5%.
**In sum, the relationship between credit risk and the distance of hotels' location to the closest different types of touristic locations (beaches, castles and churches) show to be more important for hotels in which the classification status are both 2- attributed still in project and 3- still for reconversion (riskier status and not so certain in comparison with category 1- confirmed by audits).


*c.ht_location_X#i.ht_Golf_d
** ht_Golf_d: 1 â€" yes, hotel with Golf facilities; 0 â€" no, hotel without Golf facilities
**TABLE XX - Interaction of hotels' Golf facilities against each group of touristic points and each type of touristic point

xtabond2 f_zscore_w L.f_zscore_w c.ht_location_1#i.ht_golf_d f_ln_total_assets_w f_roe_v1 f_cashflow_operatingrevenue_v2 f_equitycapital_total_assets_w ht_events_meetings ht_ln_sum_marketshare_square_po0 ht_occupancy_rooms_nuts_3_newc03 ht_occupancy_rooms_nuts_3_newcri ht_quality_stars ht_marketshare_postalcode2dig i.f_year i.ht_nuts_2_c_oldcriteria, gmm(L.( f_number_of_employees f_profit_r f_liquidity_r f_year)) iv(f_number_of_employees f_profit_r f_liquidity_r ht_events_meetings ht_quality_stars f_year, equation(level))
*(â€¦)

xtabond2 f_zscore_w L.f_zscore_w c.ht_location_4#i.ht_golf_d f_ln_total_assets_w f_roe_v1 f_cashflow_operatingrevenue_v2 f_equitycapital_total_assets_w ht_events_meetings ht_ln_sum_marketshare_square_po0 ht_occupancy_rooms_nuts_3_newc03 ht_occupancy_rooms_nuts_3_newcri ht_quality_stars ht_marketshare_postalcode2dig i.f_year i.ht_nuts_2_c_oldcriteria, gmm(L.( f_number_of_employees f_profit_r f_liquidity_r f_year)) iv(f_number_of_employees f_profit_r f_liquidity_r ht_events_meetings ht_quality_stars f_year, equation(level))
*Results:
**Regarding the interactions between the distance of hotels locations to a combination of closest touristic points and hotels' Golf facilities, the results confirm that the rate of increase (or the slope) for each group within the categorical variable is different.
**The interaction effect between the distance of hotels locations to a combination of closest touristic points and hotels' Golf facilities show that the negative coefficients (slopes between 0.013 and 0.047) are only significant for hotels without Golf facilities, increasing the importance for lower number of combinations of closest touristic points. These effects are significant at 1% level.
*c.ht_location_castleX#i.ht_Golf_d
xtabond2 f_zscore_w L.f_zscore_w c.ht_location_castle1#i.ht_golf_d f_ln_total_assets_w f_roe_v1 f_cashflow_operatingrevenue_v2 f_equitycapital_total_assets_w ht_events_meetings ht_ln_sum_marketshare_square_po0 ht_occupancy_rooms_nuts_3_newc03 ht_occupancy_rooms_nuts_3_newcri ht_quality_stars ht_marketshare_postalcode2dig i.f_year i.ht_nuts_2_c_oldcriteria, gmm(L.( f_number_of_employees f_profit_r f_liquidity_r f_year)) iv(f_number_of_employees f_profit_r f_liquidity_r ht_events_meetings ht_quality_stars f_year, equation(level))

xtabond2 f_zscore_w L.f_zscore_w c.ht_location_castle2#i.ht_golf_d f_ln_total_assets_w f_roe_v1 f_cashflow_operatingrevenue_v2 f_equitycapital_total_assets_w ht_events_meetings ht_ln_sum_marketshare_square_po0 ht_occupancy_rooms_nuts_3_newc03 ht_occupancy_rooms_nuts_3_newcri ht_quality_stars ht_marketshare_postalcode2dig i.f_year i.ht_nuts_2_c_oldcriteria, gmm(L.( f_number_of_employees f_profit_r f_liquidity_r f_year)) iv(f_number_of_employees f_profit_r f_liquidity_r ht_events_meetings ht_quality_stars f_year, equation(level))
*Results:
**Regarding castles, as a specific type of touristic points, the interaction effects with both ht_location_castle1 and ht_location_castle2 against ht_Golf_d show that the negative coefficients (0.019 and 0.015, respectively) are only significant for hotels without Golf facilities, increasing the importance for lower number of closest castles. These effects are significant at 1% level and 5%, respectively.

*c.ht_location_churchX#i.ht_Golf_d
xtabond2 f_zscore_w L.f_zscore_w c.ht_location_church1#i.ht_golf_d f_ln_total_assets_w f_roe_v1 f_cashflow_operatingrevenue_v2 f_equitycapital_total_assets_w ht_events_meetings ht_ln_sum_marketshare_square_po0 ht_occupancy_rooms_nuts_3_newc03 ht_occupancy_rooms_nuts_3_newcri ht_quality_stars ht_marketshare_postalcode2dig i.f_year i.ht_nuts_2_c_oldcriteria, gmm(L.( f_number_of_employees f_profit_r f_liquidity_r f_year)) iv(f_number_of_employees f_profit_r f_liquidity_r ht_events_meetings ht_quality_stars f_year, equation(level))
*(â€¦)

xtabond2 f_zscore_w L.f_zscore_w c.ht_location_church4#i.ht_golf_d f_ln_total_assets_w f_roe_v1 f_cashflow_operatingrevenue_v2 f_equitycapital_total_assets_w ht_events_meetings ht_ln_sum_marketshare_square_po0 ht_occupancy_rooms_nuts_3_newc03 ht_occupancy_rooms_nuts_3_newcri ht_quality_stars ht_marketshare_postalcode2dig i.f_year i.ht_nuts_2_c_oldcriteria, gmm(L.( f_number_of_employees f_profit_r f_liquidity_r f_year)) iv(f_number_of_employees f_profit_r f_liquidity_r ht_events_meetings ht_quality_stars f_year, equation(level))
**Regarding churches, as a specific type of touristic points, the interaction effects with all possible definitions of locations (i.e. ht_location_church1 to ht_location_church4) against ht_Golf_d show that the negative coefficients (slopes decreasing from 0.106 to 0.048, respectively) are higher for hotels with Golf facilities. These effects are significant at the 5%.
*c.ht_location_X#i.ht_Restaurants_c

xtabond2 f_zscore_w L.f_zscore_w c.ht_location_1#i.ht_restaurants_c f_ln_total_assets_w f_roe_v1 f_cashflow_operatingrevenue_v2 f_equitycapital_total_assets_w ht_events_meetings ht_ln_sum_marketshare_square_po0 ht_occupancy_rooms_nuts_3_newc03 ht_occupancy_rooms_nuts_3_newcri ht_quality_stars ht_marketshare_postalcode2dig i.f_year i.ht_nuts_2_c_oldcriteria, gmm(L.( f_number_of_employees f_profit_r f_liquidity_r f_year)) iv(f_number_of_employees f_profit_r f_liquidity_r ht_events_meetings ht_quality_stars f_year, equation(level))

xtabond2 f_zscore_w L.f_zscore_w c.ht_location_2#i.ht_restaurants_c f_ln_total_assets_w f_roe_v1 f_cashflow_operatingrevenue_v2 f_equitycapital_total_assets_w ht_events_meetings ht_ln_sum_marketshare_square_po0 ht_occupancy_rooms_nuts_3_newc03 ht_occupancy_rooms_nuts_3_newcri ht_quality_stars ht_marketshare_postalcode2dig i.f_year i.ht_nuts_2_c_oldcriteria, gmm(L.( f_number_of_employees f_profit_r f_liquidity_r f_year)) iv(f_number_of_employees f_profit_r f_liquidity_r ht_events_meetings ht_quality_stars f_year, equation(level))

xtabond2 f_zscore_w L.f_zscore_w c.ht_location_3#i.ht_restaurants_c f_ln_total_assets_w f_roe_v1 f_cashflow_operatingrevenue_v2 f_equitycapital_total_assets_w ht_events_meetings ht_ln_sum_marketshare_square_po0 ht_occupancy_rooms_nuts_3_newc03 ht_occupancy_rooms_nuts_3_newcri ht_quality_stars ht_marketshare_postalcode2dig i.f_year i.ht_nuts_2_c_oldcriteria, gmm(L.( f_number_of_employees f_profit_r f_liquidity_r f_year)) iv(f_number_of_employees f_profit_r f_liquidity_r ht_events_meetings ht_quality_stars f_year, equation(level))
*Results:


*c.ht_location_beachX#i.ht_Restaurants_c
xtabond2 f_zscore_w L.f_zscore_w c.ht_location_beach1#i.ht_restaurants_c f_ln_total_assets_w f_roe_v1 f_cashflow_operatingrevenue_v2 f_equitycapital_total_assets_w ht_events_meetings ht_ln_sum_marketshare_square_po0 ht_occupancy_rooms_nuts_3_newc03 ht_occupancy_rooms_nuts_3_newcri ht_quality_stars ht_marketshare_postalcode2dig i.f_year i.ht_nuts_2_c_oldcriteria, gmm(L.( f_number_of_employees f_profit_r f_liquidity_r f_year)) iv(f_number_of_employees f_profit_r f_liquidity_r ht_events_meetings ht_quality_stars f_year, equation(level))

xtabond2 f_zscore_w L.f_zscore_w c.ht_location_beach2#i.ht_restaurants_c f_ln_total_assets_w f_roe_v1 f_cashflow_operatingrevenue_v2 f_equitycapital_total_assets_w ht_events_meetings ht_ln_sum_marketshare_square_po0 ht_occupancy_rooms_nuts_3_newc03 ht_occupancy_rooms_nuts_3_newcri ht_quality_stars ht_marketshare_postalcode2dig i.f_year i.ht_nuts_2_c_oldcriteria, gmm(L.( f_number_of_employees f_profit_r f_liquidity_r f_year)) iv(f_number_of_employees f_profit_r f_liquidity_r ht_events_meetings ht_quality_stars f_year, equation(level))

xtabond2 f_zscore_w L.f_zscore_w c.ht_location_beach3#i.ht_restaurants_c f_ln_total_assets_w f_roe_v1 f_cashflow_operatingrevenue_v2 f_equitycapital_total_assets_w ht_events_meetings ht_ln_sum_marketshare_square_po0 ht_occupancy_rooms_nuts_3_newc03 ht_occupancy_rooms_nuts_3_newcri ht_quality_stars ht_marketshare_postalcode2dig i.f_year i.ht_nuts_2_c_oldcriteria, gmm(L.( f_number_of_employees f_profit_r f_liquidity_r f_year)) iv(f_number_of_employees f_profit_r f_liquidity_r ht_events_meetings ht_quality_stars f_year, equation(level))
*Results:

*c.ht_location_churchX#i.ht_Restaurants_c
xtabond2 f_zscore_w L.f_zscore_w c.ht_location_church1#i.ht_restaurants_c f_ln_total_assets_w f_roe_v1 f_cashflow_operatingrevenue_v2 f_equitycapital_total_assets_w ht_events_meetings ht_ln_sum_marketshare_square_po0 ht_occupancy_rooms_nuts_3_newc03 ht_occupancy_rooms_nuts_3_newcri ht_quality_stars ht_marketshare_postalcode2dig i.f_year i.ht_nuts_2_c_oldcriteria, gmm(L.( f_number_of_employees f_profit_r f_liquidity_r f_year)) iv(f_number_of_employees f_profit_r f_liquidity_r ht_events_meetings ht_quality_stars f_year, equation(level))
*Results:





xtabond2 f_zscore_w L.f_zscore_w c.ht_location_4#i.ht_classified_heritage_c f_ln_total_assets_w f_roe_v1 f_cashflow_operatingrevenue_v2 f_equitycapital_total_assets_w ht_events_meetings ht_ln_sum_marketshare_square_po0 ht_occupancy_rooms_nuts_3_newc03 ht_occupancy_rooms_nuts_3_newcri ht_quality_stars ht_marketshare_postalcode2dig i.f_year i.ht_nuts_2_c_oldcriteria, gmm(L.( f_number_of_employees f_profit_r f_liquidity_r f_year)) iv(f_number_of_employees f_profit_r f_liquidity_r ht_events_meetings ht_quality_stars f_year, equation(level))

xtabond2 f_zscore_w L.f_zscore_w c.ht_location_beach4#i.ht_classified_heritage_c f_ln_total_assets_w f_roe_v1 f_cashflow_operatingrevenue_v2 f_equitycapital_total_assets_w ht_events_meetings ht_ln_sum_marketshare_square_po0 ht_occupancy_rooms_nuts_3_newc03 ht_occupancy_rooms_nuts_3_newcri ht_quality_stars ht_marketshare_postalcode2dig i.f_year i.ht_nuts_2_c_oldcriteria, gmm(L.( f_number_of_employees f_profit_r f_liquidity_r f_year)) iv(f_number_of_employees f_profit_r f_liquidity_r ht_events_meetings ht_quality_stars f_year, equation(level))


*Other interactions
*c.ht_location_church1#c.ht_ln_age
xtabond2 f_zscore_w L.f_zscore_w c.ht_location_church1#c.ht_ln_age f_ln_total_assets_w f_roe_v1 f_cashflow_operatingrevenue_v2 f_equitycapital_total_assets_w ht_events_meetings ht_ln_sum_marketshare_square_po0 ht_occupancy_rooms_nuts_3_newc03 ht_occupancy_rooms_nuts_3_newcri ht_quality_stars ht_marketshare_postalcode2dig i.f_year i.ht_nuts_2_c_oldcriteria, gmm(L.( f_number_of_employees f_profit_r f_liquidity_r f_year)) iv(f_number_of_employees f_profit_r f_liquidity_r ht_events_meetings ht_quality_stars f_year, equation(level))

*c.ht_location_church1#i.ht_Outdoor_Pools_d
xtabond2 f_zscore_w L.f_zscore_w c.ht_location_church1#i.ht_outdoor_pools_d f_ln_total_assets_w f_roe_v1 f_cashflow_operatingrevenue_v2 f_equitycapital_total_assets_w ht_events_meetings ht_ln_sum_marketshare_square_po0 ht_occupancy_rooms_nuts_3_newc03 ht_occupancy_rooms_nuts_3_newcri ht_quality_stars ht_marketshare_postalcode2dig i.f_year i.ht_nuts_2_c_oldcriteria, gmm(L.( f_number_of_employees f_profit_r f_liquidity_r f_year)) iv(f_number_of_employees f_profit_r f_liquidity_r ht_events_meetings ht_quality_stars f_year, equation(level))

*c.ht_location_beach4#i.ht_Outdoor_Pools_d
xtabond2 f_zscore_w L.f_zscore_w c.ht_location_beach4#i.ht_outdoor_pools_d f_ln_total_assets_w f_roe_v1 f_cashflow_operatingrevenue_v2 f_equitycapital_total_assets_w ht_events_meetings ht_ln_sum_marketshare_square_po0 ht_occupancy_rooms_nuts_3_newc03 ht_occupancy_rooms_nuts_3_newcri ht_quality_stars ht_marketshare_postalcode2dig i.f_year i.ht_nuts_2_c_oldcriteria, gmm(L.( f_number_of_employees f_profit_r f_liquidity_r f_year)) iv(f_number_of_employees f_profit_r f_liquidity_r ht_events_meetings ht_quality_stars f_year, equation(level))

*c.ht_location_beachX#i.ht_Tennis_d
xtabond2 f_zscore_w L.f_zscore_w c.ht_location_beach1#i.ht_tennis_d f_ln_total_assets_w f_roe_v1 f_cashflow_operatingrevenue_v2 f_equitycapital_total_assets_w ht_events_meetings ht_ln_sum_marketshare_square_po0 ht_occupancy_rooms_nuts_3_newc03 ht_occupancy_rooms_nuts_3_newcri ht_quality_stars ht_marketshare_postalcode2dig i.f_year i.ht_nuts_2_c_oldcriteria, gmm(L.( f_number_of_employees f_profit_r f_liquidity_r f_year)) iv(f_number_of_employees f_profit_r f_liquidity_r ht_events_meetings ht_quality_stars f_year, equation(level))

xtabond2 f_zscore_w L.f_zscore_w c.ht_location_beach2#i.ht_tennis_d f_ln_total_assets_w f_roe_v1 f_cashflow_operatingrevenue_v2 f_equitycapital_total_assets_w ht_events_meetings ht_ln_sum_marketshare_square_po0 ht_occupancy_rooms_nuts_3_newc03 ht_occupancy_rooms_nuts_3_newcri ht_quality_stars ht_marketshare_postalcode2dig i.f_year i.ht_nuts_2_c_oldcriteria, gmm(L.( f_number_of_employees f_profit_r f_liquidity_r f_year)) iv(f_number_of_employees f_profit_r f_liquidity_r ht_events_meetings ht_quality_stars f_year, equation(level))

xtabond2 f_zscore_w L.f_zscore_w c.ht_location_beach3#i.ht_tennis_d f_ln_total_assets_w f_roe_v1 f_cashflow_operatingrevenue_v2 f_equitycapital_total_assets_w ht_events_meetings ht_ln_sum_marketshare_square_po0 ht_occupancy_rooms_nuts_3_newc03 ht_occupancy_rooms_nuts_3_newcri ht_quality_stars ht_marketshare_postalcode2dig i.f_year i.ht_nuts_2_c_oldcriteria, gmm(L.( f_number_of_employees f_profit_r f_liquidity_r f_year)) iv(f_number_of_employees f_profit_r f_liquidity_r ht_events_meetings ht_quality_stars f_year, equation(level))

xtabond2 f_zscore_w L.f_zscore_w c.ht_location_beach4#i.ht_tennis_d f_ln_total_assets_w f_roe_v1 f_cashflow_operatingrevenue_v2 f_equitycapital_total_assets_w ht_events_meetings ht_ln_sum_marketshare_square_po0 ht_occupancy_rooms_nuts_3_newc03 ht_occupancy_rooms_nuts_3_newcri ht_quality_stars ht_marketshare_postalcode2dig i.f_year i.ht_nuts_2_c_oldcriteria, gmm(L.( f_number_of_employees f_profit_r f_liquidity_r f_year)) iv(f_number_of_employees f_profit_r f_liquidity_r ht_events_meetings ht_quality_stars f_year, equation(level))


*c.ht_location_4#i.ht_Hotel_Size_c
** Hotels classification based on its accommodation capacity per categories 1 - Microhotel (< 20 rooms); 2 - Small (21-50 rooms); 3 - Medium (51-80 rooms); 4 - Big (81-120 rooms); 5- Macrohotel (> 121 rooms).
xtabond2 f_zscore_w L.f_zscore_w c.ht_location_4#i.ht_hotel_size_c f_ln_total_assets_w f_roe_v1 f_cashflow_operatingrevenue_v2 f_equitycapital_total_assets_w ht_events_meetings ht_ln_sum_marketshare_square_po0 ht_occupancy_rooms_nuts_3_newc03 ht_occupancy_rooms_nuts_3_newcri ht_quality_stars ht_marketshare_postalcode2dig i.f_year i.ht_nuts_2_c_oldcriteria, gmm(L.( f_number_of_employees f_profit_r f_liquidity_r f_year)) iv(f_number_of_employees f_profit_r f_liquidity_r ht_events_meetings ht_quality_stars f_year, equation(level))

*c.ht_location_castle1#i.ht_Hotel_Size_c
xtabond2 f_zscore_w L.f_zscore_w c.ht_location_castle1#i.ht_hotel_size_c f_ln_total_assets_w f_roe_v1 f_cashflow_operatingrevenue_v2 f_equitycapital_total_assets_w ht_events_meetings ht_ln_sum_marketshare_square_po0 ht_occupancy_rooms_nuts_3_newc03 ht_occupancy_rooms_nuts_3_newcri ht_quality_stars ht_marketshare_postalcode2dig i.f_year i.ht_nuts_2_c_oldcriteria, gmm(L.( f_number_of_employees f_profit_r f_liquidity_r f_year)) iv(f_number_of_employees f_profit_r f_liquidity_r ht_events_meetings ht_quality_stars f_year, equation(level))





*------------------------------------------------------------
* STEP XX: Robustness Checks
* Z-score and different measurements of distance
*------------------------------------------------------------
* The robustness of the results is explored through static panel data models.
*Decision between Random effects vs Fixed Effects
*------------------------------------------------------------
* STEP XX: Hausman-test
*------------------------------------------------------------
*The Hausman-test tests whether the individual characteristics are correlated with the regressors (see Green, 2008, chapter 9). The null hypothesis is that they are not (random effects).
xtreg f_zscore_w ht_location_3 f_ln_total_assets_w f_roe_v1 f_cashflow_operatingrevenue_v2 f_equitycapital_total_assets_w, fe
estimates store fixed
xtreg f_zscore_w ht_location_3 f_ln_total_assets_w f_roe_v1 f_cashflow_operatingrevenue_v2 f_equitycapital_total_assets_w, re
estimates store random
hausman fixed random, sigmamore


*Random effects vs Fixed Effects
**An advantage of random effects is that you can include time invariant variables (i.e. gender). 
**In the fixed effects model these variables are absorbed by the intercept. The cost is the possibility of inconsistent estimators, of the assumption is inappropriate.

*------------------------------------------------------------
* STEP XX: Breusch and Pagan Lagrangian multiplier test for random effects
*------------------------------------------------------------
*Do we need random effects?
*The LM test helps you decide between a random effects regression and a simple OLS regression. The null hypothesis in the LM test is that variances across entities is equal to zero. This is, no significant difference across units (i.e. no panel effect). 
xtreg f_zscore_w ht_location_3 f_ln_total_assets_w f_roe_v1 f_cashflow_operatingrevenue_v2 f_equitycapital_total_assets_w, re robust
*The command in Stata is xttset0 type it right after running the random effects model.
xttest0
*Prob > chibar2 < 0.05, we fail to accept the null hypothesis and conclude that random effects are needed.
*The regressions contain hotels' location variable as the main variable of interest (time-invariant variable) and dummies (qualitative variables that are time-invariant variables). So, we use time-invariant random-effects GLS regressions as static panel data models.

*Random-effects GLS regression
xtreg f_zscore_w ht_location_3 f_ln_total_assets_w f_roe_v1 f_cashflow_operatingrevenue_v2 f_equitycapital_total_assets_w
* under -xtreg-, the robust/cluster option accommodates for both heteroskedasticity and/or serial correlation in the idiosyncratic error.
xtreg f_zscore_w ht_location_3 f_ln_total_assets_w f_roe_v1 f_cashflow_operatingrevenue_v2 f_equitycapital_total_assets_w, vce(robust)
		log close
		
		
*///////////////////////////////
*/* Regressions and Outputs 2*/
*/////////////////////////////		
		
corr f_zscore_w ht_location_1 ht_location_2 ht_location_3 ht_location_4 ht_location_5 ht_location_beach1 ht_location_beach2 ht_location_beach3 ht_location_beach4 ht_location_beach5 ht_location_castle1 ht_location_castle2 ht_location_castle3 ht_location_castle4 ht_location_castle5 ht_location_church1 ht_location_church2 ht_location_church3 ht_location_church4 ht_location_church5
corr f_zscore_w f_mkt_share_conc_nutsii f_mkt_share_conc_nutsiii  ht_room_ocup_sea_nutsii ht_room_ocup_sea_nutsiii ht_room_ocup_sea_munic ht_events_meetings f_ln_total_assets_w f_liquidity_r f_debt_r f_efficiency_r f_profit_r f_growth_r ht_room_ocup_nutsii ht_room_ocup_nutsiii ht_room_ocup_munic ht_quality_stars f_mkt_share_nutsii f_mkt_share_nutsiii f_mkt_share_munic

sum f_zscore_w ht_location_1 ht_location_2 ht_location_3 ht_location_4 ht_location_5 ht_location_beach1 ht_location_beach2 ht_location_beach3 ht_location_beach4 ht_location_beach5 ht_location_castle1 ht_location_castle2 ht_location_castle3 ht_location_castle4 ht_location_castle5 ht_location_church1 ht_location_church2 ht_location_church3 ht_location_church4 ht_location_church5
sum f_zscore_w f_mkt_share_conc_nutsii f_mkt_share_conc_nutsiii f_mkt_share_conc_munic ht_room_ocup_sea_nutsii ht_room_ocup_sea_nutsiii ht_room_ocup_sea_munic ht_events_meetings f_ln_total_assets_w f_liquidity_r f_debt_r f_efficiency_r f_profit_r f_growth_r ht_room_ocup_nutsii ht_room_ocup_nutsiii ht_room_ocup_munic ht_quality_stars f_mkt_share_nutsii f_mkt_share_nutsiii f_mkt_share_munic


** NUTS II
xtabond2 f_zscore_w L.f_zscore_w ht_location_5 f_mkt_share_conc_nutsii ht_room_ocup_sea_nutsii ht_events_meetings f_ln_total_assets_w f_liquidity_r f_debt_r f_efficiency_r f_profit_r f_growth_r ht_room_ocup_nutsii ht_quality_stars f_mkt_share_nutsii i.f_year, gmm(L.(f_liquidity_r f_efficiency_r f_year)) iv(f_liquidity_r f_efficiency_r ht_events_meetings ht_quality_stars f_year, equation(level))
xtabond2 f_zscore_w L.f_zscore_w ht_location_4 f_mkt_share_conc_nutsii ht_room_ocup_sea_nutsii ht_events_meetings f_ln_total_assets_w f_liquidity_r f_debt_r f_efficiency_r f_profit_r f_growth_r ht_room_ocup_nutsii ht_quality_stars f_mkt_share_nutsii i.f_year, gmm(L.(f_liquidity_r f_efficiency_r f_year)) iv(f_liquidity_r f_efficiency_r ht_events_meetings ht_quality_stars f_year, equation(level))
xtabond2 f_zscore_w L.f_zscore_w ht_location_3 f_mkt_share_conc_nutsii ht_room_ocup_sea_nutsii ht_events_meetings f_ln_total_assets_w f_liquidity_r f_debt_r f_efficiency_r f_profit_r f_growth_r ht_room_ocup_nutsii ht_quality_stars f_mkt_share_nutsii i.f_year, gmm(L.(f_liquidity_r f_efficiency_r f_year)) iv(f_liquidity_r f_efficiency_r ht_events_meetings ht_quality_stars f_year, equation(level))
xtabond2 f_zscore_w L.f_zscore_w ht_location_2 f_mkt_share_conc_nutsii ht_room_ocup_sea_nutsii ht_events_meetings f_ln_total_assets_w f_liquidity_r f_debt_r f_efficiency_r f_profit_r f_growth_r ht_room_ocup_nutsii ht_quality_stars f_mkt_share_nutsii i.f_year, gmm(L.(f_liquidity_r f_efficiency_r f_year)) iv(f_liquidity_r f_efficiency_r ht_events_meetings ht_quality_stars f_year, equation(level))
xtabond2 f_zscore_w L.f_zscore_w ht_location_1 f_mkt_share_conc_nutsii ht_room_ocup_sea_nutsii ht_events_meetings f_ln_total_assets_w f_liquidity_r f_debt_r f_efficiency_r f_profit_r f_growth_r ht_room_ocup_nutsii ht_quality_stars f_mkt_share_nutsii i.f_year, gmm(L.(f_liquidity_r f_efficiency_r f_year)) iv(f_liquidity_r f_efficiency_r ht_events_meetings ht_quality_stars f_year, equation(level))

* Castles
xtabond2 f_zscore_w L.f_zscore_w ht_location_castle5 f_mkt_share_conc_nutsii ht_room_ocup_sea_nutsii ht_events_meetings f_ln_total_assets_w f_liquidity_r f_debt_r f_efficiency_r f_profit_r f_growth_r ht_room_ocup_nutsii ht_quality_stars f_mkt_share_nutsii i.f_year, gmm(L.(f_liquidity_r f_efficiency_r f_year)) iv(f_liquidity_r f_efficiency_r ht_events_meetings ht_quality_stars f_year, equation(level))
xtabond2 f_zscore_w L.f_zscore_w ht_location_castle4 f_mkt_share_conc_nutsii ht_room_ocup_sea_nutsii ht_events_meetings f_ln_total_assets_w f_liquidity_r f_debt_r f_efficiency_r f_profit_r f_growth_r ht_room_ocup_nutsii ht_quality_stars f_mkt_share_nutsii i.f_year, gmm(L.(f_liquidity_r f_efficiency_r f_year)) iv(f_liquidity_r f_efficiency_r ht_events_meetings ht_quality_stars f_year, equation(level))
xtabond2 f_zscore_w L.f_zscore_w ht_location_castle3 f_mkt_share_conc_nutsii ht_room_ocup_sea_nutsii ht_events_meetings f_ln_total_assets_w f_liquidity_r f_debt_r f_efficiency_r f_profit_r f_growth_r ht_room_ocup_nutsii ht_quality_stars f_mkt_share_nutsii i.f_year, gmm(L.(f_liquidity_r f_efficiency_r f_year)) iv(f_liquidity_r f_efficiency_r ht_events_meetings ht_quality_stars f_year, equation(level))
xtabond2 f_zscore_w L.f_zscore_w ht_location_castle2 f_mkt_share_conc_nutsii ht_room_ocup_sea_nutsii ht_events_meetings f_ln_total_assets_w f_liquidity_r f_debt_r f_efficiency_r f_profit_r f_growth_r ht_room_ocup_nutsii ht_quality_stars f_mkt_share_nutsii i.f_year, gmm(L.(f_liquidity_r f_efficiency_r f_year)) iv(f_liquidity_r f_efficiency_r ht_events_meetings ht_quality_stars f_year, equation(level))
xtabond2 f_zscore_w L.f_zscore_w ht_location_castle1 f_mkt_share_conc_nutsii ht_room_ocup_sea_nutsii ht_events_meetings f_ln_total_assets_w f_liquidity_r f_debt_r f_efficiency_r f_profit_r f_growth_r ht_room_ocup_nutsii ht_quality_stars f_mkt_share_nutsii i.f_year, gmm(L.(f_liquidity_r f_efficiency_r f_year)) iv(f_liquidity_r f_efficiency_r ht_events_meetings ht_quality_stars f_year, equation(level))

* Beaches
xtabond2 f_zscore_w L.f_zscore_w ht_location_beach5 f_mkt_share_conc_nutsii ht_room_ocup_sea_nutsii ht_events_meetings f_ln_total_assets_w f_liquidity_r f_debt_r f_efficiency_r f_profit_r f_growth_r ht_room_ocup_nutsii ht_quality_stars f_mkt_share_nutsii i.f_year, gmm(L.(f_liquidity_r f_efficiency_r f_year)) iv(f_liquidity_r f_efficiency_r ht_events_meetings ht_quality_stars f_year, equation(level))
xtabond2 f_zscore_w L.f_zscore_w ht_location_beach4 f_mkt_share_conc_nutsii ht_room_ocup_sea_nutsii ht_events_meetings f_ln_total_assets_w f_liquidity_r f_debt_r f_efficiency_r f_profit_r f_growth_r ht_room_ocup_nutsii ht_quality_stars f_mkt_share_nutsii i.f_year, gmm(L.(f_liquidity_r f_efficiency_r f_year)) iv(f_liquidity_r f_efficiency_r ht_events_meetings ht_quality_stars f_year, equation(level))
xtabond2 f_zscore_w L.f_zscore_w ht_location_beach3 f_mkt_share_conc_nutsii ht_room_ocup_sea_nutsii ht_events_meetings f_ln_total_assets_w f_liquidity_r f_debt_r f_efficiency_r f_profit_r f_growth_r ht_room_ocup_nutsii ht_quality_stars f_mkt_share_nutsii i.f_year, gmm(L.(f_liquidity_r f_efficiency_r f_year)) iv(f_liquidity_r f_efficiency_r ht_events_meetings ht_quality_stars f_year, equation(level))
xtabond2 f_zscore_w L.f_zscore_w ht_location_beach2 f_mkt_share_conc_nutsii ht_room_ocup_sea_nutsii ht_events_meetings f_ln_total_assets_w f_liquidity_r f_debt_r f_efficiency_r f_profit_r f_growth_r ht_room_ocup_nutsii ht_quality_stars f_mkt_share_nutsii i.f_year, gmm(L.(f_liquidity_r f_efficiency_r f_year)) iv(f_liquidity_r f_efficiency_r ht_events_meetings ht_quality_stars f_year, equation(level))
xtabond2 f_zscore_w L.f_zscore_w ht_location_beach1 f_mkt_share_conc_nutsii ht_room_ocup_sea_nutsii ht_events_meetings f_ln_total_assets_w f_liquidity_r f_debt_r f_efficiency_r f_profit_r f_growth_r ht_room_ocup_nutsii ht_quality_stars f_mkt_share_nutsii i.f_year, gmm(L.(f_liquidity_r f_efficiency_r f_year)) iv(f_liquidity_r f_efficiency_r ht_events_meetings ht_quality_stars f_year, equation(level))

* Churches
xtabond2 f_zscore_w L.f_zscore_w ht_location_church5 f_mkt_share_conc_nutsii ht_room_ocup_sea_nutsii ht_events_meetings f_ln_total_assets_w f_liquidity_r f_debt_r f_efficiency_r f_profit_r f_growth_r ht_room_ocup_nutsii ht_quality_stars f_mkt_share_nutsii i.f_year, gmm(L.(f_liquidity_r f_efficiency_r f_year)) iv(f_liquidity_r f_efficiency_r ht_events_meetings ht_quality_stars f_year, equation(level))
xtabond2 f_zscore_w L.f_zscore_w ht_location_church4 f_mkt_share_conc_nutsii ht_room_ocup_sea_nutsii ht_events_meetings f_ln_total_assets_w f_liquidity_r f_debt_r f_efficiency_r f_profit_r f_growth_r ht_room_ocup_nutsii ht_quality_stars f_mkt_share_nutsii i.f_year, gmm(L.(f_liquidity_r f_efficiency_r f_year)) iv(f_liquidity_r f_efficiency_r ht_events_meetings ht_quality_stars f_year, equation(level))
xtabond2 f_zscore_w L.f_zscore_w ht_location_church3 f_mkt_share_conc_nutsii ht_room_ocup_sea_nutsii ht_events_meetings f_ln_total_assets_w f_liquidity_r f_debt_r f_efficiency_r f_profit_r f_growth_r ht_room_ocup_nutsii ht_quality_stars f_mkt_share_nutsii i.f_year, gmm(L.(f_liquidity_r f_efficiency_r f_year)) iv(f_liquidity_r f_efficiency_r ht_events_meetings ht_quality_stars f_year, equation(level))
xtabond2 f_zscore_w L.f_zscore_w ht_location_church2 f_mkt_share_conc_nutsii ht_room_ocup_sea_nutsii ht_events_meetings f_ln_total_assets_w f_liquidity_r f_debt_r f_efficiency_r f_profit_r f_growth_r ht_room_ocup_nutsii ht_quality_stars f_mkt_share_nutsii i.f_year, gmm(L.(f_liquidity_r f_efficiency_r f_year)) iv(f_liquidity_r f_efficiency_r ht_events_meetings ht_quality_stars f_year, equation(level))
xtabond2 f_zscore_w L.f_zscore_w ht_location_church1 f_mkt_share_conc_nutsii ht_room_ocup_sea_nutsii ht_events_meetings f_ln_total_assets_w f_liquidity_r f_debt_r f_efficiency_r f_profit_r f_growth_r ht_room_ocup_nutsii ht_quality_stars f_mkt_share_nutsii i.f_year, gmm(L.(f_liquidity_r f_efficiency_r f_year)) iv(f_liquidity_r f_efficiency_r ht_events_meetings ht_quality_stars f_year, equation(level))


** NUTS III
xtabond2 f_zscore_w L.f_zscore_w ht_location_5 f_mkt_share_conc_nutsiii ht_room_ocup_sea_nutsiii ht_events_meetings f_ln_total_assets_w f_liquidity_r f_debt_r f_efficiency_r f_profit_r f_growth_r ht_room_ocup_nutsiii ht_quality_stars f_mkt_share_nutsiii i.f_year, gmm(L.(f_liquidity_r f_efficiency_r f_year)) iv(f_liquidity_r f_efficiency_r ht_events_meetings ht_quality_stars f_year, equation(level))
xtabond2 f_zscore_w L.f_zscore_w ht_location_4 f_mkt_share_conc_nutsiii ht_room_ocup_sea_nutsiii ht_events_meetings f_ln_total_assets_w f_liquidity_r f_debt_r f_efficiency_r f_profit_r f_growth_r ht_room_ocup_nutsiii ht_quality_stars f_mkt_share_nutsiii i.f_year, gmm(L.(f_liquidity_r f_efficiency_r f_year)) iv(f_liquidity_r f_efficiency_r ht_events_meetings ht_quality_stars f_year, equation(level))
xtabond2 f_zscore_w L.f_zscore_w ht_location_3 f_mkt_share_conc_nutsiii ht_room_ocup_sea_nutsiii ht_events_meetings f_ln_total_assets_w f_liquidity_r f_debt_r f_efficiency_r f_profit_r f_growth_r ht_room_ocup_nutsiii ht_quality_stars f_mkt_share_nutsiii i.f_year, gmm(L.(f_liquidity_r f_efficiency_r f_year)) iv(f_liquidity_r f_efficiency_r ht_events_meetings ht_quality_stars f_year, equation(level))
xtabond2 f_zscore_w L.f_zscore_w ht_location_2 f_mkt_share_conc_nutsiii ht_room_ocup_sea_nutsiii ht_events_meetings f_ln_total_assets_w f_liquidity_r f_debt_r f_efficiency_r f_profit_r f_growth_r ht_room_ocup_nutsiii ht_quality_stars f_mkt_share_nutsiii i.f_year, gmm(L.(f_liquidity_r f_efficiency_r f_year)) iv(f_liquidity_r f_efficiency_r ht_events_meetings ht_quality_stars f_year, equation(level))
xtabond2 f_zscore_w L.f_zscore_w ht_location_1 f_mkt_share_conc_nutsiii ht_room_ocup_sea_nutsiii ht_events_meetings f_ln_total_assets_w f_liquidity_r f_debt_r f_efficiency_r f_profit_r f_growth_r ht_room_ocup_nutsiii ht_quality_stars f_mkt_share_nutsiii i.f_year, gmm(L.(f_liquidity_r f_efficiency_r f_year)) iv(f_liquidity_r f_efficiency_r ht_events_meetings ht_quality_stars f_year, equation(level))

* Castles
xtabond2 f_zscore_w L.f_zscore_w ht_location_castle5 f_mkt_share_conc_nutsiii ht_room_ocup_sea_nutsiii ht_events_meetings f_ln_total_assets_w f_liquidity_r f_debt_r f_efficiency_r f_profit_r f_growth_r ht_room_ocup_nutsiii ht_quality_stars f_mkt_share_nutsiii i.f_year, gmm(L.(f_liquidity_r f_efficiency_r f_year)) iv(f_liquidity_r f_efficiency_r ht_events_meetings ht_quality_stars f_year, equation(level))
xtabond2 f_zscore_w L.f_zscore_w ht_location_castle4 f_mkt_share_conc_nutsiii ht_room_ocup_sea_nutsiii ht_events_meetings f_ln_total_assets_w f_liquidity_r f_debt_r f_efficiency_r f_profit_r f_growth_r ht_room_ocup_nutsiii ht_quality_stars f_mkt_share_nutsiii i.f_year, gmm(L.(f_liquidity_r f_efficiency_r f_year)) iv(f_liquidity_r f_efficiency_r ht_events_meetings ht_quality_stars f_year, equation(level))
xtabond2 f_zscore_w L.f_zscore_w ht_location_castle3 f_mkt_share_conc_nutsiii ht_room_ocup_sea_nutsiii ht_events_meetings f_ln_total_assets_w f_liquidity_r f_debt_r f_efficiency_r f_profit_r f_growth_r ht_room_ocup_nutsiii ht_quality_stars f_mkt_share_nutsiii i.f_year, gmm(L.(f_liquidity_r f_efficiency_r f_year)) iv(f_liquidity_r f_efficiency_r ht_events_meetings ht_quality_stars f_year, equation(level))
xtabond2 f_zscore_w L.f_zscore_w ht_location_castle2 f_mkt_share_conc_nutsiii ht_room_ocup_sea_nutsiii ht_events_meetings f_ln_total_assets_w f_liquidity_r f_debt_r f_efficiency_r f_profit_r f_growth_r ht_room_ocup_nutsiii ht_quality_stars f_mkt_share_nutsiii i.f_year, gmm(L.(f_liquidity_r f_efficiency_r f_year)) iv(f_liquidity_r f_efficiency_r ht_events_meetings ht_quality_stars f_year, equation(level))
xtabond2 f_zscore_w L.f_zscore_w ht_location_castle1 f_mkt_share_conc_nutsiii ht_room_ocup_sea_nutsiii ht_events_meetings f_ln_total_assets_w f_liquidity_r f_debt_r f_efficiency_r f_profit_r f_growth_r ht_room_ocup_nutsiii ht_quality_stars f_mkt_share_nutsiii i.f_year, gmm(L.(f_liquidity_r f_efficiency_r f_year)) iv(f_liquidity_r f_efficiency_r ht_events_meetings ht_quality_stars f_year, equation(level))

* Beaches
xtabond2 f_zscore_w L.f_zscore_w ht_location_beach5 f_mkt_share_conc_nutsiii ht_room_ocup_sea_nutsiii ht_events_meetings f_ln_total_assets_w f_liquidity_r f_debt_r f_efficiency_r f_profit_r f_growth_r ht_room_ocup_nutsiii ht_quality_stars f_mkt_share_nutsiii i.f_year, gmm(L.(f_liquidity_r f_efficiency_r f_year)) iv(f_liquidity_r f_efficiency_r ht_events_meetings ht_quality_stars f_year, equation(level))
xtabond2 f_zscore_w L.f_zscore_w ht_location_beach4 f_mkt_share_conc_nutsiii ht_room_ocup_sea_nutsiii ht_events_meetings f_ln_total_assets_w f_liquidity_r f_debt_r f_efficiency_r f_profit_r f_growth_r ht_room_ocup_nutsiii ht_quality_stars f_mkt_share_nutsiii i.f_year, gmm(L.(f_liquidity_r f_efficiency_r f_year)) iv(f_liquidity_r f_efficiency_r ht_events_meetings ht_quality_stars f_year, equation(level))
xtabond2 f_zscore_w L.f_zscore_w ht_location_beach3 f_mkt_share_conc_nutsiii ht_room_ocup_sea_nutsiii ht_events_meetings f_ln_total_assets_w f_liquidity_r f_debt_r f_efficiency_r f_profit_r f_growth_r ht_room_ocup_nutsiii ht_quality_stars f_mkt_share_nutsiii i.f_year, gmm(L.(f_liquidity_r f_efficiency_r f_year)) iv(f_liquidity_r f_efficiency_r ht_events_meetings ht_quality_stars f_year, equation(level))
xtabond2 f_zscore_w L.f_zscore_w ht_location_beach2 f_mkt_share_conc_nutsiii ht_room_ocup_sea_nutsiii ht_events_meetings f_ln_total_assets_w f_liquidity_r f_debt_r f_efficiency_r f_profit_r f_growth_r ht_room_ocup_nutsiii ht_quality_stars f_mkt_share_nutsiii i.f_year, gmm(L.(f_liquidity_r f_efficiency_r f_year)) iv(f_liquidity_r f_efficiency_r ht_events_meetings ht_quality_stars f_year, equation(level))
xtabond2 f_zscore_w L.f_zscore_w ht_location_beach1 f_mkt_share_conc_nutsiii ht_room_ocup_sea_nutsiii ht_events_meetings f_ln_total_assets_w f_liquidity_r f_debt_r f_efficiency_r f_profit_r f_growth_r ht_room_ocup_nutsiii ht_quality_stars f_mkt_share_nutsiii i.f_year, gmm(L.(f_liquidity_r f_efficiency_r f_year)) iv(f_liquidity_r f_efficiency_r ht_events_meetings ht_quality_stars f_year, equation(level))

* Churches
xtabond2 f_zscore_w L.f_zscore_w ht_location_church5 f_mkt_share_conc_nutsiii ht_room_ocup_sea_nutsiii ht_events_meetings f_ln_total_assets_w f_liquidity_r f_debt_r f_efficiency_r f_profit_r f_growth_r ht_room_ocup_nutsiii ht_quality_stars f_mkt_share_nutsiii i.f_year, gmm(L.(f_liquidity_r f_efficiency_r f_year)) iv(f_liquidity_r f_efficiency_r ht_events_meetings ht_quality_stars f_year, equation(level))
xtabond2 f_zscore_w L.f_zscore_w ht_location_church4 f_mkt_share_conc_nutsiii ht_room_ocup_sea_nutsiii ht_events_meetings f_ln_total_assets_w f_liquidity_r f_debt_r f_efficiency_r f_profit_r f_growth_r ht_room_ocup_nutsiii ht_quality_stars f_mkt_share_nutsiii i.f_year, gmm(L.(f_liquidity_r f_efficiency_r f_year)) iv(f_liquidity_r f_efficiency_r ht_events_meetings ht_quality_stars f_year, equation(level))
xtabond2 f_zscore_w L.f_zscore_w ht_location_church3 f_mkt_share_conc_nutsiii ht_room_ocup_sea_nutsiii ht_events_meetings f_ln_total_assets_w f_liquidity_r f_debt_r f_efficiency_r f_profit_r f_growth_r ht_room_ocup_nutsiii ht_quality_stars f_mkt_share_nutsiii i.f_year, gmm(L.(f_liquidity_r f_efficiency_r f_year)) iv(f_liquidity_r f_efficiency_r ht_events_meetings ht_quality_stars f_year, equation(level))
xtabond2 f_zscore_w L.f_zscore_w ht_location_church2 f_mkt_share_conc_nutsiii ht_room_ocup_sea_nutsiii ht_events_meetings f_ln_total_assets_w f_liquidity_r f_debt_r f_efficiency_r f_profit_r f_growth_r ht_room_ocup_nutsiii ht_quality_stars f_mkt_share_nutsiii i.f_year, gmm(L.(f_liquidity_r f_efficiency_r f_year)) iv(f_liquidity_r f_efficiency_r ht_events_meetings ht_quality_stars f_year, equation(level))
xtabond2 f_zscore_w L.f_zscore_w ht_location_church1 f_mkt_share_conc_nutsiii ht_room_ocup_sea_nutsiii ht_events_meetings f_ln_total_assets_w f_liquidity_r f_debt_r f_efficiency_r f_profit_r f_growth_r ht_room_ocup_nutsiii ht_quality_stars f_mkt_share_nutsiii i.f_year, gmm(L.(f_liquidity_r f_efficiency_r f_year)) iv(f_liquidity_r f_efficiency_r ht_events_meetings ht_quality_stars f_year, equation(level))

