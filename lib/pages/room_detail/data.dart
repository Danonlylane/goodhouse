class RoomDetailData {
  String? id;
  String? title;
  String? community;
  String? subTitle;
  int? size;
  String? floor;
  int? price;
  String? roomType;
  List<String>? houseImgs;
  List<String>? tags;
  List<String>? oriented;
  List<String>? applicances;

  RoomDetailData({
    this.id,
    this.title,
    this.community,
    this.subTitle,
    this.size,
    this.roomType,
    this.houseImgs,
    this.tags,
    this.price,
    this.floor,
    this.oriented,
    this.applicances,
  });
}

var defaultData = RoomDetailData(
    id: '1111',
    title: '整租 中山路 历史最低价',
    community: '中山花园',
    subTitle:
        '近地铁，附近有商场！看昨天的我们 走远了明天，你好明天，你好在命运广场中央 等待那模糊的 肩膀越奔跑 越渺小曾经 肩往前的 伙伴在举杯 祝福后都 走散只是那个 夜晚深深 的都留藏在心坎长大以后 我只能奔跑我多害怕 中跌倒明天你好 含着泪微笑越美好 越害怕得到每一次哭又笑着 奔跑一边失去 一边在寻找明天你好 声音多渺小却提醒我勇敢是什么当我朝着反方向走去在楼梯的角落 找勇气抖着肩膀 哭泣问自己 在哪里曾经 并肩往前 的伙伴沉默着 懂得我的委屈时间它总说谎我从 不曾失去 那些肩膀长大以后我只能奔跑我多害怕 黑暗中跌倒明天你好 含着泪微笑越美好 越害怕得到每一次哭又笑着奔跑一边失去 一边在寻找明天你好声音多渺小却提醒我勇敢是什么',
    size: 100,
    floor: '高楼层',
    price: 3000,
    oriented: ['南'],
    roomType: '三室',
    applicances: ['衣柜', '洗衣机'],
    tags: ["近地铁", "集中供暖", "新上", "随时看房"],
    houseImgs: [
      'http://ww3.sinaimg.cn/large/006y8mN6ly1g6e2tdgve1j30ku0bsn75.jpg',
      'http://ww3.sinaimg.cn/large/006y8mN6ly1g6e2whp87sj30ku0bstec.jpg',
      'http://ww3.sinaimg.cn/large/006y8mN6ly1g6e2tl1v3bj30ku0bs77z.jpg',
    ]);
