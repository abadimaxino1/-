// ... ضمن Drawer:
ListTile(
  title: Text('التنبيهات الذكية'),
  onTap: () {
    Navigator.push(context, MaterialPageRoute(builder: (_) => AlertReportsScreen()));
  },
),
ListTile(
  title: Text('مقارنة سنة بسنة'),
  onTap: () {
    Navigator.push(context, MaterialPageRoute(builder: (_) => ComparisonReportScreen()));
  },
),
ListTile(
  title: Text('أهداف مقترحة'),
  onTap: () {
    Navigator.push(context, MaterialPageRoute(builder: (_) => AISuggestedGoalsScreen()));
  },
),
ListTile(
  title: Text('الصحة المالية'),
  onTap: () {
    Navigator.push(context, MaterialPageRoute(builder: (_) => FinancialHealthDashboard()));
  },
),
ListTile(
  title: Text('فرص التوفير'),
  onTap: () {
    Navigator.push(context, MaterialPageRoute(builder: (_) => SavingOpportunitiesScreen()));
  },
),
ListTile(
  title: Text('المصاريف غير المتوقعة'),
  onTap: () {
    Navigator.push(context, MaterialPageRoute(builder: (_) => UnexpectedExpensesScreen()));
  },
),
ListTile(
  title: Text('تحليل الالتزام بالأهداف'),
  onTap: () {
    Navigator.push(context, MaterialPageRoute(builder: (_) => GoalCommitmentScreen()));
  },
),
ListTile(
  title: Text('تنبيهات المواعيد المالية'),
  onTap: () {
    Navigator.push(context, MaterialPageRoute(builder: (_) => UpcomingPaymentsScreen()));
  },
),
