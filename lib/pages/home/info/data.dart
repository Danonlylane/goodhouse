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
      title: '置业选择 | 珠江新城 三室一厅 广州的隔江眺望',
      imageUrl:
          'https://tva1.sinaimg.cn/large/008i3skNgy1gsu64d1yyyj30ik0awabs.jpg',
      source: "新华网",
      time: "两天前",
      navigateUrl: 'login'),
  const InfoItem(
      title: '置业选择 | 安贞西里 三室一厅 河间的古雅别院',
      imageUrl:
          'https://tva1.sinaimg.cn/large/008i3skNgy1gsu65bbztrj30ks0cugmw.jpg',
      source: "新华网",
      time: "两天前",
      navigateUrl: 'login'),
  const InfoItem(
      title: '置业选择 | 安贞西里 三室一厅 河间的古雅别院',
      imageUrl:
          'https://tva1.sinaimg.cn/large/008i3skNgy1gsu66qegzmj30ki0c0abf.jpg',
      source: "新华网",
      time: "两天前",
      navigateUrl: 'login'),
  const InfoItem(
      title: '置业选择 | 安贞西里 三室一厅 河间的古雅别院',
      imageUrl:
          'https://tva1.sinaimg.cn/large/008i3skNgy1gsu67i9v77j30io0cejt4.jpg',
      source: "新华网",
      time: "两天前",
      navigateUrl: 'login'),
  const InfoItem(
      title: '置业选择 | 安贞西里 三室一厅 河间的古雅别院',
      imageUrl:
          'https://tva1.sinaimg.cn/large/008i3skNgy1gsu68f9pyuj30m20ccgnp.jpg',
      source: "新华网",
      time: "两天前",
      navigateUrl: 'login'),
];
