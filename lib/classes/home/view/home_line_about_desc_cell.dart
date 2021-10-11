import 'package:flutter/material.dart';

class HomeLineAboutDescCell extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(15),
      child: Text(
          "比特币（Bitcoin）的概念最初由中本聪在2008年11月1日提出，并于2009年1月3日正式诞生 [1]  。根据中本聪的思路设计发布的开源软件以及建构其上的P2P网络。比特币是一种P2P形式的虚拟的加密数字货币。点对点的传输意味着一个去中心化的支付系统。与所有的货币不同，比特币不依靠特定货币机构发行，它依据特定算法，通过大量的计算产生，比特币经济使用整个P2P网络中众多节点构成的分布式数据库来确认并记录所有的交易行为，并使用密码学的设计来确保货币流通各个环节安全性。P2P的去中心化特性与算法本身可以确保无法通过大量制造比特币来人为操控币值。基于密码学的设计可以使比特币只能被真实的拥有者转移或支付。这同样确保了货币所有权与流通交易的匿名性。比特币与其他虚拟货币最大的不同，是其总数量非常有限，具有极强的稀缺性。"),
    );
  }
}
