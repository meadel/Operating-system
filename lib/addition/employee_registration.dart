import 'package:flutter/material.dart';
import 'package:operating_sys/core/widgets/custom_button.dart';
import 'package:operating_sys/features/auth/widgets/customtextfromauth.dart';

class EmployeeRegistration extends StatefulWidget {
  const EmployeeRegistration({super.key});
  static const routeName = "employeeregistration";

  @override
  State<EmployeeRegistration> createState() => _EmployeeRegistrationState();
}

class _EmployeeRegistrationState extends State<EmployeeRegistration> {
  List<String> jobsList = [
    '',
    'مدير المبيعات',
    'مشرف مبيعات',
    'مندوب مبيعات',
    'مندوب توصيل',
    'مشرف كبار عملاء',
    'عامل',
    'امين مستودع',
    'محاسب',
    'مدير ادارى',
    'نظم معلومات ادارية'
  ];
  String? selectItam = '';

  List<String> branchList = [
    '',
    'الرياض',
    'جدة',
    'مكة',
    'المدينة المنورة',
    'الدمام',
    'تبوك',
    'بريدة',
    'الطائف',
    'سلطانة',
    'الخرج',
    'بريدة',
    'خميس مشيط',
    'الهفوف',
    'المبرز',
    'حفر الباطن',
    'حائل',
    'القصيم',
    'نجران',
    'الجبيل',
    'أبها',
    'ينبع',
    'الخبر',
    'عنيزة',
    'عرار',
    'سكاكا',
    'جازان',
    'القريات',
    'الظهران',
    'القطيف',
    'الباحة',
  ];
  String? selectItambranch = '';

  List<String> contractList = [
    '',
    'عقد محدد المدة',
    'عقد مفتوح',
  ];
  String? selectItamcontract = '';

  List<String> gendertList = [
    '',
    'ذكر',
    'أنثى',
  ];
  String? selectItamgendert = '';

  List<String> maritalStatusList = [
    '',
    'اعزب',
    'متزوج',
  ];
  String? selectItammaritalStatus = '';

  List<String> religionList = [
    '',
    'مسلم',
    'اخرى',
  ];
  String? selectItamreligion = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
        child: ListView(
          children: [
            const SizedBox(
              height: 40,
            ),
            CustomTextFormAuth(
              hinttext: "الرقم الوظيفي",
              labeltext: "Job ID",
              iconData: Icons.badge_rounded,
              valid: (val) {
                return null;
              },
              isNumber: true,
            ),
            CustomTextFormAuth(
              hinttext: "اسم الموظف",
              labeltext: "Employee Name",
              iconData: Icons.person_rounded,
              valid: (val) {
                return null;
              },
              isNumber: false,
            ),
            CustomTextFormAuth(
              hinttext: "رقم الهوية",
              labeltext: "ID Number",
              iconData: Icons.badge_outlined,
              valid: (val) {
                return null;
              },
              isNumber: true,
            ),
            CustomTextFormAuth(
              hinttext: "الجنسية",
              labeltext: "Nationality",
              iconData: Icons.language_outlined,
              valid: (val) {
                return null;
              },
              isNumber: false,
            ),
            CustomTextFormAuth(
              hinttext: "الرقم الهاتف",
              labeltext: "Mobile Number",
              iconData: Icons.phone_android,
              valid: (val) {
                return null;
              },
              isNumber: true,
            ),
            CustomTextFormAuth(
              hinttext: "تاريخ الميلاد",
              labeltext: "Date of Birth",
              iconData: Icons.calendar_month_outlined,
              valid: (val) {
                return null;
              },
              isNumber: false,
            ),
            CustomTextFormAuth(
              hinttext: "تاريخ الانضمام",
              labeltext: "Date of Hiring",
              iconData: Icons.calendar_month_outlined,
              valid: (val) {
                return null;
              },
              isNumber: false,
            ),
            const Text("نوع العقد"),
            const SizedBox(
              height: 4,
            ),
            Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.grey,
                  width: 1,
                ),
                borderRadius: BorderRadius.circular(
                  15,
                ),
              ),
              child: DropdownButton<String>(
                dropdownColor: Colors.white,
                // icon: Icon(Icons.arrow_drop_down_circle),
                // iconSize: 36,
                isExpanded: true,
                underline: const SizedBox(),
                alignment: Alignment.center,
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 19,
                ),
                value: selectItamcontract,
                items: contractList
                    .map(
                      (item) => DropdownMenuItem(
                        value: item,
                        child: Center(
                          child: Text(
                            item,
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    )
                    .toList(),
                onChanged: (item) => setState(() => selectItamcontract = item),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text("المسمى الوظيفى"),
            const SizedBox(
              height: 4,
            ),
            Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.grey,
                  width: 1,
                ),
                borderRadius: BorderRadius.circular(
                  15,
                ),
              ),
              child: DropdownButton<String>(
                dropdownColor: Colors.white,
                // icon: Icon(Icons.arrow_drop_down_circle),
                // iconSize: 36,
                isExpanded: true,
                underline: const SizedBox(),
                alignment: Alignment.center,
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 19,
                ),
                value: selectItam,
                items: jobsList
                    .map(
                      (item) => DropdownMenuItem(
                        value: item,
                        child: Center(
                          child: Text(
                            item,
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    )
                    .toList(),
                onChanged: (item) => setState(() => selectItam = item),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text("الفرع"),
            const SizedBox(
              height: 4,
            ),
            Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.grey,
                  width: 1,
                ),
                borderRadius: BorderRadius.circular(
                  15,
                ),
              ),
              child: DropdownButton<String>(
                dropdownColor: Colors.white,
                // icon: Icon(Icons.arrow_drop_down_circle),
                // iconSize: 36,
                isExpanded: true,
                underline: const SizedBox(),
                alignment: Alignment.center,
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 19,
                ),
                value: selectItambranch,
                items: branchList
                    .map(
                      (item) => DropdownMenuItem(
                        value: item,
                        child: Center(
                          child: Text(
                            item,
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    )
                    .toList(),
                onChanged: (item) => setState(() => selectItambranch = item),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text("النوع"),
            const SizedBox(
              height: 4,
            ),
            Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.grey,
                  width: 1,
                ),
                borderRadius: BorderRadius.circular(
                  15,
                ),
              ),
              child: DropdownButton<String>(
                dropdownColor: Colors.white,
                // icon: Icon(Icons.arrow_drop_down_circle),
                // iconSize: 36,
                isExpanded: true,
                underline: const SizedBox(),
                alignment: Alignment.center,
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 19,
                ),
                value: selectItamgendert,
                items: gendertList
                    .map(
                      (item) => DropdownMenuItem(
                        value: item,
                        child: Center(
                          child: Text(
                            item,
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    )
                    .toList(),
                onChanged: (item) => setState(() => selectItamgendert = item),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text("الحالة الاجتماعية"),
            const SizedBox(
              height: 4,
            ),
            Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.grey,
                  width: 1,
                ),
                borderRadius: BorderRadius.circular(
                  15,
                ),
              ),
              child: DropdownButton<String>(
                dropdownColor: Colors.white,
                // icon: Icon(Icons.arrow_drop_down_circle),
                // iconSize: 36,
                isExpanded: true,
                underline: const SizedBox(),
                alignment: Alignment.center,
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 19,
                ),
                value: selectItammaritalStatus,
                items: maritalStatusList
                    .map(
                      (item) => DropdownMenuItem(
                        value: item,
                        child: Center(
                          child: Text(
                            item,
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    )
                    .toList(),
                onChanged: (item) =>
                    setState(() => selectItammaritalStatus = item),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text("الديانة"),
            const SizedBox(
              height: 4,
            ),
            Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.grey,
                  width: 1,
                ),
                borderRadius: BorderRadius.circular(
                  15,
                ),
              ),
              child: DropdownButton<String>(
                dropdownColor: Colors.white,
                // icon: Icon(Icons.arrow_drop_down_circle),
                // iconSize: 36,
                isExpanded: true,
                underline: const SizedBox(),
                alignment: Alignment.center,
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 19,
                ),
                value: selectItamreligion,
                items: religionList
                    .map(
                      (item) => DropdownMenuItem(
                        value: item,
                        child: Center(
                          child: Text(
                            item,
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    )
                    .toList(),
                onChanged: (item) => setState(() => selectItamreligion = item),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            CustomButton(
              onPressed: () {},
              text: "أضافة موظف",
              backgroundColor: Colors.blue,
            ),
            const SizedBox(
              height: 50,
            ),
          ],
        ),
      ),
    );
  }
}
