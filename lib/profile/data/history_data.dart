

class HistoryData {
  final String Historyplantname;
  final String Historytime;
  final String Historydate;
  final String HistoryStatus;

  HistoryData({
    required this.Historyplantname,
    required this.Historytime,
    required this.Historydate,
    required this.HistoryStatus,
  });

  static List<HistoryData> historydata = [
    HistoryData(
        Historyplantname: 'Cili Padi Centil',
        Historytime: '5:48 P.M',
        Historydate: '4/3/2002',
        HistoryStatus: 'Watered'),
    HistoryData(
        Historyplantname: 'Cili Padi Bara',
        Historytime: '10:00 A.M',
        Historydate: '4/3/2002',
        HistoryStatus: 'Harvested')
  ];
}
