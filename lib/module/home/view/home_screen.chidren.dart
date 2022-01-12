part of 'home_screen.dart';

extension HomeScreenChildren on HomeScreen {
  Widget _toolbar() {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 12,
      ),
      margin: EdgeInsets.only(top: 16, bottom: 8),
      child: Row(
        children: [
          InkWell(
              onTap: () {
                exit(0);
              },
              child: Icon(
                Icons.arrow_back_ios,
                color: Colors.black,
                size: 20,
              )),
          Text(
            'Back',
            style: TextAppStyle().titleToolBar(),
          )
        ],
      ),
    );
  }

  Widget _itemImage(String url, num vote) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 7,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(6),
        child: Stack(
          alignment: Alignment.topRight,
          children: [
            imageFromNetWork(
                url: NetWorking.urlImageView + url,
                width: (Get.width / 2) - 20,
                fill: true,
                height: 250),
            _vote(vote),
          ],
        ),
      ),
    );
  }

  Widget _vote(num vote) {
    int interNumber = int.parse(vote.toString().split(".")[0]);
    int surplus = 0;
    if (vote.toString().split(".").length > 1) {
      surplus = int.parse(vote.toString().split(".")[1]);
    }

    return Container(
      height: 30,
      width: 30,
      margin: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
      padding: EdgeInsets.all(2),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          stops: [0.1, 0.5, 0.7, 0.9],
          colors: [
            Colors.orange.shade400,
            Colors.orange.shade600,
            Colors.pink.shade700,
            Colors.pink.shade800,
          ],
        ),
      ),
      child: Stack(
        children: [
          Text(
            interNumber.toString(),
            style: TextAppStyle().textWiteStyle(),
          ),
          Container(
              margin: EdgeInsets.only(left: 10),
              child: Text('.$surplus',
                  style: TextAppStyle().textWiteSmallStyle())),
        ],
      ),
    );
  }
}
