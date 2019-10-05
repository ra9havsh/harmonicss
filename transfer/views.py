from django.shortcuts import render, get_object_or_404, redirect
from selenium import webdriver
from selenium.webdriver.common.keys import Keys
from selenium.webdriver.support.ui import WebDriverWait
from selenium.webdriver.support import expected_conditions as EC
from selenium.webdriver.common.by import By
from selenium.common.exceptions import TimeoutException
from selenium.common.exceptions import WebDriverException
from selenium.common.exceptions import NoSuchElementException
from django.conf import settings
from django.core.files.storage import FileSystemStorage
from django.contrib import messages
import json
import os
import re
import requests
from .models import Cohort,CondSymptom,CondDiagnosis,CondDiagnosisOrgans,Patient,DtAmount,DtIntRange,DtAmountRange,DtDate,DtPeriodOfTime,DemoEthnicityData,DemoSexData,ExamBiopsy,ExamLabTest,ExamQuestionnaireScore,LifestyleSmoking,\
    IntervMedication,VocAssessment,VocBiopsy,VocDirection,VocEthnicity,VocMedicalCondition,VocLabTest,VocSex,VocSmokingStatus,VocSymptomSign,VocUnit,VocPharmDrug,VocLymphomaOrgan, VocQuestionnaire
from harmonics import settings
from transfer.forms import TransferForm

database_name = 'database1'

def voc_biopsy(code,name):
    n = name.split('(', 1)
    name = n[0]
    biopsy = VocBiopsy.objects.using(database_name).get(code=code,name__contains=name)
    return biopsy

def voc_lab_test(code,name):
    n = name.split('(', 1)
    name = n[0]
    n = name.split('[', 1)
    name = n[0]
    # print(code)
    # print(name)
    test = VocLabTest.objects.using(database_name).get(code=code,name__contains=name)
    return test

def voc_unit(code,name):
    n = name.split('(', 1)
    name = n[0]
    try:
        unit = VocUnit.objects.using(database_name).get(code=code,expression__contains=name)
    except VocUnit.DoesNotExist:
        unit=None
    return unit

def voc_assessment(code,name):
    n = name.split('(', 1)
    name = n[0]
    assessment = VocAssessment.objects.using(database_name).get(code=code,name__contains=name)
    return assessment

def voc_ethnicity(code,name):
    n = name.split('(', 1)
    name = n[0]
    ethnicity = VocEthnicity.objects.using(database_name).get(code=code,name__contains=name)
    return ethnicity

def voc_sex(code,name):
    n = name.split('(', 1)
    name=n[0]
    sex = VocSex.objects.using(database_name).get(code=code,name__contains=name)
    return sex

def voc_smoking_status(code,name):
    n = name.split('(', 1)
    name = n[0]
    smoking_status = VocSmokingStatus.objects.using(database_name).get(code=code,name__contains=name)
    return smoking_status

def voc_symptom_sign(code,name):
    n = name.split('(', 1)
    name = n[0]
    symptom_sign = VocSymptomSign.objects.using(database_name).get(code=code,name__contains=name)
    return symptom_sign

def voc_medical_condition(code,name):
    n = name.split('(', 1)
    name = n[0]
    medical_condition = VocMedicalCondition.objects.using(database_name).get(code=code,name__contains=name)
    return medical_condition

def voc_pharm_drug(code,name):
    n = name.split('(', 1)
    name = n[0]
    medication = VocPharmDrug.objects.using(database_name).get(code=code,name__contains=name)
    return medication

def voc_lymphoma_organ(code,name):
    n = name.split('(', 1)
    name = n[0]
    organ = VocLymphomaOrgan.objects.using(database_name).get(code=code,name__contains=name)
    return organ

def voc_questionnaire(code,name):
    n = name.split('(', 1)
    name = n[0]
    n = name.split('(', 1)
    name = n[0]
    questionnaire = VocQuestionnaire.objects.using(database_name).get(code=code,name__contains=name)
    return questionnaire

def dt_int_range(test_normal_range):

    down_limit=None
    up_limit=None

    if 'interval-Amount-Down-Limit' in test_normal_range:
        down_limit = test_normal_range['interval-Amount-Down-Limit']

    if 'interval-Amount-Up-Limit' in test_normal_range:
        up_limit = test_normal_range['interval-Amount-Up-Limit']

    dt_int_range = DtIntRange.objects.using(database_name).get_or_create(int1=down_limit,int2=up_limit)
    return dt_int_range[0]

def dt_amount_range(test_normal_range):
    if 'amount-Unit-CV' in test_normal_range:
        unit = voc_unit(test_normal_range['amount-Unit-CV']['code-Value'],test_normal_range['amount-Unit-CV']['code-Display-Name'])
    elif 'code-Value' in test_normal_range and 'code-Display-Name' in test_normal_range :
        unit = voc_unit(test_normal_range['code-Value'],test_normal_range['code-Display-Name'])
    else:
        unit=None

    down_limit=None
    up_limit=None

    if 'interval-Amount-Down-Limit' in test_normal_range:
        down_limit = test_normal_range['interval-Amount-Down-Limit']

    if 'interval-Amount-Up-Limit' in test_normal_range:
        up_limit = test_normal_range['interval-Amount-Up-Limit']

    dt_amount_range = DtAmountRange.objects.using(database_name).get_or_create(value1=down_limit,value2=up_limit,unit=unit)
    return dt_amount_range[0]

def dt_amount(test_outcome):
    if 'amount-Unit-CV' in test_outcome:
        unit = voc_unit(test_outcome['amount-Unit-CV']['code-Value'],test_outcome['amount-Unit-CV']['code-Display-Name'])
    elif 'code-Value' in test_outcome and 'code-Display-Name' in test_outcome :
        unit = voc_unit(test_outcome['code-Value'],test_outcome['code-Display-Name'])
    else:
        unit=None

    if unit is not None:
        if 'amount-Value' in test_outcome:
            amount_value=test_outcome['amount-Value']
        elif 'interval-Amount-Down-Limit' in test_outcome:
            amount_value=test_outcome['interval-Amount-Down-Limit']
        elif 'interval-Amount-Up-Limit' in test_outcome:
            amount_value=test_outcome['interval-Amount-Up-Limit']

        dt_amount = DtAmount.objects.using(database_name).get_or_create(value=amount_value,unit=unit)
        return dt_amount[0]
    else:
        return None

def dt_date(date):
    str = date.replace("--", '0')
    date = str.split('/')
    year = None
    month = None
    day = None

    if len(date) == 3:
        year = date[0]
        month = date[1]
        day = date[2]
    elif len(date) == 2:
        year = date[0]
        month = date[1]
    else:
        year = date[0]

    if len(date) > 0:
        dt_date = DtDate.objects.using(database_name).get_or_create(year=year, month=int(month), day=int(day),
                                               op=VocDirection.objects.using(database_name).get(id=2))
        return dt_date[0]

def dt_period(date1,date2):

    if date1 is not None:
        start_date = dt_date(date1)
    else:
        start_date=None

    if date2 is not None:
        end_date = dt_date(date2)
    else:
        end_date=None

    dt_period = DtPeriodOfTime.objects.using(database_name).get_or_create(start_date=start_date,end_date=end_date)
    return dt_period[0]

def biopsy_test(patient,biopsy):
    trace=""
    for no,bio in enumerate(biopsy):
        biopsy =  voc_biopsy(bio['biopsy-Type-CV']['code-Value'],bio['biopsy-Type-CV']['code-Display-Name'])
        test = voc_lab_test(bio['test-CV']['code-Value'],bio['test-CV']['code-Display-Name'])

        if 'test-Date' in bio:
            biopsy_date = dt_date(bio['test-Date'])
        else:
            biopsy_date = None

        # print(patient.id)
        # print(biopsy.id)
        # print(test.id)
        # print(biopsy_date.id)

        if biopsy and test and biopsy_date and patient:
            outcome_amount = None
            normal_range = None
            assessment = None
            outcome_check = None
            visit = None

            if 'test-Outcome' in bio:
                if isinstance(bio['test-Outcome'],dict):
                    outcome_amount = dt_amount(bio['test-Outcome'])
                    # print(outcome_amount.id)

            if 'test-Normal-Range' in bio:
                normal_range = dt_amount_range(bio['test-Normal-Range'])
                # print(normal_range.id)

            if 'test-Outcome-Assessment-Code' in bio:
                assessment = voc_assessment(bio['test-Outcome-Assessment-Code']['code-Value'],bio['test-Outcome-Assessment-Code']['code-Display-Name'])
                # print(assessment.id)

            exambiopsy = ExamBiopsy.objects.using(database_name).get_or_create(patient=patient,biopsy=biopsy,test=test,outcome_amount=outcome_amount,normal_range=normal_range,
                                                 assessment=assessment,outcome_check=outcome_check,biopsy_date=biopsy_date,visit=visit)

            trace = trace + str(no) + ". transfer biopsy(" + str(patient.id) + "," + str(biopsy) + "," + str(test) + "," + str(outcome_amount) + \
                    "," + str(normal_range) + "," + str(assessment) + "," + str(outcome_check) + "," + str(biopsy_date) + ")<br> "+ \
                    "&nbsp;&nbsp;&nbsp; to Exam_biopsy(patient,biopsy,test,outcome_amount,normal_range,assessment,outcome_check,biopsy_date) of id " \
                    + str(exambiopsy[0].id) + ".<br>"

    return trace

def laboratory_test(patient, laboratory):
    trace = ""
    for no,lab in enumerate(laboratory):
        test = voc_lab_test(lab['test-CV']['code-Value'],lab['test-CV']['code-Display-Name'])

        if 'test-Date' in lab:
            if isinstance(lab['test-Date'],dict):
                sample_date = dt_date(lab['test-Date']['date-Interval-Start-Date'])
            else:
                sample_date = dt_date(lab['test-Date'])
        else:
            sample_date = None

        # print(sample_date)

        if test and patient:
            outcome_amount = None
            outcome_assessment = None
            outcome_term_id = None
            normal_range = None
            visit = None

            if 'test-Outcome' in lab:
                if isinstance(lab['test-Outcome'],dict):
                    outcome_amount = dt_amount(lab['test-Outcome'])
                    # if outcome_amount is not None:
                    #     print(outcome_amount.id)

            if 'test-Normal-Range' in lab:
                normal_range = dt_amount_range(lab['test-Normal-Range'])
                # print(normal_range.id)

            if 'test-Outcome-Assessment-Code' in lab:
                outcome_assessment = voc_assessment(lab['test-Outcome-Assessment-Code']['code-Value'],lab['test-Outcome-Assessment-Code']['code-Display-Name'])
                # print(outcome_assessment.id)

            lab_test = ExamLabTest.objects.using(database_name).get_or_create(patient=patient,test=test,outcome_amount=outcome_amount,normal_range=normal_range,outcome_assessment=outcome_assessment,outcome_term_id=outcome_term_id,sample_date=sample_date,visit=visit)

            trace = trace + str(no) + ". transfer Laboratory(" + str(patient.id) + "," + str(test) + "," + str(outcome_amount) + \
                    "," + str(normal_range) + "," + str(outcome_assessment) + "," + str(outcome_term_id) + "," + str(sample_date)+ "," + str(visit) + ")<br> " + \
                    "&nbsp;&nbsp;&nbsp; to Exam_Lab_Test(patient,test,outcome_amount,normal_range,outcome_assessment,outcome_term_id,sample_data,visit) of id " \
                    + str(lab_test[0].id) + ".<br>"

    return trace

def demographic(patient, demographic):
    trace = ""
    for no,demo in enumerate(demographic):
        if demo['type']=='Ethnicity':
            if 'ethnicity-CV' in demo:
                ethnicity = voc_ethnicity(demo['ethnicity-CV']['code-Value'],demo['ethnicity-CV']['code-Display-Name'])
                eth = DemoEthnicityData.objects.using(database_name).get_or_create(patient=patient,ethnicity=ethnicity)
                trace = trace + str(no) + ". transfer Ethnicity(" + str(patient.id) + "," + str(ethnicity) + ")<br> " + \
                        "&nbsp;&nbsp;&nbsp; to Demo_Ethnicity_Data(patient,ethnicity) of id " \
                        + str(eth[0].id) + ".<br>"
        elif demo['type']=='Gender':
            if 'gender-CV' in demo:
                sex = voc_sex(demo['gender-CV']['code-Value'], demo['gender-CV']['code-Display-Name'])
                gender = DemoSexData.objects.using(database_name).get_or_create(patient=patient, sex=sex)
                trace = trace + str(no) + ". transfer Gender(" + str(patient.id) + "," + str(sex) + ")<br> " + \
                        "&nbsp;&nbsp;&nbsp; to Demo_Ethnicity_Data(patient,ethnicity) of id " \
                        + str(gender[0].id) + ".<br>"

    return trace

def pregnancy_smoking(patient, preg_smoke):
    trace = ""
    for no,pregsmk in enumerate(preg_smoke):
        if pregsmk['type']=='Tobacco-Consumption':
            if 'tobacco-Consumption-Status-CV' in pregsmk:
                smoking_status = voc_smoking_status(pregsmk['tobacco-Consumption-Status-CV']['code-Value'],pregsmk['tobacco-Consumption-Status-CV']['code-Display-Name'])
                lifestyle = LifestyleSmoking.objects.using(database_name).get_or_create(patient=patient,status=smoking_status)
                trace = trace + str(no) + ". transfer Tobacco-consumption(" + str(patient.id) + "," + str(smoking_status) + ")<br> " + \
                        "&nbsp;&nbsp;&nbsp; to LifeStyleSmoking(patient,status) of id " \
                        + str(lifestyle[0].id) + ".<br>"
    return trace

def condition_test(patient, condition):
    trace = ""
    for no,con in enumerate(condition):
        if con['type']=='Symptom-or-Sign':
            symptom_sign= None
            if 'symptom-sign-CV' in con:
                if 'code-Value' in con['symptom-sign-CV'] and 'code-Display-Name' in con['symptom-sign-CV']:
                    symptom_sign = voc_symptom_sign(con['symptom-sign-CV']['code-Value'],con['symptom-sign-CV']['code-Display-Name'])
                if 'expression-Code-CV-JA' in con['symptom-sign-CV']:
                    exp = con['symptom-sign-CV']['expression-Code-CV-JA'][0]
                    if 'code-Value' in exp and 'code-Display-Name' in exp:
                        symptom_sign = voc_symptom_sign(exp['code-Value'],exp['code-Display-Name'])
            if 'symptom-sign-Date' in con:
                if isinstance(con['symptom-sign-Date'],dict):
                    observe_date = dt_date(con['symptom-sign-Date']['date-Interval-Start-Date'])
                else:
                    observe_date = dt_date(con['symptom-sign-Date'])
            else:
                observe_date = None

            symp = CondSymptom.objects.using(database_name).get_or_create(patient=patient,condition=symptom_sign,observe_date=observe_date)
            trace = trace + str(no) + ". transfer Symptoms-or-Signs(" + str(patient.id) + "," + str(symptom_sign)+ "," + str(observe_date) + ")<br> " + \
                    "&nbsp;&nbsp;&nbsp; to CondSymptoms(patient,condition,observe_date) of id " \
                    + str(symp[0].id) + ".<br>"

        if con['type']=='Diagnosis':
            symptom_sign= None
            if 'diagnosis-CV' in con:
                medical_condition = voc_medical_condition(con['diagnosis-CV']['code-Value'],con['diagnosis-CV']['code-Display-Name'])
            if 'diagnosis-Date' in con:
                if isinstance(con['diagnosis-Date'],dict):
                    diagnosis_date = dt_date(con['diagnosis-Date']['date-Interval-Start-Date'])
                else:
                    diagnosis_date = dt_date(con['diagnosis-Date'])
            else:
                diagnosis_date = None

            diagnosis = CondDiagnosis.objects.using(database_name).get_or_create(patient=patient,condition=medical_condition,diagnosis_date=diagnosis_date)
            trace = trace + str(no) + ". transfer Diagonsis(" + str(patient.id) + "," + str(medical_condition) + "," + \
                    str(diagnosis_date) + ")<br> " + \
                    "&nbsp;&nbsp;&nbsp; to CondDiagnosis(patient,condition,diagnosis_date) of id " \
                    + str(diagnosis[0].id) + ".<br>"

            if 'diagnosis-Organ-CV-JA' in con:
                for org in con['diagnosis-Organ-CV-JA']:
                    if 'code-Value' in org and 'code-Display-Name' in org:
                        organ=voc_lymphoma_organ(org['code-Value'],org['code-Display-Name'])
                        diagnosis_organ = CondDiagnosisOrgans.objects.using(database_name).get_or_create(diagnosis=diagnosis[0],organ=organ)
                        trace = trace + str(no) + ". transfer DiagonisOrgan(" + str(diagnosis[0].id) + "," + str(organ) + ")<br> " + \
                                "&nbsp;&nbsp;&nbsp; to CondDiagnosisOrgans(diagnosis,organ) of id " \
                                + str(diagnosis_organ[0].id) + ".<br>"

    return trace

def intervention_test(patient,intervation):
    trace = ""
    for no,intv in enumerate(intervation):
        if intv['type'] == 'Medication':
            medication = None
            if 'medication-CV' in intv:
                medication = voc_pharm_drug(intv['medication-CV']['code-Value'],
                                                intv['medication-CV']['code-Display-Name'])
            if 'medication-Date-Interval' in intv:
                if 'date-Interval-Start-Date' in intv['medication-Date-Interval'] and 'date-Interval-End-Date' in intv['medication-Date-Interval']:
                    period = dt_period(intv['medication-Date-Interval']['date-Interval-Start-Date'],intv['medication-Date-Interval']['date-Interval-End-Date'])
                elif 'date-Interval-Start-Date' in intv['medication-Date-Interval']:
                    period = dt_period(intv['medication-Date-Interval']['date-Interval-Start-Date'],None)
                elif 'date-Interval-End-Date' in intv['medication-Date-Interval']:
                    period = dt_period(None,intv['medication-Date-Interval']['date-Interval-End-Date'])
            else:
                period = None

            med = IntervMedication.objects.using(database_name).get_or_create(patient=patient,medication=medication,period=period)
            trace = trace + str(no) + ". transfer Medication(" + str(patient.id) + "," + str(medication)+ "," + str(period) + ")<br> " + \
                    "&nbsp;&nbsp;&nbsp; to InterMedication(patient,medication,period) of id " \
                    + str(med[0].id) + ".<br>"
    return trace

def questionnaire_test(patient,questionnaire):
    trace = ""
    for no,ques in enumerate(questionnaire):
        if ques['type'] == 'Questionnaire-Score':
            if 'score-CV' in ques:
                score = voc_questionnaire(ques['score-CV']['code-Value'],ques['score-CV']['code-Display-Name'])
            else:
                score = None

            if 'questionnaire-Score' in ques:
                score_value = ques['questionnaire-Score']
            else:
                score_value = None

            if 'completion-Date' in ques:
                questionnaire_date = dt_date(ques['completion-Date'])
            else:
                questionnaire_date = None

            if 'score-Normal-Range' in ques:
                normal_range = dt_int_range(ques['score-Normal-Range'])
                # print(normal_range.id)
            else:
                normal_range=None

            if 'score-Assessment-Code' in ques:
                assessment = voc_assessment(ques['score-Assessment-Code']['code-Value'],ques['score-Assessment-Code']['code-Display-Name'])
                # print(outcome_assessment.id)
            else:
                assessment = None

            ques = ExamQuestionnaireScore.objects.using(database_name).get_or_create(patient=patient,score=score,value=score_value,questionnaire_date=questionnaire_date,assessment=assessment,normal_range=normal_range)
            trace = trace + str(no) + ". transfer Questionnaire-Score(" + str(patient.id) + "," + str(score) + "," + str(score_value)+ "," + str(questionnaire_date) + \
                    "," + str(assessment)+ "," + str(normal_range)+")<br> " + \
                    "&nbsp;&nbsp;&nbsp; to ExamQuestionnaireScore(patient,medication,period) of id " \
                    + str(ques[0].id) + ".<br>"
    return trace

def positive_stmt(patient,pos_stmt):
    trace=""
    for pos in pos_stmt:
        if pos == "biopsy-Test-JA":
            bio = biopsy_test(patient,pos_stmt[pos])
            trace = trace+"<br><b>For biopsy test of patient->id " + str(patient.id) + ":</b><br>"
            if not len(bio) > 0:
                bio = "no data in biopsy test of  patient->id" + str(patient.id) + "<br>"
            trace = trace+bio
        elif pos == "lab-Test-JA":
            lab_test = laboratory_test(patient,pos_stmt[pos])
            trace = trace+"<br><b>For Laboratory test of patient->id " + str(patient.id) + ":</b><br>"
            if not len(lab_test) > 0:
                lab_test = "no data in Laboratory test of  patient->id" + str(patient.id) + "<br>"
            trace = trace + lab_test
        elif pos == "demographic-JA":
            demo = demographic(patient,pos_stmt[pos])
            trace = trace + "<br><b>For Demographic test of patient->id " + str(patient.id) + ":</b><br>"
            if not len(demo) > 0:
                demo = "no data in Demographic test of  patient->id" + str(patient.id) + "<br>"
            trace = trace + demo
        elif pos == "pregnancy-smoking-JA":
            pregsmok = pregnancy_smoking(patient,pos_stmt[pos])
            trace = trace + "<br><b>For Pregnancy-Smoking test of patient->id " + str(patient.id) + ":</b><br>"
            if not len(pregsmok) > 0:
                pregsmok = "no data in Pregnancy-Smoking test of  patient->id" + str(patient.id) + "<br>"
            trace = trace + pregsmok
        elif pos == "condition-JA":
            con = condition_test(patient,pos_stmt[pos])
            trace = trace + "<br><b>For Condition test of patient->id " + str(patient.id) + ":</b><br>"
            if not len(con) > 0:
                con = "no data in Condition test of  patient->id" + str(patient.id) + "<br>"
            trace = trace + con
        elif pos == "intervention-JA":
            inter = intervention_test(patient,pos_stmt[pos])
            trace = trace + "<br><b>For Intervention of patient->id " + str(patient.id) + ":</b><br>"
            if not len(inter) > 0:
                inter = "no data in intervention of  patient->id" + str(patient.id) + "<br>"
            trace = trace + inter
        elif pos == "questionnaire-JA":
            ques = questionnaire_test(patient, pos_stmt[pos])
            trace = trace + "<br><b>For Questionnaire of patient->id " + str(patient.id) + ":</b><br>"
            if not len(ques) > 0:
                ques = "no data in Questionnaire of  patient->id" + str(patient.id) + "<br>"
            trace = trace + ques
        else:
            print(pos)

    return trace

def negative_stmt(patient,neg_stmt):
    trace = ""
    for neg in neg_stmt:
        if neg == "biopsy-Test-JA":
            biopsy_test(patient,neg_stmt[neg])
            bio = biopsy_test(patient, neg_stmt[neg])
            trace = trace+ "<br><b>For biopsy test of patient->id " + str(patient.id) + ":</b><br>"
            if not len(bio) > 0:
                bio = "no data in biopsy test of  patient->id" + str(patient.id) + "<br>"
            trace = trace + bio
        elif neg == "lab-Test-JA":
            lab_test = laboratory_test(patient, neg_stmt[neg])
            trace = trace + "<br><b>For Laboratory test of patient->id " + str(patient.id) + ":</b><br>"
            if not len(lab_test) > 0:
                lab_test = "no data in Laboratory test of  patient->id" + str(patient.id) + "<br>"
            trace = trace + lab_test
        elif neg == "demographic-JA":
            demo = demographic(patient, neg_stmt[neg])
            trace = trace + "<br><b>For Demographic test of patient->id " + str(patient.id) + ":</b><br>"
            if not len(demo) > 0:
                demo = "no data in Demographic test of  patient->id" + str(patient.id) + "<br>"
            trace = trace + demo
        elif neg == "pregnancy-smoking-JA":
            pregsmok = pregnancy_smoking(patient,neg_stmt[neg])
            trace = trace + "<br><b>For Pregnancy-Smoking test of patient->id " + str(patient.id) + ":</b><br>"
            if not len(pregsmok) > 0:
                pregsmok = "no data in Pregnancy-Smoking test of  patient->id" + str(patient.id) + "<br>"
            trace = trace + pregsmok
        elif neg == "condition-JA":
            con = condition_test(patient,neg_stmt[neg])
            trace = trace + "<br><b>For Condition test of patient->id " + str(patient.id) + ":</b><br>"
            if not len(con) > 0:
                con = "no data in Condition test of  patient->id" + str(patient.id) + "<br>"
            trace = trace + con
        elif neg == "intervention-JA":
            inter = intervention_test(patient,neg_stmt[neg])
            trace = trace + "<br><b>For Intervention of patient->id " + str(patient.id) + ":</b><br>"
            if not len(inter) > 0:
                inter = "no data in intervention of  patient->id" + str(patient.id) + "<br>"
            trace = trace + inter
        elif neg == "questionnaire-JA":
            ques = questionnaire_test(patient,neg_stmt[neg])
            trace = trace + "<br><b>For Questionnaire of patient->id " + str(patient.id) + ":</b><br>"
            if not len(ques) > 0:
                ques = "no data in Questionnaire of  patient->id" + str(patient.id) + "<br>"
            trace = trace + ques
        else:
            print(neg)

    return trace

def patient_date(date):
    if date is not None:
        str = date.replace("--",'0')

        date = str.split('/')
        year = None
        month= None
        day = None

        if len(date)==3:
            year = date[0]
            month = date[1]
            day = date[2]
        elif len(date)==2:
            year = date[0]
            month = date[1]
        else:
            year = date[0]

        if len(date)>0:
            dt_date = DtDate.objects.using(database_name).get_or_create(year=year,month=int(month),day=int(day),op=VocDirection.objects.using(database_name).get(id=2))
            return dt_date[0]
    else:
        return None

def patient(type,uid,dob,ssso,ssd):
    if len(uid)>0:
        person_dob = patient_date(dob)
        person_ssso = patient_date(ssso)
        person_ssd = patient_date(ssd)

        # print(uid)
        # print(person_dob.id)
        # print(person_ssso.id)
        # print(person_ssd.id)

        patient = Patient.objects.using(database_name).get_or_create(uid=uid,date_of_birth=person_dob,pss_symptoms_onset_date=person_ssso,pss_diagnosis_date=person_ssd)
        # print("patient table is filled")


        return patient[0]

def person_JA(personJA):
    trace = "<br><font size='5'><b>For transfer of Person-JA:</b></font><br>"
    for no,p in enumerate(personJA):
        person_type = None
        person_uid = None
        person_dob = None
        person_SS_S_O = None
        person_SS_D = None

        if 'type' in p:
            person_type = p['type']
        if "person-Unique-ID" in p:
            person_uid = p['person-Unique-ID']
        if "person-Date-Birth" in p:
            person_dob = p["person-Date-Birth"]
        if "person-SS-Symptoms-Onset" in p:
            person_SS_S_O = p["person-SS-Symptoms-Onset"]
        if "person-SS-Diagnosis" in p:
            person_SS_D = p["person-SS-Diagnosis"]

        patient_obj = patient(person_type, person_uid, person_dob, person_SS_S_O, person_SS_D)
        trace = trace + "<br><b>" +str(no) + ". transfer person(" + str(person_type) + ","+str(person_uid)+ ","+str(person_dob)+ ","+str(person_SS_S_O)+ \
                ","+str(person_SS_D)+") to patient(id-"+str(patient_obj.id)+",uid,dateofbirth,ss-sym-onset,ss-diagnosis).</b><br>"

        if 'POSITIVE-STMT' in p:

            pos = "<font size='4'><b>For positive statement:</b></font><br>"

            pos = pos + positive_stmt(patient_obj,p['POSITIVE-STMT'])

            if not len(pos)>0:
                pos = "no data in positive statement of patient of id "+str(patient_obj.id)+"<br>"
        else:
            pos = "no data in positive statement.<br>"

        if 'NEGATIVE-STMT' in p:
            neg = "<br><font size='4'><b>For negative statement:</b></font><br>"
            neg = neg + negative_stmt(patient_obj,p['NEGATIVE-STMT'])

            if not len(neg)>0:
                neg = "no data in positive statement of patient of id "+str(patient_obj.id)+"<br>"

        else:
            neg =  "no data in negative statement"

        trace = trace+pos
        trace = trace+neg

    return trace

def cohort(cohort):
    trace="<font size='5'><b>For transfer of Cohort:</b></font><br>"
    for no, c in enumerate(cohort):
        if len(c['code']) and len(c['label']):
            coh = Cohort.objects.using(database_name).get_or_create(parameter=c['code'],value=c['label'])
            trace = trace + str(no)+". transfer code->"+c['code']+" to parameter, label ->"+c['label']+" to "+str(coh[0])+"<br>"
            # print("cohort table is filled...")
    return trace

def transfer_url(request,url):
    chrome_url = os.path.join(settings.BASE_DIR, 'transfer/static/transfer/chromium_driver/chromedriver.exe')
    driver = webdriver.Chrome(chrome_url)

    try:
        driver.get(url)
        element = WebDriverWait(driver, 50).until(
            EC.presence_of_element_located((By.TAG_NAME, "pre"))
        )

        try:
            pre_tag = driver.find_element_by_tag_name('pre')
        except NoSuchElementException:
            pre_tag = type('obj', (object,), {'text': ''})

        data = pre_tag.text
        results = json.loads(data)
        print(results)
        cohort_list = results["cohort"]["term-JA"]
        personJA = results["person-JA"]

        t = cohort(cohort_list)
        tt = person_JA(personJA)

        request.session['trace'] = ""

        trace = request.session.get('trace')
        if len(t) > 0:
            trace = trace + t
        else:
            trace = trace + "no data in cohort"

        if len(tt) > 0:
            trace = trace + tt
        else:
            trace = trace + "no data in person-JA"

        request.session['trace'] = trace
        driver.quit()
    except TimeoutException and WebDriverException:
        return redirect("transfer:message", 'error')
        driver.quit()

    return redirect('transfer:message', 'success')

def transfer_file(request,file_name):
    try:
        file = settings.BASE_DIR+file_name
        json_file = open(file)
        results = json.load(json_file)
        json_file.close()
        fs = FileSystemStorage()

        if fs.exists(file):
            fs.delete(file)

        cohort_list=results["cohort"]["term-JA"]
        personJA=results["person-JA"]

        t = cohort(cohort_list)
        tt = person_JA(personJA)

        request.session['trace'] = ""

        trace = request.session.get('trace')
        if len(t) > 0:
            trace = trace + t
        else:
            trace = trace + "no data in cohort"

        if len(tt) > 0:
            trace = trace + tt
        else:
            trace = trace + "no data in person-JA"

        request.session['trace'] = trace

        return redirect('transfer:message', 'success')
    except FileNotFoundError:
        return redirect("transfer:message", 'error')

    return redirect('transfer:message', 'success')

def homepage(request):
    # file = os.path.join(settings.BASE_DIR, 'transfer/static/transfer/j5.json')
    # json_file = open(file)
    # results = json.load(json_file)
    # json_file.close()
    # cohort_list=results["cohort"]["term-JA"]
    # personJA=results["person-JA"]
    #
    # t = cohort(cohort_list)
    # tt = person_JA(personJA)
    #
    # request.session['trace'] = ""
    #
    # trace = request.session.get('trace')
    # if len(t) > 0:
    #     trace = trace + t
    # else:
    #     trace = trace + "no data in cohort"
    #
    # if len(tt) > 0:
    #     trace = trace + tt
    # else:
    #     trace = trace + "no data in person-JA"
    #
    # request.session['trace'] = trace
    #
    # return redirect('transfer:message', 'success')

    if request.method=="POST":
        transfer_form= TransferForm(request.POST,request.FILES)
        url = request.POST.get('url')
        database_name = request.POST.get('database')
        username = request.POST.get('username')
        password = request.POST.get('password')
        path = request.POST.get('path')

        if transfer_form.is_valid and database_name is not '0':

            database = settings.DATABASES[database_name]

            if database['USER'] != username or database['PASSWORD'] != password:
                messages.error(request,'username of password does not match')
                return redirect('transfer:homepage')

            if path is '0':
                return transfer_url(request,url)

            if path is '1' and request.FILES['file']:
                file = request.FILES['file']
                fs = FileSystemStorage()
                filename = fs.save(file.name, file)
                uploaded_file_url = fs.url(filename)
                return transfer_file(request,uploaded_file_url)
    else:
        transfer_form = TransferForm()

    args = {}
    args["transfer_form"] = transfer_form
    return render(request,'transfer/index.html',args)

def transfer(request,msg):
    if str(msg)=='success':
        trace = request.session.get('trace')
        request.session['trace'] = ""
        return render(request, 'transfer/transfer.html', {'success': 'Data Tranferred successfully.....','trace':trace})
    elif str(msg)=='error':
        return render(request, 'transfer/transfer.html', {'error': 'Sorry time out exception occurred, or file is not found'})
    else:
        return render(request, 'transfer/transfer.html')