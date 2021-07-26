// 资讯数据准备,注意下面的格式

class InfoItem {
  final String title;
  final String imageUrl;
  final String source;
  final String time;
  final String navigateUrl;
  const InfoItem(
      {required this.title,
      required this.imageUrl,
      required this.source,
      required this.time,
      required this.navigateUrl});
}

const List<InfoItem> infoData = [
  const InfoItem(
      title: '置业选择 | 安贞西里 三室一厅 河间的古雅别院',
      imageUrl:
          'https://wx2.sinaimg.cn/mw1024/005SQLxwly1g6f89l4obbj305v04fjsw.jpg',
      source: "新华网",
      time: "两天前",
      navigateUrl: 'login'),
  const InfoItem(
      title: '置业选择 | 安贞西里 三室一厅 河间的古雅别院',
      imageUrl:
          'https://wx2.sinaimg.cn/mw1024/005SQLxwly1g6f89l4obbj305v04fjsw.jpg',
      source: "新华网",
      time: "两天前",
      navigateUrl: 'login'),
  const InfoItem(
      title: '置业选择 | 安贞西里 三室一厅 河间的古雅别院',
      imageUrl:
          'https://wx2.sinaimg.cn/mw1024/005SQLxwly1g6f89l4obbj305v04fjsw.jpg',
      source: "新华网",
      time: "两天前",
      navigateUrl: 'login'),
];
