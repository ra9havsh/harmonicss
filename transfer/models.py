from django.db import models


class Cohort(models.Model):
    id = models.PositiveSmallIntegerField(db_column='ID', primary_key=True)  # Field name made lowercase.
    parameter = models.CharField(db_column='PARAMETER', unique=True, max_length=25)  # Field name made lowercase.
    value = models.CharField(db_column='VALUE', max_length=255)  # Field name made lowercase.

    class Meta:
        managed = True
        db_table = 'cohort'

    def __str__(self):
        return 'cohort('+str(self.id) + ',' + str(self.parameter)+ ',' + str(self.value)+')'


class CondDiagnosis(models.Model):
    id = models.AutoField(db_column='ID', primary_key=True)  # Field name made lowercase.
    patient = models.ForeignKey('Patient', models.DO_NOTHING, db_column='PATIENT_ID')  # Field name made lowercase.
    condition = models.ForeignKey('VocMedicalCondition', models.DO_NOTHING, db_column='CONDITION_ID')  # Field name made lowercase.
    stage = models.ForeignKey('VocLymphomaStage', models.DO_NOTHING, db_column='STAGE_ID', blank=True, null=True)  # Field name made lowercase.
    performance_status = models.ForeignKey('VocPerformanceStatus', models.DO_NOTHING, db_column='PERFORMANCE_STATUS_ID', blank=True, null=True)  # Field name made lowercase.
    diagnosis_date = models.ForeignKey('DtDate', models.DO_NOTHING, db_column='DIAGNOSIS_DATE_ID', blank=True, null=True)  # Field name made lowercase.
    visit = models.ForeignKey('PatientVisit', models.DO_NOTHING, db_column='VISIT_ID', blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = True
        db_table = 'cond_diagnosis'


class CondDiagnosisOrgans(models.Model):
    id = models.AutoField(db_column='ID', primary_key=True)  # Field name made lowercase.
    diagnosis = models.ForeignKey(CondDiagnosis, models.DO_NOTHING, db_column='DIAGNOSIS_ID')  # Field name made lowercase.
    organ = models.ForeignKey('VocLymphomaOrgan', models.DO_NOTHING, db_column='ORGAN_ID')  # Field name made lowercase.

    class Meta:
        managed = True
        db_table = 'cond_diagnosis_organs'


class CondLinkDiagnosisLabTests(models.Model):
    id = models.AutoField(db_column='ID', primary_key=True)  # Field name made lowercase.
    diagnosis = models.ForeignKey(CondDiagnosis, models.DO_NOTHING, db_column='DIAGNOSIS_ID')  # Field name made lowercase.
    lab_test = models.ForeignKey('ExamLabTest', models.DO_NOTHING, db_column='LAB_TEST_ID')  # Field name made lowercase.

    class Meta:
        managed = True
        db_table = 'cond_link_diagnosis_lab_tests'


class CondLinkDiagnosisSymptoms(models.Model):
    id = models.AutoField(db_column='ID', primary_key=True)  # Field name made lowercase.
    diagnosis = models.ForeignKey(CondDiagnosis, models.DO_NOTHING, db_column='DIAGNOSIS_ID')  # Field name made lowercase.
    symptoms = models.ForeignKey('CondSymptom', models.DO_NOTHING, db_column='SYMPTOMS_ID')  # Field name made lowercase.

    class Meta:
        managed = True
        db_table = 'cond_link_diagnosis_symptoms'


class CondSymptom(models.Model):
    id = models.AutoField(db_column='ID', primary_key=True)  # Field name made lowercase.
    patient = models.ForeignKey('Patient', models.DO_NOTHING, db_column='PATIENT_ID')  # Field name made lowercase.
    condition = models.ForeignKey('VocSymptomSign', models.DO_NOTHING, db_column='CONDITION_ID')  # Field name made lowercase.
    observe_date = models.ForeignKey('DtDate', models.DO_NOTHING, db_column='OBSERVE_DATE_ID', blank=True, null=True)  # Field name made lowercase.
    visit = models.ForeignKey('PatientVisit', models.DO_NOTHING, db_column='VISIT_ID', blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = True
        db_table = 'cond_symptom'


class DemoEducationLevelData(models.Model):
    id = models.AutoField(db_column='ID', primary_key=True)  # Field name made lowercase.
    patient = models.ForeignKey('Patient', models.DO_NOTHING, db_column='PATIENT_ID')  # Field name made lowercase.
    education_level = models.ForeignKey('VocEducationLevel', models.DO_NOTHING, db_column='EDUCATION_LEVEL_ID')  # Field name made lowercase.
    visit = models.ForeignKey('PatientVisit', models.DO_NOTHING, db_column='VISIT_ID')  # Field name made lowercase.

    class Meta:
        managed = True
        db_table = 'demo_education_level_data'


class DemoEthnicityData(models.Model):
    id = models.AutoField(db_column='ID', primary_key=True)  # Field name made lowercase.
    patient = models.ForeignKey('Patient', models.DO_NOTHING, db_column='PATIENT_ID')  # Field name made lowercase.
    ethnicity = models.ForeignKey('VocEthnicity', models.DO_NOTHING, db_column='ETHNICITY_ID')  # Field name made lowercase.
    visit = models.ForeignKey('PatientVisit', models.DO_NOTHING, db_column='VISIT_ID', blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = True
        db_table = 'demo_ethnicity_data'


class DemoOccupationData(models.Model):
    id = models.AutoField(db_column='ID', primary_key=True)  # Field name made lowercase.
    patient = models.ForeignKey('Patient', models.DO_NOTHING, db_column='PATIENT_ID')  # Field name made lowercase.
    loss_of_work_due_to_pss = models.ForeignKey('VocConfirmation', models.DO_NOTHING, db_column='LOSS_OF_WORK_DUE_TO_PSS_ID')  # Field name made lowercase.
    visit = models.ForeignKey('PatientVisit', models.DO_NOTHING, db_column='VISIT_ID')  # Field name made lowercase.

    class Meta:
        managed = True
        db_table = 'demo_occupation_data'


class DemoPregnancyData(models.Model):
    id = models.AutoField(db_column='ID', primary_key=True)  # Field name made lowercase.
    patient = models.ForeignKey('Patient', models.DO_NOTHING, db_column='PATIENT_ID')  # Field name made lowercase.
    conception_date = models.ForeignKey('DtDate', models.DO_NOTHING, db_column='CONCEPTION_DATE_ID', blank=True, null=True,related_name='conception')  # Field name made lowercase.
    outcome_date = models.ForeignKey('DtDate', models.DO_NOTHING, db_column='OUTCOME_DATE_ID', blank=True, null=True)  # Field name made lowercase.
    outcome = models.ForeignKey('VocPregnancyOutcome', models.DO_NOTHING, db_column='OUTCOME_ID')  # Field name made lowercase.
    ss_concordant = models.ForeignKey('VocConfirmation', models.DO_NOTHING, db_column='SS_CONCORDANT_ID', blank=True, null=True)  # Field name made lowercase.
    visit = models.ForeignKey('PatientVisit', models.DO_NOTHING, db_column='VISIT_ID')  # Field name made lowercase.

    class Meta:
        managed = True
        db_table = 'demo_pregnancy_data'


class DemoSexData(models.Model):
    id = models.AutoField(db_column='ID', primary_key=True)  # Field name made lowercase.
    patient = models.ForeignKey('Patient', models.DO_NOTHING, db_column='PATIENT_ID')  # Field name made lowercase.
    sex = models.ForeignKey('VocSex', models.DO_NOTHING, db_column='SEX_ID')  # Field name made lowercase.
    visit = models.ForeignKey('PatientVisit', models.DO_NOTHING, db_column='VISIT_ID', blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = True
        db_table = 'demo_sex_data'


class DemoWeightData(models.Model):
    id = models.AutoField(db_column='ID', primary_key=True)  # Field name made lowercase.
    patient = models.ForeignKey('Patient', models.DO_NOTHING, db_column='PATIENT_ID')  # Field name made lowercase.
    bmi_class = models.ForeignKey('VocBmiClass', models.DO_NOTHING, db_column='BMI_CLASS_ID')  # Field name made lowercase.
    visit = models.ForeignKey('PatientVisit', models.DO_NOTHING, db_column='VISIT_ID')  # Field name made lowercase.

    class Meta:
        managed = True
        db_table = 'demo_weight_data'


class DtAmount(models.Model):
    id = models.AutoField(db_column='ID', primary_key=True)  # Field name made lowercase.
    value = models.FloatField(db_column='VALUE')  # Field name made lowercase.
    unit = models.ForeignKey('VocUnit', models.DO_NOTHING, db_column='UNIT_ID')  # Field name made lowercase.

    class Meta:
        managed = True
        db_table = 'dt_amount'

    def __str__(self):
        return 'DtAmount('+str(self.id) + ',' + str(self.value)+ ',' + str(self.unit)+')'


class DtAmountRange(models.Model):
    id = models.AutoField(db_column='ID', primary_key=True)  # Field name made lowercase.
    value1 = models.FloatField(db_column='VALUE1', blank=True, null=True)  # Field name made lowercase.
    value2 = models.FloatField(db_column='VALUE2', blank=True, null=True)  # Field name made lowercase.
    unit = models.ForeignKey('VocUnit', models.DO_NOTHING, db_column='UNIT_ID')  # Field name made lowercase.

    class Meta:
        managed = True
        db_table = 'dt_amount_range'

    def __str__(self):
        return 'DtAmountRange('+str(self.id) + ',' + str(self.value1)+ ',' + str(self.value2)+',' + str(self.unit)+')'


class DtDate(models.Model):
    id = models.AutoField(db_column='ID', primary_key=True)  # Field name made lowercase.
    year = models.TextField(db_column='YEAR')  # Field name made lowercase. This field type is a guess.
    month = models.PositiveSmallIntegerField(db_column='MONTH', blank=True, null=True)  # Field name made lowercase.
    day = models.PositiveSmallIntegerField(db_column='DAY', blank=True, null=True)  # Field name made lowercase.
    op = models.ForeignKey('VocDirection', models.DO_NOTHING, db_column='OP_ID')  # Field name made lowercase.
    before_date = models.ForeignKey('self', models.DO_NOTHING, db_column='BEFORE_DATE_ID', blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = True
        db_table = 'dt_date'

    def __str__(self):
        return 'DtDate('+str(self.id) + ',' + str(self.year)+ '/' + str(self.month)+'/' + str(self.day)+')'

class DtIntRange(models.Model):
    id = models.AutoField(db_column='ID', primary_key=True)  # Field name made lowercase.
    int1 = models.IntegerField(db_column='INT1', blank=True, null=True)  # Field name made lowercase.
    int2 = models.IntegerField(db_column='INT2', blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = True
        db_table = 'dt_int_range'

    def __str__(self):
        return 'DtIntRange('+str(self.id) + ',' + str(self.int1)+ ',' + str(self.int2)+')'

class DtPeriodOfTime(models.Model):
    id = models.AutoField(db_column='ID', primary_key=True)  # Field name made lowercase.
    start_date = models.ForeignKey(DtDate, models.DO_NOTHING, db_column='START_DATE_ID', blank=True, null=True,related_name='start')  # Field name made lowercase.
    end_date = models.ForeignKey(DtDate, models.DO_NOTHING, db_column='END_DATE_ID', blank=True, null=True,related_name='end')  # Field name made lowercase.
    exact = models.ForeignKey('VocConfirmation', models.DO_NOTHING, db_column='EXACT_ID', blank=True, null=True,related_name='end')  # Field name made lowercase.
    before_period = models.ForeignKey('self', models.DO_NOTHING, db_column='BEFORE_PERIOD_ID', blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = True
        db_table = 'dt_period_of_time'

    def __str__(self):
        return 'DtPeriodofTime('+str(self.id) + ',startdate-' + str(self.start_date)+ ',enddate-' + str(self.end_date)+')'

class ExamBiopsy(models.Model):
    id = models.AutoField(db_column='ID', primary_key=True)  # Field name made lowercase.
    patient = models.ForeignKey('Patient', models.DO_NOTHING, db_column='PATIENT_ID')  # Field name made lowercase.
    biopsy = models.ForeignKey('VocBiopsy', models.DO_NOTHING, db_column='BIOPSY_ID')  # Field name made lowercase.
    test = models.ForeignKey('VocLabTest', models.DO_NOTHING, db_column='TEST_ID')  # Field name made lowercase.
    outcome_amount = models.ForeignKey(DtAmount, models.DO_NOTHING, db_column='OUTCOME_AMOUNT_ID', blank=True, null=True)  # Field name made lowercase.
    normal_range = models.ForeignKey(DtAmountRange, models.DO_NOTHING, db_column='NORMAL_RANGE_ID', blank=True, null=True)  # Field name made lowercase.
    assessment = models.ForeignKey('VocAssessment', models.DO_NOTHING, db_column='ASSESSMENT_ID', blank=True, null=True)  # Field name made lowercase.
    outcome_check = models.ForeignKey('VocConfirmation', models.DO_NOTHING, db_column='OUTCOME_CHECK_ID', blank=True, null=True)  # Field name made lowercase.
    biopsy_date = models.ForeignKey(DtDate, models.DO_NOTHING, db_column='BIOPSY_DATE_ID')  # Field name made lowercase.
    visit = models.ForeignKey('PatientVisit', models.DO_NOTHING, db_column='VISIT_ID', blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = True
        db_table = 'exam_biopsy'


class ExamCaciCondition(models.Model):
    id = models.AutoField(db_column='ID', primary_key=True)  # Field name made lowercase.
    patient = models.ForeignKey('Patient', models.DO_NOTHING, db_column='PATIENT_ID')  # Field name made lowercase.
    caci = models.ForeignKey('VocCaciCondition', models.DO_NOTHING, db_column='CACI_ID')  # Field name made lowercase.
    value = models.ForeignKey('VocConfirmation', models.DO_NOTHING, db_column='VALUE_ID')  # Field name made lowercase.
    questionnaire_date = models.ForeignKey(DtDate, models.DO_NOTHING, db_column='QUESTIONNAIRE_DATE_ID', blank=True, null=True)  # Field name made lowercase.
    visit = models.ForeignKey('PatientVisit', models.DO_NOTHING, db_column='VISIT_ID')  # Field name made lowercase.

    class Meta:
        managed = True
        db_table = 'exam_caci_condition'


class ExamEssdaiDomain(models.Model):
    id = models.AutoField(db_column='ID', primary_key=True)  # Field name made lowercase.
    patient = models.ForeignKey('Patient', models.DO_NOTHING, db_column='PATIENT_ID')  # Field name made lowercase.
    domain = models.ForeignKey('VocEssdaiDomain', models.DO_NOTHING, db_column='DOMAIN_ID')  # Field name made lowercase.
    activity_level = models.ForeignKey('VocActivityLevel', models.DO_NOTHING, db_column='ACTIVITY_LEVEL_ID')  # Field name made lowercase.
    questionnaire_date = models.ForeignKey(DtDate, models.DO_NOTHING, db_column='QUESTIONNAIRE_DATE_ID', blank=True, null=True)  # Field name made lowercase.
    visit_id = models.PositiveIntegerField(db_column='VISIT_ID')  # Field name made lowercase.

    class Meta:
        managed = True
        db_table = 'exam_essdai_domain'


class ExamLabTest(models.Model):
    id = models.AutoField(db_column='ID', primary_key=True)  # Field name made lowercase.
    patient = models.ForeignKey('Patient', models.DO_NOTHING, db_column='PATIENT_ID')  # Field name made lowercase.
    test = models.ForeignKey('VocLabTest', models.DO_NOTHING, db_column='TEST_ID')  # Field name made lowercase.
    outcome_amount = models.ForeignKey(DtAmount, models.DO_NOTHING, db_column='OUTCOME_AMOUNT_ID', blank=True, null=True)  # Field name made lowercase.
    outcome_assessment = models.ForeignKey('VocAssessment', models.DO_NOTHING, db_column='OUTCOME_ASSESSMENT_ID', blank=True, null=True)  # Field name made lowercase.
    normal_range = models.ForeignKey(DtAmountRange, models.DO_NOTHING, db_column='NORMAL_RANGE_ID', blank=True, null=True)  # Field name made lowercase.
    outcome_term_id = models.PositiveIntegerField(db_column='OUTCOME_TERM_ID', blank=True, null=True)  # Field name made lowercase.
    sample_date = models.ForeignKey(DtDate, models.DO_NOTHING, db_column='SAMPLE_DATE_ID', blank=True, null=True)  # Field name made lowercase.
    visit = models.ForeignKey('PatientVisit', models.DO_NOTHING, db_column='VISIT_ID', blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = True
        db_table = 'exam_lab_test'


class ExamMedicalImagingTest(models.Model):
    id = models.AutoField(db_column='ID', primary_key=True)  # Field name made lowercase.
    patient = models.ForeignKey('Patient', models.DO_NOTHING, db_column='PATIENT_ID')  # Field name made lowercase.
    test = models.ForeignKey('VocMedicalImagingTest', models.DO_NOTHING, db_column='TEST_ID')  # Field name made lowercase.
    assessment = models.ForeignKey('VocAssessment', models.DO_NOTHING, db_column='ASSESSMENT_ID')  # Field name made lowercase.
    test_date = models.ForeignKey(DtDate, models.DO_NOTHING, db_column='TEST_DATE_ID', blank=True, null=True)  # Field name made lowercase.
    visit = models.ForeignKey('PatientVisit', models.DO_NOTHING, db_column='VISIT_ID')  # Field name made lowercase.

    class Meta:
        managed = True
        db_table = 'exam_medical_imaging_test'


class ExamQuestionnaireScore(models.Model):
    id = models.AutoField(db_column='ID', primary_key=True)  # Field name made lowercase.
    patient = models.ForeignKey('Patient', models.DO_NOTHING, db_column='PATIENT_ID')  # Field name made lowercase.
    score = models.ForeignKey('VocQuestionnaire', models.DO_NOTHING, db_column='SCORE_ID')  # Field name made lowercase.
    value = models.IntegerField(db_column='VALUE', blank=True, null=True)  # Field name made lowercase.
    assessment = models.ForeignKey('VocAssessment', models.DO_NOTHING, db_column='ASSESSMENT_ID', blank=True, null=True)  # Field name made lowercase.
    normal_range = models.ForeignKey(DtIntRange, models.DO_NOTHING, db_column='NORMAL_RANGE_ID', blank=True, null=True)  # Field name made lowercase.
    other_term_id = models.PositiveIntegerField(db_column='OTHER_TERM_ID', blank=True, null=True)  # Field name made lowercase.
    questionnaire_date = models.ForeignKey(DtDate, models.DO_NOTHING, db_column='QUESTIONNAIRE_DATE_ID', blank=True, null=True)  # Field name made lowercase.
    visit = models.ForeignKey('PatientVisit', models.DO_NOTHING, db_column='VISIT_ID', blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = True
        db_table = 'exam_questionnaire_score'


class IntervChemotherapy(models.Model):
    id = models.AutoField(db_column='ID', primary_key=True)  # Field name made lowercase.
    patient = models.ForeignKey('Patient', models.DO_NOTHING, db_column='PATIENT_ID')  # Field name made lowercase.
    due_to_pss = models.ForeignKey('VocConfirmation', models.DO_NOTHING, db_column='DUE_TO_PSS_ID', blank=True, null=True)  # Field name made lowercase.
    period = models.ForeignKey(DtPeriodOfTime, models.DO_NOTHING, db_column='PERIOD_ID', blank=True, null=True)  # Field name made lowercase.
    visit = models.ForeignKey('PatientVisit', models.DO_NOTHING, db_column='VISIT_ID')  # Field name made lowercase.

    class Meta:
        managed = True
        db_table = 'interv_chemotherapy'


class IntervMedication(models.Model):
    id = models.AutoField(db_column='ID', primary_key=True)  # Field name made lowercase.
    patient = models.ForeignKey('Patient', models.DO_NOTHING, db_column='PATIENT_ID')  # Field name made lowercase.
    medication = models.ForeignKey('VocPharmDrug', models.DO_NOTHING, db_column='MEDICATION_ID')  # Field name made lowercase.
    dosage = models.ForeignKey(DtAmount, models.DO_NOTHING, db_column='DOSAGE_ID', blank=True, null=True)  # Field name made lowercase.
    period = models.ForeignKey(DtPeriodOfTime, models.DO_NOTHING, db_column='PERIOD_ID', blank=True, null=True)  # Field name made lowercase.
    visit = models.ForeignKey('PatientVisit', models.DO_NOTHING, db_column='VISIT_ID', blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = True
        db_table = 'interv_medication'


class IntervSurgery(models.Model):
    id = models.AutoField(db_column='ID', primary_key=True)  # Field name made lowercase.
    patient = models.ForeignKey('Patient', models.DO_NOTHING, db_column='PATIENT_ID')  # Field name made lowercase.
    due_to_pss = models.ForeignKey('VocConfirmation', models.DO_NOTHING, db_column='DUE_TO_PSS_ID', blank=True, null=True)  # Field name made lowercase.
    surgery_date = models.ForeignKey(DtDate, models.DO_NOTHING, db_column='SURGERY_DATE_ID', blank=True, null=True)  # Field name made lowercase.
    visit = models.ForeignKey('PatientVisit', models.DO_NOTHING, db_column='VISIT_ID')  # Field name made lowercase.

    class Meta:
        managed = True
        db_table = 'interv_surgery'


class LifestyleSmoking(models.Model):
    id = models.AutoField(db_column='ID', primary_key=True)  # Field name made lowercase.
    patient = models.ForeignKey('Patient', models.DO_NOTHING, db_column='PATIENT_ID')  # Field name made lowercase.
    status = models.ForeignKey('VocSmokingStatus', models.DO_NOTHING, db_column='STATUS_ID')  # Field name made lowercase.
    amount = models.ForeignKey(DtAmount, models.DO_NOTHING, db_column='AMOUNT_ID', blank=True, null=True)  # Field name made lowercase.
    period = models.ForeignKey(DtPeriodOfTime, models.DO_NOTHING, db_column='PERIOD_ID', blank=True, null=True)  # Field name made lowercase.
    visit = models.ForeignKey('PatientVisit', models.DO_NOTHING, db_column='VISIT_ID', blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = True
        db_table = 'lifestyle_smoking'


class OtherClinicalTrials(models.Model):
    id = models.AutoField(db_column='ID', primary_key=True)  # Field name made lowercase.
    patient = models.ForeignKey('Patient', models.DO_NOTHING, db_column='PATIENT_ID')  # Field name made lowercase.
    period = models.ForeignKey(DtPeriodOfTime, models.DO_NOTHING, db_column='PERIOD_ID', blank=True, null=True)  # Field name made lowercase.
    visit = models.ForeignKey('PatientVisit', models.DO_NOTHING, db_column='VISIT_ID')  # Field name made lowercase.

    class Meta:
        managed = True
        db_table = 'other_clinical_trials'


class OtherFamilyHistory(models.Model):
    id = models.AutoField(db_column='ID', primary_key=True)  # Field name made lowercase.
    patient = models.ForeignKey('Patient', models.DO_NOTHING, db_column='PATIENT_ID')  # Field name made lowercase.
    medical_condition = models.ForeignKey('VocMedicalCondition', models.DO_NOTHING, db_column='MEDICAL_CONDITION_ID')  # Field name made lowercase.
    relative_degree = models.ForeignKey('VocRelativeDegree', models.DO_NOTHING, db_column='RELATIVE_DEGREE_ID', blank=True, null=True)  # Field name made lowercase.
    visit = models.ForeignKey('PatientVisit', models.DO_NOTHING, db_column='VISIT_ID')  # Field name made lowercase.

    class Meta:
        managed = True
        db_table = 'other_family_history'


class OtherHealthcareVisit(models.Model):
    id = models.AutoField(db_column='ID', primary_key=True)  # Field name made lowercase.
    patient = models.ForeignKey('Patient', models.DO_NOTHING, db_column='PATIENT_ID')  # Field name made lowercase.
    specialist = models.ForeignKey('VocSpecialist', models.DO_NOTHING, db_column='SPECIALIST_ID')  # Field name made lowercase.
    date = models.ForeignKey(DtDate, models.DO_NOTHING, db_column='DATE_ID', blank=True, null=True)  # Field name made lowercase.
    visit = models.ForeignKey('PatientVisit', models.DO_NOTHING, db_column='VISIT_ID')  # Field name made lowercase.

    class Meta:
        managed = True
        db_table = 'other_healthcare_visit'


class Patient(models.Model):
    id = models.AutoField(db_column='ID', primary_key=True)  # Field name made lowercase.
    uid = models.CharField(db_column='UID', unique=False, max_length=20)  # Field name made lowercase.
    date_of_birth = models.ForeignKey(DtDate, models.DO_NOTHING, db_column='DATE_OF_BIRTH_ID', blank=True, null=True,related_name='dob')  # Field name made lowercase.
    pss_symptoms_onset_date = models.ForeignKey(DtDate, models.DO_NOTHING, db_column='PSS_SYMPTOMS_ONSET_DATE_ID', blank=True, null=True,related_name='symptoms')  # Field name made lowercase.
    pss_diagnosis_date = models.ForeignKey(DtDate, models.DO_NOTHING, db_column='PSS_DIAGNOSIS_DATE_ID', blank=True, null=True,related_name='diagnosis')  # Field name made lowercase.
    cohort_inclusion_date = models.ForeignKey(DtDate, models.DO_NOTHING, db_column='COHORT_INCLUSION_DATE_ID', blank=True, null=True,related_name='inclusion')  # Field name made lowercase.

    class Meta:
        managed = True
        db_table = 'patient'

    def __str__(self):
        return 'patient(id-'+str(self.id) + ')'

class PatientVisit(models.Model):
    id = models.AutoField(db_column='ID', primary_key=True)  # Field name made lowercase.
    patient = models.ForeignKey(Patient, models.DO_NOTHING, db_column='PATIENT_ID')  # Field name made lowercase.
    visit_date = models.ForeignKey(DtDate, models.DO_NOTHING, db_column='VISIT_DATE_ID')  # Field name made lowercase.
    visit_type = models.ForeignKey('VocVisitType', models.DO_NOTHING, db_column='VISIT_TYPE_ID', blank=True, null=True)  # Field name made lowercase.
    visit_status = models.ForeignKey('VocVisitStatus', models.DO_NOTHING, db_column='VISIT_STATUS_ID')  # Field name made lowercase.

    class Meta:
        managed = True
        db_table = 'patient_visit'


class VocActivityLevel(models.Model):
    id = models.PositiveSmallIntegerField(db_column='ID', primary_key=True)  # Field name made lowercase.
    code = models.CharField(db_column='CODE', unique=True, max_length=15)  # Field name made lowercase.
    activity_level = models.CharField(db_column='ACTIVITY_LEVEL', max_length=10)  # Field name made lowercase.
    value = models.PositiveSmallIntegerField(db_column='VALUE')  # Field name made lowercase.

    class Meta:
        managed = True
        db_table = 'voc_activity_level'

    def __str__(self):
        return 'VocActivityLevel('+str(self.id) + ',' + str(self.code)+ ',' + str(self.value)+')'


class VocAnaPattern(models.Model):
    id = models.PositiveSmallIntegerField(db_column='ID', primary_key=True)  # Field name made lowercase.
    code = models.CharField(db_column='CODE', unique=True, max_length=15)  # Field name made lowercase.
    name = models.CharField(db_column='NAME', max_length=150)  # Field name made lowercase.

    class Meta:
        managed = True
        db_table = 'voc_ana_pattern'


    def __str__(self):
        return 'VocAnaPattern('+str(self.id) + ',' + str(self.code)+ ',' + str(self.name)+')'



class VocAssessment(models.Model):
    id = models.PositiveSmallIntegerField(db_column='ID', primary_key=True)  # Field name made lowercase.
    code = models.CharField(db_column='CODE', unique=True, max_length=15)  # Field name made lowercase.
    name = models.CharField(db_column='NAME', max_length=150)  # Field name made lowercase.
    broader_term = models.ForeignKey('self', models.DO_NOTHING, db_column='BROADER_TERM_ID', blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = True
        db_table = 'voc_assessment'


    def __str__(self):
        return 'VocAssessment('+str(self.id) + ',' + str(self.code)+ ',' + str(self.name)+')'


class VocBiopsy(models.Model):
    id = models.PositiveSmallIntegerField(db_column='ID', primary_key=True)  # Field name made lowercase.
    code = models.CharField(db_column='CODE', unique=True, max_length=15)  # Field name made lowercase.
    name = models.CharField(db_column='NAME', max_length=200)  # Field name made lowercase.
    broader_term = models.ForeignKey('self', models.DO_NOTHING, db_column='BROADER_TERM_ID', blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = True
        db_table = 'voc_biopsy'

    def __str__(self):
        return 'VocBiopsy('+str(self.id) + ',' + str(self.code)+ ',' + str(self.name)+')'


class VocBmiClass(models.Model):
    id = models.PositiveSmallIntegerField(db_column='ID', primary_key=True)  # Field name made lowercase.
    code = models.CharField(db_column='CODE', max_length=15)  # Field name made lowercase.
    name = models.CharField(db_column='NAME', max_length=100)  # Field name made lowercase.

    class Meta:
        managed = True
        db_table = 'voc_bmi_class'


class VocCaciCondition(models.Model):
    id = models.PositiveSmallIntegerField(db_column='ID', primary_key=True)  # Field name made lowercase.
    code = models.CharField(db_column='CODE', unique=True, max_length=20)  # Field name made lowercase.
    condition = models.CharField(db_column='CONDITION', max_length=150)  # Field name made lowercase.
    score = models.PositiveSmallIntegerField(db_column='SCORE')  # Field name made lowercase.

    class Meta:
        managed = True
        db_table = 'voc_caci_condition'

    def __str__(self):
        return 'VocCaciCondition('+str(self.id) + ',' + str(self.code)+ ',' + str(self.condition)+')'


class VocConfirmation(models.Model):
    id = models.AutoField(db_column='ID', primary_key=True)  # Field name made lowercase.
    code = models.CharField(db_column='CODE', unique=True, max_length=15)  # Field name made lowercase.
    name = models.CharField(db_column='NAME', max_length=150)  # Field name made lowercase.
    acronym = models.CharField(db_column='ACRONYM', unique=True, max_length=5)  # Field name made lowercase.

    class Meta:
        managed = True
        db_table = 'voc_confirmation'

    def __str__(self):
        return 'VocConfirmation('+str(self.id) + ',' + str(self.code)+ ',' + str(self.name)+')'

class VocCryoType(models.Model):
    id = models.PositiveSmallIntegerField(db_column='ID', primary_key=True)  # Field name made lowercase.
    code = models.CharField(db_column='CODE', unique=True, max_length=15)  # Field name made lowercase.
    name = models.CharField(db_column='NAME', max_length=150)  # Field name made lowercase.
    description = models.CharField(db_column='DESCRIPTION', max_length=255)  # Field name made lowercase.

    class Meta:
        managed = True
        db_table = 'voc_cryo_type'


class VocDirection(models.Model):
    id = models.IntegerField(db_column='ID', primary_key=True)  # Field name made lowercase.
    code = models.CharField(db_column='CODE', unique=True, max_length=15)  # Field name made lowercase.
    name = models.CharField(db_column='NAME', max_length=100)  # Field name made lowercase.
    acronym = models.CharField(db_column='ACRONYM', unique=True, max_length=5)  # Field name made lowercase.

    class Meta:
        managed = True
        db_table = 'voc_direction'

    def __str__(self):
        return 'VocDirection('+str(self.id) + ',' + str(self.code)+ ',' + str(self.name)+')'

class VocEducationLevel(models.Model):
    id = models.PositiveSmallIntegerField(db_column='ID', primary_key=True)  # Field name made lowercase.
    code = models.CharField(db_column='CODE', unique=True, max_length=15)  # Field name made lowercase.
    name = models.CharField(db_column='NAME', max_length=150)  # Field name made lowercase.
    description = models.TextField(db_column='DESCRIPTION')  # Field name made lowercase.

    class Meta:
        managed = True
        db_table = 'voc_education_level'

    def __str__(self):
        return 'VocEducationLevel('+str(self.id) + ',' + str(self.code)+ ',' + str(self.name)+')'

class VocEssdaiDomain(models.Model):
    id = models.PositiveSmallIntegerField(db_column='ID', primary_key=True)  # Field name made lowercase.
    code = models.CharField(db_column='CODE', unique=True, max_length=15)  # Field name made lowercase.
    domain_name = models.CharField(db_column='DOMAIN_NAME', max_length=100)  # Field name made lowercase.
    domain_weight = models.PositiveSmallIntegerField(db_column='DOMAIN_WEIGHT')  # Field name made lowercase.
    exclude_activity_level = models.ForeignKey(VocActivityLevel, models.DO_NOTHING, db_column='EXCLUDE_ACTIVITY_LEVEL', blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = True
        db_table = 'voc_essdai_domain'

    def __str__(self):
        return 'VocEssdaiDomain('+str(self.id) + ',' + str(self.code)+')'

class VocEthnicity(models.Model):
    id = models.PositiveSmallIntegerField(db_column='ID', primary_key=True)  # Field name made lowercase.
    code = models.CharField(db_column='CODE', unique=True, max_length=15)  # Field name made lowercase.
    name = models.CharField(db_column='NAME', max_length=150)  # Field name made lowercase.
    description = models.TextField(db_column='DESCRIPTION')  # Field name made lowercase.

    class Meta:
        managed = True
        db_table = 'voc_ethnicity'

    def __str__(self):
        return 'VocEthnicity('+str(self.id) + ',' + str(self.code)+ ',' + str(self.name)+')'

class VocExamOutcomeType(models.Model):
    id = models.AutoField(db_column='ID', primary_key=True)  # Field name made lowercase.
    code = models.CharField(db_column='CODE', unique=True, max_length=15)  # Field name made lowercase.
    name = models.CharField(db_column='NAME', max_length=100)  # Field name made lowercase.
    notes = models.CharField(db_column='NOTES', unique=True, max_length=255)  # Field name made lowercase.

    class Meta:
        managed = True
        db_table = 'voc_exam_outcome_type'

    def __str__(self):
        return 'VocExamOutcomeType('+str(self.id) + ',' + str(self.code)+ ',' + str(self.name)+')'

class VocIpiRisk(models.Model):
    id = models.PositiveSmallIntegerField(db_column='ID', primary_key=True)  # Field name made lowercase.
    code = models.CharField(db_column='CODE', max_length=15)  # Field name made lowercase.
    name = models.CharField(db_column='NAME', max_length=150)  # Field name made lowercase.
    description = models.CharField(db_column='DESCRIPTION', max_length=255)  # Field name made lowercase.

    class Meta:
        managed = True
        db_table = 'voc_ipi_risk'


class VocLabTest(models.Model):
    id = models.PositiveSmallIntegerField(db_column='ID', primary_key=True)  # Field name made lowercase.
    code = models.CharField(db_column='CODE', unique=True, max_length=10)  # Field name made lowercase.
    name = models.CharField(db_column='NAME', max_length=250)  # Field name made lowercase.
    outcome_value = models.ForeignKey(VocExamOutcomeType, models.DO_NOTHING, db_column='OUTCOME_VALUE_ID', blank=True, null=True)  # Field name made lowercase.
    unit = models.ForeignKey('VocUnit', models.DO_NOTHING, db_column='UNIT_ID', blank=True, null=True)  # Field name made lowercase.
    range_notes = models.CharField(db_column='RANGE_NOTES', max_length=200, blank=True, null=True)  # Field name made lowercase.
    broader_term = models.ForeignKey('self', models.DO_NOTHING, db_column='BROADER_TERM_ID', blank=True, null=True)  # Field name made lowercase.
    lab_test_type = models.ForeignKey('VocLabTestType', models.DO_NOTHING, db_column='LAB_TEST_TYPE_ID', blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = True
        db_table = 'voc_lab_test'

    def __str__(self):
        return 'VocLabTest('+str(self.id) + ',' + str(self.code)+ ',' + str(self.name)+')'


class VocLabTestType(models.Model):
    id = models.AutoField(db_column='ID', primary_key=True)  # Field name made lowercase.
    code = models.CharField(db_column='CODE', unique=True, max_length=15)  # Field name made lowercase.
    name = models.CharField(db_column='NAME', max_length=150)  # Field name made lowercase.

    class Meta:
        managed = True
        db_table = 'voc_lab_test_type'

    def __str__(self):
        return 'VocLabTestType('+str(self.id) + ',' + str(self.code)+ ',' + str(self.name)+')'

class VocLymphomaOrgan(models.Model):
    id = models.PositiveSmallIntegerField(db_column='ID', primary_key=True)  # Field name made lowercase.
    code = models.CharField(db_column='CODE', max_length=15)  # Field name made lowercase.
    name = models.CharField(db_column='NAME', max_length=150)  # Field name made lowercase.
    broader_term = models.ForeignKey('self', models.DO_NOTHING, db_column='BROADER_TERM_ID', blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = True
        db_table = 'voc_lymphoma_organ'

    def __str__(self):
        return 'VocLymphomaOrgan('+str(self.id) + ',' + str(self.code)+ ',' + str(self.name)+')'

class VocLymphomaStage(models.Model):
    id = models.PositiveSmallIntegerField(db_column='ID', primary_key=True)  # Field name made lowercase.
    code = models.CharField(db_column='CODE', unique=True, max_length=15)  # Field name made lowercase.
    name = models.CharField(db_column='NAME', max_length=100)  # Field name made lowercase.
    description = models.TextField(db_column='DESCRIPTION')  # Field name made lowercase.

    class Meta:
        managed = True
        db_table = 'voc_lymphoma_stage'

    def __str__(self):
        return 'VocLymphomaStage('+str(self.id) + ',' + str(self.code)+ ',' + str(self.name)+')'

class VocMedicalCondition(models.Model):
    id = models.PositiveSmallIntegerField(db_column='ID', primary_key=True)  # Field name made lowercase.
    code = models.CharField(db_column='CODE', unique=True, max_length=15)  # Field name made lowercase.
    name = models.CharField(db_column='NAME', max_length=200)  # Field name made lowercase.
    aka = models.CharField(db_column='AKA', max_length=250, blank=True, null=True)  # Field name made lowercase.
    broader_term = models.ForeignKey('self', models.DO_NOTHING, db_column='BROADER_TERM_ID', blank=True, null=True)  # Field name made lowercase.
    family_history = models.CharField(db_column='FAMILY_HISTORY', max_length=1, blank=True, null=True)  # Field name made lowercase.
    comorbidities = models.CharField(db_column='COMORBIDITIES', max_length=1, blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = True
        db_table = 'voc_medical_condition'

    def __str__(self):
        return 'VocMedicalCondition('+str(self.id) + ',' + str(self.code)+ ',' + str(self.name)+')'

class VocMedicalImagingTest(models.Model):
    id = models.PositiveSmallIntegerField(db_column='ID', primary_key=True)  # Field name made lowercase.
    code = models.CharField(db_column='CODE', unique=True, max_length=15)  # Field name made lowercase.
    name = models.CharField(db_column='NAME', max_length=200)  # Field name made lowercase.
    outcome_type = models.ForeignKey(VocExamOutcomeType, models.DO_NOTHING, db_column='OUTCOME_TYPE_ID', blank=True, null=True)  # Field name made lowercase.
    category_id = models.SmallIntegerField(db_column='CATEGORY_ID')  # Field name made lowercase.

    class Meta:
        managed = True
        db_table = 'voc_medical_imaging_test'

    def __str__(self):
        return 'VocMedicalImagingTest('+str(self.id) + ',' + str(self.code)+ ',' + str(self.name)+')'

class VocPerformanceStatus(models.Model):
    id = models.PositiveSmallIntegerField(db_column='ID', primary_key=True)  # Field name made lowercase.
    code = models.CharField(db_column='CODE', max_length=15)  # Field name made lowercase.
    name = models.CharField(db_column='NAME', max_length=100)  # Field name made lowercase.
    description = models.CharField(db_column='DESCRIPTION', max_length=255)  # Field name made lowercase.

    class Meta:
        managed = True
        db_table = 'voc_performance_status'


class VocPharmDrug(models.Model):
    id = models.PositiveSmallIntegerField(db_column='ID', primary_key=True)  # Field name made lowercase.
    code = models.CharField(db_column='CODE', unique=True, max_length=15)  # Field name made lowercase.
    name = models.CharField(db_column='NAME', max_length=200)  # Field name made lowercase.
    aka = models.CharField(db_column='AKA', max_length=255, blank=True, null=True)  # Field name made lowercase.
    dosage_unit = models.ForeignKey('VocUnit', models.DO_NOTHING, db_column='DOSAGE_UNIT_ID', blank=True, null=True)  # Field name made lowercase.
    broader_term = models.ForeignKey('self', models.DO_NOTHING, db_column='BROADER_TERM_ID', blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = True
        db_table = 'voc_pharm_drug'

    def __str__(self):
        return 'VocPharmDrug('+str(self.id) + ',' + str(self.code)+ ',' + str(self.name)+')'

class VocPregnancyOutcome(models.Model):
    id = models.PositiveSmallIntegerField(db_column='ID', primary_key=True)  # Field name made lowercase.
    code = models.CharField(db_column='CODE', unique=True, max_length=15)  # Field name made lowercase.
    name = models.CharField(db_column='NAME', max_length=200)  # Field name made lowercase.
    description = models.TextField(db_column='DESCRIPTION', blank=True, null=True)  # Field name made lowercase.
    broader_term = models.ForeignKey('self', models.DO_NOTHING, db_column='BROADER_TERM_ID', blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = True
        db_table = 'voc_pregnancy_outcome'

    def __str__(self):
        return 'VocPreganancyOutcome('+str(self.id) + ',' + str(self.code)+ ',' + str(self.name)+')'

class VocQuestionnaire(models.Model):
    id = models.PositiveSmallIntegerField(db_column='ID', primary_key=True)  # Field name made lowercase.
    code = models.CharField(db_column='CODE', max_length=15)  # Field name made lowercase.
    name = models.CharField(db_column='NAME', max_length=200)  # Field name made lowercase.
    acronym = models.CharField(db_column='ACRONYM', unique=True, max_length=15, blank=True, null=True)  # Field name made lowercase.
    score_type = models.ForeignKey(VocExamOutcomeType, models.DO_NOTHING, db_column='SCORE_TYPE_ID', blank=True, null=True)  # Field name made lowercase.
    score_notes = models.CharField(db_column='SCORE_NOTES', max_length=255, blank=True, null=True)  # Field name made lowercase.
    score_normal_range = models.CharField(db_column='SCORE_NORMAL_RANGE', max_length=255, blank=True, null=True)  # Field name made lowercase.
    broader_term = models.ForeignKey('self', models.DO_NOTHING, db_column='BROADER_TERM_ID', blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = True
        db_table = 'voc_questionnaire'

    def __str__(self):
        return 'VocQuestionnaire('+str(self.id) + ',' + str(self.code)+ ',' + str(self.name)+')'

class VocRelativeDegree(models.Model):
    id = models.PositiveSmallIntegerField(db_column='ID', primary_key=True)  # Field name made lowercase.
    code = models.CharField(db_column='CODE', unique=True, max_length=15)  # Field name made lowercase.
    value = models.CharField(db_column='VALUE', max_length=100)  # Field name made lowercase.

    class Meta:
        managed = True
        db_table = 'voc_relative_degree'


class VocSex(models.Model):
    id = models.PositiveSmallIntegerField(db_column='ID', primary_key=True)  # Field name made lowercase.
    code = models.CharField(db_column='CODE', unique=True, max_length=15)  # Field name made lowercase.
    name = models.CharField(db_column='NAME', max_length=100)  # Field name made lowercase.

    class Meta:
        managed = True
        db_table = 'voc_sex'

    def __str__(self):
        return 'VocSex('+str(self.id) + ',' + str(self.code)+ ',' + str(self.name)+')'


class VocSmokingStatus(models.Model):
    id = models.PositiveSmallIntegerField(db_column='ID', primary_key=True)  # Field name made lowercase.
    code = models.CharField(db_column='CODE', unique=True, max_length=15)  # Field name made lowercase.
    name = models.CharField(db_column='NAME', max_length=100)  # Field name made lowercase.
    description = models.CharField(db_column='DESCRIPTION', max_length=250)  # Field name made lowercase.

    class Meta:
        managed = True
        db_table = 'voc_smoking_status'

    def __str__(self):
        return 'VocSmokingStatus('+str(self.id) + ',' + str(self.code)+ ',' + str(self.name)+')'

class VocSpecialist(models.Model):
    id = models.PositiveSmallIntegerField(db_column='ID', primary_key=True)  # Field name made lowercase.
    code = models.CharField(db_column='CODE', max_length=15)  # Field name made lowercase.
    name = models.CharField(db_column='NAME', max_length=100)  # Field name made lowercase.

    class Meta:
        managed = True
        db_table = 'voc_specialist'

    def __str__(self):
        return 'VocSpecialist('+str(self.id) + ',' + str(self.code)+ ',' + str(self.name)+')'

class VocSymptomSign(models.Model):
    id = models.PositiveSmallIntegerField(db_column='ID', primary_key=True)  # Field name made lowercase.
    code = models.CharField(db_column='CODE', unique=True, max_length=15)  # Field name made lowercase.
    name = models.CharField(db_column='NAME', max_length=150)  # Field name made lowercase.
    broader_term = models.ForeignKey('self', models.DO_NOTHING, db_column='BROADER_TERM_ID', blank=True, null=True)  # Field name made lowercase.
    category_id = models.PositiveSmallIntegerField(db_column='CATEGORY_ID', blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = True
        db_table = 'voc_symptom_sign'

    def __str__(self):
        return 'VocSymptomSign('+str(self.id) + ',' + str(self.code)+ ',' + str(self.name)+')'

class VocUnit(models.Model):
    id = models.PositiveSmallIntegerField(db_column='ID', primary_key=True)  # Field name made lowercase.
    code = models.CharField(db_column='CODE', unique=True, max_length=10)  # Field name made lowercase.
    expression = models.CharField(db_column='EXPRESSION', unique=True, max_length=20)  # Field name made lowercase.
    name = models.CharField(db_column='NAME', max_length=100)  # Field name made lowercase.

    class Meta:
        managed = True
        db_table = 'voc_unit'

    def __str__(self):
        return 'VocUnit('+str(self.id) + ',' + str(self.code)+ ',' + str(self.expression)+')'

class VocVisitStatus(models.Model):
    id = models.PositiveSmallIntegerField(db_column='ID', primary_key=True)  # Field name made lowercase.
    code = models.CharField(db_column='CODE', max_length=15)  # Field name made lowercase.
    name = models.CharField(db_column='NAME', max_length=150)  # Field name made lowercase.
    description = models.CharField(db_column='DESCRIPTION', max_length=255)  # Field name made lowercase.

    class Meta:
        managed = True
        db_table = 'voc_visit_status'

    def __str__(self):
        return 'VocVisitStatus('+str(self.id) + ',' + str(self.code)+ ',' + str(self.name)+')'

class VocVisitType(models.Model):
    id = models.PositiveSmallIntegerField(db_column='ID', primary_key=True)  # Field name made lowercase.
    code = models.CharField(db_column='CODE', max_length=15)  # Field name made lowercase.
    name = models.CharField(db_column='NAME', max_length=150)  # Field name made lowercase.
    description = models.CharField(db_column='DESCRIPTION', max_length=255, blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = True
        db_table = 'voc_visit_type'

    def __str__(self):
        return 'VocVisitType('+str(self.id) + ',' + str(self.code)+ ',' + str(self.name)+')'
