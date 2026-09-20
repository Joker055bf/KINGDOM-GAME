.class public final Landroidx/compose/ui/focus/FocusOwnerImpl;
.super Ljava/lang/Object;
.source "FocusOwnerImpl.kt"

# interfaces
.implements Landroidx/compose/ui/focus/FocusOwner;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/focus/FocusOwnerImpl$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFocusOwnerImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FocusOwnerImpl.kt\nandroidx/compose/ui/focus/FocusOwnerImpl\n+ 2 FocusTransactionManager.kt\nandroidx/compose/ui/focus/FocusTransactionManager\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 MutableVector.kt\nandroidx/compose/runtime/collection/MutableVector\n+ 5 NodeKind.kt\nandroidx/compose/ui/node/Nodes\n+ 6 DelegatableNode.kt\nandroidx/compose/ui/node/DelegatableNodeKt\n+ 7 Modifier.kt\nandroidx/compose/ui/Modifier$Node\n+ 8 DelegatingNode.kt\nandroidx/compose/ui/node/DelegatingNode\n+ 9 MutableVector.kt\nandroidx/compose/runtime/collection/MutableVectorKt\n+ 10 ListUtils.kt\nandroidx/compose/ui/util/ListUtilsKt\n+ 11 NodeKind.kt\nandroidx/compose/ui/node/NodeKind\n+ 12 InlineClassHelper.kt\nandroidx/compose/ui/internal/InlineClassHelperKt\n*L\n1#1,419:1\n360#1:446\n361#1:463\n363#1:509\n349#1:580\n350#1:652\n351#1:659\n352#1,2:706\n354#1:754\n355#1:761\n360#1:763\n361#1:780\n363#1:826\n349#1:828\n350#1:900\n351#1:907\n352#1,2:954\n354#1:1002\n355#1:1009\n360#1:1011\n361#1:1028\n363#1:1074\n349#1:1076\n350#1:1148\n351#1:1155\n352#1,2:1202\n354#1:1250\n355#1:1257\n59#2,5:420\n64#2,6:428\n43#2,4:434\n47#2,4:441\n1#3:425\n1#3:438\n1#3:449\n1#3:518\n1#3:589\n1#3:766\n1#3:837\n1#3:1014\n1#3:1085\n1#3:1266\n1#3:1429\n1#3:1527\n728#4,2:426\n728#4,2:439\n102#5:445\n102#5:510\n102#5:579\n110#5:762\n110#5:827\n104#5:1010\n104#5:1075\n96#5,7:1488\n96#5:1521\n255#6:447\n62#6:448\n63#6,8:450\n432#6,5:458\n437#6:464\n442#6,2:466\n444#6,8:471\n452#6,9:482\n461#6,8:494\n72#6,7:502\n283#6:511\n251#6,5:512\n62#6:517\n63#6,8:519\n432#6,5:527\n284#6:532\n437#6:533\n442#6,2:535\n444#6,8:540\n452#6,9:551\n461#6,8:563\n72#6,7:571\n286#6:578\n274#6,2:581\n251#6,5:583\n62#6:588\n63#6,8:590\n432#6,5:598\n276#6,3:603\n437#6:606\n442#6,2:608\n444#6,8:613\n452#6,9:624\n461#6,8:636\n72#6,7:644\n279#6:651\n432#6,12:660\n444#6,8:675\n452#6,9:686\n461#6,8:698\n432#6,12:708\n444#6,8:723\n452#6,9:734\n461#6,8:746\n255#6:764\n62#6:765\n63#6,8:767\n432#6,5:775\n437#6:781\n442#6,2:783\n444#6,8:788\n452#6,9:799\n461#6,8:811\n72#6,7:819\n274#6,2:829\n251#6,5:831\n62#6:836\n63#6,8:838\n432#6,5:846\n276#6,3:851\n437#6:854\n442#6,2:856\n444#6,8:861\n452#6,9:872\n461#6,8:884\n72#6,7:892\n279#6:899\n432#6,12:908\n444#6,8:923\n452#6,9:934\n461#6,8:946\n432#6,12:956\n444#6,8:971\n452#6,9:982\n461#6,8:994\n255#6:1012\n62#6:1013\n63#6,8:1015\n432#6,5:1023\n437#6:1029\n442#6,2:1031\n444#6,8:1036\n452#6,9:1047\n461#6,8:1059\n72#6,7:1067\n274#6,2:1077\n251#6,5:1079\n62#6:1084\n63#6,8:1086\n432#6,5:1094\n276#6,3:1099\n437#6:1102\n442#6,2:1104\n444#6,8:1109\n452#6,9:1120\n461#6,8:1132\n72#6,7:1140\n279#6:1147\n432#6,12:1156\n444#6,8:1171\n452#6,9:1182\n461#6,8:1194\n432#6,12:1204\n444#6,8:1219\n452#6,9:1230\n461#6,8:1242\n274#6,2:1258\n251#6,5:1260\n62#6:1265\n63#6,8:1267\n432#6,5:1275\n276#6,3:1280\n437#6:1283\n442#6,2:1285\n444#6,8:1290\n452#6,9:1301\n461#6,8:1313\n72#6,7:1321\n279#6:1328\n432#6,6:1335\n442#6,2:1342\n444#6,8:1347\n452#6,9:1358\n461#6,8:1370\n432#6,6:1378\n442#6,2:1385\n444#6,8:1390\n452#6,9:1401\n461#6,8:1413\n255#6:1427\n62#6:1428\n63#6,8:1430\n432#6,6:1438\n442#6,2:1445\n444#6,8:1450\n452#6,9:1461\n461#6,8:1473\n72#6,7:1481\n193#6,12:1496\n205#6,6:1515\n212#6,3:1523\n197#6:1526\n249#7:465\n249#7:534\n249#7:607\n249#7:782\n249#7:855\n249#7:1030\n249#7:1103\n249#7:1284\n249#7:1341\n249#7:1384\n249#7:1444\n249#7:1522\n245#8,3:468\n248#8,3:491\n245#8,3:537\n248#8,3:560\n245#8,3:610\n248#8,3:633\n245#8,3:672\n248#8,3:695\n245#8,3:720\n248#8,3:743\n245#8,3:785\n248#8,3:808\n245#8,3:858\n248#8,3:881\n245#8,3:920\n248#8,3:943\n245#8,3:968\n248#8,3:991\n245#8,3:1033\n248#8,3:1056\n245#8,3:1106\n248#8,3:1129\n245#8,3:1168\n248#8,3:1191\n245#8,3:1216\n248#8,3:1239\n245#8,3:1287\n248#8,3:1310\n245#8,3:1344\n248#8,3:1367\n245#8,3:1387\n248#8,3:1410\n245#8,3:1447\n248#8,3:1470\n1208#9:479\n1187#9,2:480\n1208#9:548\n1187#9,2:549\n1208#9:621\n1187#9,2:622\n1208#9:683\n1187#9,2:684\n1208#9:731\n1187#9,2:732\n1208#9:796\n1187#9,2:797\n1208#9:869\n1187#9,2:870\n1208#9:931\n1187#9,2:932\n1208#9:979\n1187#9,2:980\n1208#9:1044\n1187#9,2:1045\n1208#9:1117\n1187#9,2:1118\n1208#9:1179\n1187#9,2:1180\n1208#9:1227\n1187#9,2:1228\n1208#9:1298\n1187#9,2:1299\n1208#9:1355\n1187#9,2:1356\n1208#9:1398\n1187#9,2:1399\n1208#9:1458\n1187#9,2:1459\n51#10,6:653\n33#10,6:755\n51#10,6:901\n33#10,6:1003\n51#10,6:1149\n33#10,6:1251\n51#10,6:1329\n33#10,6:1421\n53#11:1495\n42#12,7:1508\n*S KotlinDebug\n*F\n+ 1 FocusOwnerImpl.kt\nandroidx/compose/ui/focus/FocusOwnerImpl\n*L\n268#1:446\n268#1:463\n268#1:509\n271#1:580\n271#1:652\n271#1:659\n271#1:706,2\n271#1:754\n271#1:761\n287#1:763\n287#1:780\n287#1:826\n289#1:828\n289#1:900\n289#1:907\n289#1:954,2\n289#1:1002\n289#1:1009\n307#1:1011\n307#1:1028\n307#1:1074\n309#1:1076\n309#1:1148\n309#1:1155\n309#1:1202,2\n309#1:1250\n309#1:1257\n148#1:420,5\n148#1:428,6\n177#1:434,4\n177#1:441,4\n148#1:425\n177#1:438\n268#1:449\n269#1:518\n271#1:589\n287#1:766\n289#1:837\n307#1:1014\n309#1:1085\n349#1:1266\n360#1:1429\n148#1:426,2\n177#1:439,2\n268#1:445\n269#1:510\n272#1:579\n287#1:762\n290#1:827\n307#1:1010\n310#1:1075\n378#1:1488,7\n379#1:1521\n268#1:447\n268#1:448\n268#1:450,8\n268#1:458,5\n268#1:464\n268#1:466,2\n268#1:471,8\n268#1:482,9\n268#1:494,8\n268#1:502,7\n269#1:511\n269#1:512,5\n269#1:517\n269#1:519,8\n269#1:527,5\n269#1:532\n269#1:533\n269#1:535,2\n269#1:540,8\n269#1:551,9\n269#1:563,8\n269#1:571,7\n269#1:578\n271#1:581,2\n271#1:583,5\n271#1:588\n271#1:590,8\n271#1:598,5\n271#1:603,3\n271#1:606\n271#1:608,2\n271#1:613,8\n271#1:624,9\n271#1:636,8\n271#1:644,7\n271#1:651\n271#1:660,12\n271#1:675,8\n271#1:686,9\n271#1:698,8\n271#1:708,12\n271#1:723,8\n271#1:734,9\n271#1:746,8\n287#1:764\n287#1:765\n287#1:767,8\n287#1:775,5\n287#1:781\n287#1:783,2\n287#1:788,8\n287#1:799,9\n287#1:811,8\n287#1:819,7\n289#1:829,2\n289#1:831,5\n289#1:836\n289#1:838,8\n289#1:846,5\n289#1:851,3\n289#1:854\n289#1:856,2\n289#1:861,8\n289#1:872,9\n289#1:884,8\n289#1:892,7\n289#1:899\n289#1:908,12\n289#1:923,8\n289#1:934,9\n289#1:946,8\n289#1:956,12\n289#1:971,8\n289#1:982,9\n289#1:994,8\n307#1:1012\n307#1:1013\n307#1:1015,8\n307#1:1023,5\n307#1:1029\n307#1:1031,2\n307#1:1036,8\n307#1:1047,9\n307#1:1059,8\n307#1:1067,7\n309#1:1077,2\n309#1:1079,5\n309#1:1084\n309#1:1086,8\n309#1:1094,5\n309#1:1099,3\n309#1:1102\n309#1:1104,2\n309#1:1109,8\n309#1:1120,9\n309#1:1132,8\n309#1:1140,7\n309#1:1147\n309#1:1156,12\n309#1:1171,8\n309#1:1182,9\n309#1:1194,8\n309#1:1204,12\n309#1:1219,8\n309#1:1230,9\n309#1:1242,8\n349#1:1258,2\n349#1:1260,5\n349#1:1265\n349#1:1267,8\n349#1:1275,5\n349#1:1280,3\n349#1:1283\n349#1:1285,2\n349#1:1290,8\n349#1:1301,9\n349#1:1313,8\n349#1:1321,7\n349#1:1328\n351#1:1335,6\n351#1:1342,2\n351#1:1347,8\n351#1:1358,9\n351#1:1370,8\n353#1:1378,6\n353#1:1385,2\n353#1:1390,8\n353#1:1401,9\n353#1:1413,8\n360#1:1427\n360#1:1428\n360#1:1430,8\n360#1:1438,6\n360#1:1445,2\n360#1:1450,8\n360#1:1461,9\n360#1:1473,8\n360#1:1481,7\n378#1:1496,12\n378#1:1515,6\n378#1:1523,3\n378#1:1526\n268#1:465\n269#1:534\n271#1:607\n287#1:782\n289#1:855\n307#1:1030\n309#1:1103\n349#1:1284\n351#1:1341\n353#1:1384\n360#1:1444\n379#1:1522\n268#1:468,3\n268#1:491,3\n269#1:537,3\n269#1:560,3\n271#1:610,3\n271#1:633,3\n271#1:672,3\n271#1:695,3\n271#1:720,3\n271#1:743,3\n287#1:785,3\n287#1:808,3\n289#1:858,3\n289#1:881,3\n289#1:920,3\n289#1:943,3\n289#1:968,3\n289#1:991,3\n307#1:1033,3\n307#1:1056,3\n309#1:1106,3\n309#1:1129,3\n309#1:1168,3\n309#1:1191,3\n309#1:1216,3\n309#1:1239,3\n349#1:1287,3\n349#1:1310,3\n351#1:1344,3\n351#1:1367,3\n353#1:1387,3\n353#1:1410,3\n360#1:1447,3\n360#1:1470,3\n268#1:479\n268#1:480,2\n269#1:548\n269#1:549,2\n271#1:621\n271#1:622,2\n271#1:683\n271#1:684,2\n271#1:731\n271#1:732,2\n287#1:796\n287#1:797,2\n289#1:869\n289#1:870,2\n289#1:931\n289#1:932,2\n289#1:979\n289#1:980,2\n307#1:1044\n307#1:1045,2\n309#1:1117\n309#1:1118,2\n309#1:1179\n309#1:1180,2\n309#1:1227\n309#1:1228,2\n349#1:1298\n349#1:1299,2\n351#1:1355\n351#1:1356,2\n353#1:1398\n353#1:1399,2\n360#1:1458\n360#1:1459,2\n271#1:653,6\n271#1:755,6\n289#1:901,6\n289#1:1003,6\n309#1:1149,6\n309#1:1251,6\n350#1:1329,6\n354#1:1421,6\n378#1:1495\n378#1:1508,7\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00a0\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u000f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\t\u0008\u0000\u0018\u00002\u00020\u0001B\u00aa\u0001\u0012\u0018\u0010\u0002\u001a\u0014\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00050\u0004\u0012\u0004\u0012\u00020\u00050\u0003\u0012:\u0010\u0006\u001a6\u0012\u0015\u0012\u0013\u0018\u00010\u0008\u00a2\u0006\u000c\u0008\t\u0012\u0008\u0008\n\u0012\u0004\u0008\u0008(\u000b\u0012\u0015\u0012\u0013\u0018\u00010\u000c\u00a2\u0006\u000c\u0008\t\u0012\u0008\u0008\n\u0012\u0004\u0008\u0008(\r\u0012\u0004\u0012\u00020\u000e0\u0007\u0012!\u0010\u000f\u001a\u001d\u0012\u0013\u0012\u00110\u0008\u00a2\u0006\u000c\u0008\t\u0012\u0008\u0008\n\u0012\u0004\u0008\u0008(\u000b\u0012\u0004\u0012\u00020\u000e0\u0003\u0012\u000c\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004\u0012\u000e\u0010\u0011\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u000c0\u0004\u0012\u000c\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\u00130\u0004\u00a2\u0006\u0002\u0010\u0014J\u0010\u0010+\u001a\u00020\u00052\u0006\u0010,\u001a\u00020\u000eH\u0016J2\u0010+\u001a\u00020\u000e2\u0006\u0010,\u001a\u00020\u000e2\u0006\u0010-\u001a\u00020\u000e2\u0006\u0010.\u001a\u00020\u000e2\u0006\u0010\u000b\u001a\u00020\u0008H\u0016\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008/\u00100J\u001a\u00101\u001a\u00020\u000e2\u0006\u00102\u001a\u000203H\u0016\u00f8\u0001\u0000\u00a2\u0006\u0004\u00084\u00105J(\u00106\u001a\u00020\u000e2\u0006\u00102\u001a\u0002032\u000c\u00107\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\u0004H\u0016\u00f8\u0001\u0000\u00a2\u0006\u0004\u00088\u00109J\u0010\u0010:\u001a\u00020\u000e2\u0006\u0010;\u001a\u00020<H\u0016J:\u0010=\u001a\u0004\u0018\u00010\u000e2\u0006\u0010\u000b\u001a\u00020\u00082\u0008\u0010>\u001a\u0004\u0018\u00010\u000c2\u0012\u0010?\u001a\u000e\u0012\u0004\u0012\u00020\"\u0012\u0004\u0012\u00020\u000e0\u0003H\u0016\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008@\u0010AJ\n\u0010B\u001a\u0004\u0018\u00010\u000cH\u0016J\u0008\u0010C\u001a\u00020\u0005H\u0002J\u001a\u0010D\u001a\u00020\u000e2\u0006\u0010\u000b\u001a\u00020\u0008H\u0016\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008E\u0010FJ\u0008\u0010G\u001a\u00020\u0005H\u0016J$\u0010H\u001a\u00020\u000e2\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u00082\u0008\u0010\r\u001a\u0004\u0018\u00010\u000cH\u0016\u00f8\u0001\u0000\u00a2\u0006\u0002\u0008IJ\u0010\u0010J\u001a\u00020\u00052\u0006\u0010K\u001a\u00020LH\u0016J\u0010\u0010J\u001a\u00020\u00052\u0006\u0010K\u001a\u00020MH\u0016J\u0010\u0010J\u001a\u00020\u00052\u0006\u0010K\u001a\u00020\"H\u0016J$\u0010N\u001a\u00020\u000e2\u0006\u0010\u000b\u001a\u00020\u00082\u0008\u0010\r\u001a\u0004\u0018\u00010\u000cH\u0016\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008O\u0010PJ\u001a\u0010Q\u001a\u00020\u000e2\u0006\u00102\u001a\u000203H\u0002\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008R\u00105J\u000e\u0010S\u001a\u0004\u0018\u00010T*\u00020UH\u0002J3\u0010V\u001a\u0004\u0018\u0001HW\"\n\u0008\u0000\u0010W\u0018\u0001*\u00020X*\u00020U2\u000c\u0010Y\u001a\u0008\u0012\u0004\u0012\u0002HW0ZH\u0082\u0008\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008[\u0010\\Jg\u0010]\u001a\u00020\u0005\"\n\u0008\u0000\u0010W\u0018\u0001*\u00020U*\u00020U2\u000c\u0010Y\u001a\u0008\u0012\u0004\u0012\u0002HW0Z2\u0012\u0010^\u001a\u000e\u0012\u0004\u0012\u0002HW\u0012\u0004\u0012\u00020\u00050\u00032\u000c\u0010_\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00042\u0012\u0010`\u001a\u000e\u0012\u0004\u0012\u0002HW\u0012\u0004\u0012\u00020\u00050\u0003H\u0082\u0008\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008a\u0010bR\u000e\u0010\u0015\u001a\u00020\u0016X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0017\u001a\u00020\u0018X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0019\u0010\u001aR\u0010\u0010\u001b\u001a\u0004\u0018\u00010\u001cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u001d\u001a\u00020\u001eX\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001f\u0010 R\u0014\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0011\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u000c0\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\u00130\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R)\u0010\u000f\u001a\u001d\u0012\u0013\u0012\u00110\u0008\u00a2\u0006\u000c\u0008\t\u0012\u0008\u0008\n\u0012\u0004\u0008\u0008(\u000b\u0012\u0004\u0012\u00020\u000e0\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000RB\u0010\u0006\u001a6\u0012\u0015\u0012\u0013\u0018\u00010\u0008\u00a2\u0006\u000c\u0008\t\u0012\u0008\u0008\n\u0012\u0004\u0008\u0008(\u000b\u0012\u0015\u0012\u0013\u0018\u00010\u000c\u00a2\u0006\u000c\u0008\t\u0012\u0008\u0008\n\u0012\u0004\u0008\u0008(\r\u0012\u0004\u0012\u00020\u000e0\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010!\u001a\u00020\"X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008#\u0010$\"\u0004\u0008%\u0010&R\u0014\u0010\'\u001a\u00020(8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008)\u0010*\u0082\u0002\u0007\n\u0005\u0008\u00a1\u001e0\u0001\u00a8\u0006c"
    }
    d2 = {
        "Landroidx/compose/ui/focus/FocusOwnerImpl;",
        "Landroidx/compose/ui/focus/FocusOwner;",
        "onRequestApplyChangesListener",
        "Lkotlin/Function1;",
        "Lkotlin/Function0;",
        "",
        "onRequestFocusForOwner",
        "Lkotlin/Function2;",
        "Landroidx/compose/ui/focus/FocusDirection;",
        "Lkotlin/ParameterName;",
        "name",
        "focusDirection",
        "Landroidx/compose/ui/geometry/Rect;",
        "previouslyFocusedRect",
        "",
        "onMoveFocusInterop",
        "onClearFocusForOwner",
        "onFocusRectInterop",
        "onLayoutDirection",
        "Landroidx/compose/ui/unit/LayoutDirection;",
        "(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V",
        "focusInvalidationManager",
        "Landroidx/compose/ui/focus/FocusInvalidationManager;",
        "focusTransactionManager",
        "Landroidx/compose/ui/focus/FocusTransactionManager;",
        "getFocusTransactionManager",
        "()Landroidx/compose/ui/focus/FocusTransactionManager;",
        "keysCurrentlyDown",
        "Landroidx/collection/MutableLongSet;",
        "modifier",
        "Landroidx/compose/ui/Modifier;",
        "getModifier",
        "()Landroidx/compose/ui/Modifier;",
        "rootFocusNode",
        "Landroidx/compose/ui/focus/FocusTargetNode;",
        "getRootFocusNode$ui_release",
        "()Landroidx/compose/ui/focus/FocusTargetNode;",
        "setRootFocusNode$ui_release",
        "(Landroidx/compose/ui/focus/FocusTargetNode;)V",
        "rootState",
        "Landroidx/compose/ui/focus/FocusState;",
        "getRootState",
        "()Landroidx/compose/ui/focus/FocusState;",
        "clearFocus",
        "force",
        "refreshFocusEvents",
        "clearOwnerFocus",
        "clearFocus-I7lrPNg",
        "(ZZZI)Z",
        "dispatchInterceptedSoftKeyboardEvent",
        "keyEvent",
        "Landroidx/compose/ui/input/key/KeyEvent;",
        "dispatchInterceptedSoftKeyboardEvent-ZmokQxo",
        "(Landroid/view/KeyEvent;)Z",
        "dispatchKeyEvent",
        "onFocusedItem",
        "dispatchKeyEvent-YhN2O0w",
        "(Landroid/view/KeyEvent;Lkotlin/jvm/functions/Function0;)Z",
        "dispatchRotaryEvent",
        "event",
        "Landroidx/compose/ui/input/rotary/RotaryScrollEvent;",
        "focusSearch",
        "focusedRect",
        "onFound",
        "focusSearch-ULY8qGw",
        "(ILandroidx/compose/ui/geometry/Rect;Lkotlin/jvm/functions/Function1;)Ljava/lang/Boolean;",
        "getFocusRect",
        "invalidateOwnerFocusState",
        "moveFocus",
        "moveFocus-3ESFkO8",
        "(I)Z",
        "releaseFocus",
        "requestFocusForOwner",
        "requestFocusForOwner-7o62pno",
        "scheduleInvalidation",
        "node",
        "Landroidx/compose/ui/focus/FocusEventModifierNode;",
        "Landroidx/compose/ui/focus/FocusPropertiesModifierNode;",
        "takeFocus",
        "takeFocus-aToIllA",
        "(ILandroidx/compose/ui/geometry/Rect;)Z",
        "validateKeyEvent",
        "validateKeyEvent-ZmokQxo",
        "lastLocalKeyInputNode",
        "Landroidx/compose/ui/Modifier$Node;",
        "Landroidx/compose/ui/node/DelegatableNode;",
        "nearestAncestorIncludingSelf",
        "T",
        "",
        "type",
        "Landroidx/compose/ui/node/NodeKind;",
        "nearestAncestorIncludingSelf-64DMado",
        "(Landroidx/compose/ui/node/DelegatableNode;I)Ljava/lang/Object;",
        "traverseAncestorsIncludingSelf",
        "onPreVisit",
        "onVisit",
        "onPostVisit",
        "traverseAncestorsIncludingSelf-QFhIj7k",
        "(Landroidx/compose/ui/node/DelegatableNode;ILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;)V",
        "ui_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final $stable:I = 0x8


# instance fields
.field private final focusInvalidationManager:Landroidx/compose/ui/focus/FocusInvalidationManager;

.field private final focusTransactionManager:Landroidx/compose/ui/focus/FocusTransactionManager;

.field private keysCurrentlyDown:Landroidx/collection/MutableLongSet;

.field private final modifier:Landroidx/compose/ui/Modifier;

.field private final onClearFocusForOwner:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final onFocusRectInterop:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Landroidx/compose/ui/geometry/Rect;",
            ">;"
        }
    .end annotation
.end field

.field private final onLayoutDirection:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Landroidx/compose/ui/unit/LayoutDirection;",
            ">;"
        }
    .end annotation
.end field

.field private final onMoveFocusInterop:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Landroidx/compose/ui/focus/FocusDirection;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final onRequestFocusForOwner:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "Landroidx/compose/ui/focus/FocusDirection;",
            "Landroidx/compose/ui/geometry/Rect;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private rootFocusNode:Landroidx/compose/ui/focus/FocusTargetNode;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/ui/focus/FocusDirection;",
            "-",
            "Landroidx/compose/ui/geometry/Rect;",
            "Ljava/lang/Boolean;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/focus/FocusDirection;",
            "Ljava/lang/Boolean;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "Landroidx/compose/ui/geometry/Rect;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "+",
            "Landroidx/compose/ui/unit/LayoutDirection;",
            ">;)V"
        }
    .end annotation

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p2, p0, Landroidx/compose/ui/focus/FocusOwnerImpl;->onRequestFocusForOwner:Lkotlin/jvm/functions/Function2;

    .line 60
    iput-object p3, p0, Landroidx/compose/ui/focus/FocusOwnerImpl;->onMoveFocusInterop:Lkotlin/jvm/functions/Function1;

    .line 61
    iput-object p4, p0, Landroidx/compose/ui/focus/FocusOwnerImpl;->onClearFocusForOwner:Lkotlin/jvm/functions/Function0;

    .line 62
    iput-object p5, p0, Landroidx/compose/ui/focus/FocusOwnerImpl;->onFocusRectInterop:Lkotlin/jvm/functions/Function0;

    .line 63
    iput-object p6, p0, Landroidx/compose/ui/focus/FocusOwnerImpl;->onLayoutDirection:Lkotlin/jvm/functions/Function0;

    .line 66
    new-instance p2, Landroidx/compose/ui/focus/FocusTargetNode;

    invoke-direct {p2}, Landroidx/compose/ui/focus/FocusTargetNode;-><init>()V

    iput-object p2, p0, Landroidx/compose/ui/focus/FocusOwnerImpl;->rootFocusNode:Landroidx/compose/ui/focus/FocusTargetNode;

    .line 68
    new-instance p2, Landroidx/compose/ui/focus/FocusInvalidationManager;

    .line 70
    new-instance p3, Landroidx/compose/ui/focus/FocusOwnerImpl$focusInvalidationManager$1;

    invoke-direct {p3, p0}, Landroidx/compose/ui/focus/FocusOwnerImpl$focusInvalidationManager$1;-><init>(Ljava/lang/Object;)V

    check-cast p3, Lkotlin/jvm/functions/Function0;

    .line 68
    invoke-direct {p2, p1, p3}, Landroidx/compose/ui/focus/FocusInvalidationManager;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)V

    iput-object p2, p0, Landroidx/compose/ui/focus/FocusOwnerImpl;->focusInvalidationManager:Landroidx/compose/ui/focus/FocusInvalidationManager;

    .line 73
    new-instance p1, Landroidx/compose/ui/focus/FocusTransactionManager;

    invoke-direct {p1}, Landroidx/compose/ui/focus/FocusTransactionManager;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/focus/FocusOwnerImpl;->focusTransactionManager:Landroidx/compose/ui/focus/FocusTransactionManager;

    .line 80
    sget-object p1, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast p1, Landroidx/compose/ui/Modifier;

    .line 85
    sget-object p2, Landroidx/compose/ui/focus/FocusOwnerImpl$modifier$1;->INSTANCE:Landroidx/compose/ui/focus/FocusOwnerImpl$modifier$1;

    check-cast p2, Lkotlin/jvm/functions/Function1;

    invoke-static {p1, p2}, Landroidx/compose/ui/focus/FocusPropertiesKt;->focusProperties(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object p1

    .line 87
    new-instance p2, Landroidx/compose/ui/focus/FocusOwnerImpl$modifier$2;

    invoke-direct {p2, p0}, Landroidx/compose/ui/focus/FocusOwnerImpl$modifier$2;-><init>(Landroidx/compose/ui/focus/FocusOwnerImpl;)V

    check-cast p2, Landroidx/compose/ui/Modifier;

    .line 86
    invoke-interface {p1, p2}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/ui/focus/FocusOwnerImpl;->modifier:Landroidx/compose/ui/Modifier;

    return-void
.end method

.method public static final synthetic access$invalidateOwnerFocusState(Landroidx/compose/ui/focus/FocusOwnerImpl;)V
    .locals 0

    .line 56
    invoke-direct {p0}, Landroidx/compose/ui/focus/FocusOwnerImpl;->invalidateOwnerFocusState()V

    return-void
.end method

.method private final invalidateOwnerFocusState()V
    .locals 2

    .line 338
    iget-object v0, p0, Landroidx/compose/ui/focus/FocusOwnerImpl;->rootFocusNode:Landroidx/compose/ui/focus/FocusTargetNode;

    invoke-virtual {v0}, Landroidx/compose/ui/focus/FocusTargetNode;->getFocusState()Landroidx/compose/ui/focus/FocusStateImpl;

    move-result-object v0

    sget-object v1, Landroidx/compose/ui/focus/FocusStateImpl;->Inactive:Landroidx/compose/ui/focus/FocusStateImpl;

    if-ne v0, v1, :cond_0

    .line 339
    iget-object v0, p0, Landroidx/compose/ui/focus/FocusOwnerImpl;->onClearFocusForOwner:Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private final lastLocalKeyInputNode(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/Modifier$Node;
    .locals 5

    const/16 v0, 0x400

    .line 1488
    invoke-static {v0}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v1

    const/16 v2, 0x2000

    .line 1494
    invoke-static {v2}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v2

    or-int/2addr v1, v2

    .line 1507
    invoke-interface {p1}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/compose/ui/Modifier$Node;->isAttached()Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "visitLocalDescendants called on an unattached node"

    .line 1512
    invoke-static {v2}, Landroidx/compose/ui/internal/InlineClassHelperKt;->throwIllegalStateException(Ljava/lang/String;)V

    .line 1515
    :cond_0
    invoke-interface {p1}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object p1

    .line 1516
    invoke-virtual {p1}, Landroidx/compose/ui/Modifier$Node;->getAggregateChildKindSet$ui_release()I

    move-result v2

    and-int/2addr v2, v1

    const/4 v3, 0x0

    if-eqz v2, :cond_4

    .line 1517
    invoke-virtual {p1}, Landroidx/compose/ui/Modifier$Node;->getChild$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_4

    .line 1519
    invoke-virtual {p1}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v2

    and-int/2addr v2, v1

    if-eqz v2, :cond_3

    .line 1521
    invoke-static {v0}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v2

    .line 1522
    invoke-virtual {p1}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v4

    and-int/2addr v2, v4

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_2

    return-object v3

    :cond_2
    move-object v3, p1

    .line 1523
    :cond_3
    invoke-virtual {p1}, Landroidx/compose/ui/Modifier$Node;->getChild$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object p1

    goto :goto_0

    :cond_4
    return-object v3
.end method

.method private final synthetic nearestAncestorIncludingSelf-64DMado(Landroidx/compose/ui/node/DelegatableNode;I)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/compose/ui/node/DelegatableNode;",
            "I)TT;"
        }
    .end annotation

    .line 1428
    invoke-interface {p1}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/ui/Modifier$Node;->isAttached()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1430
    invoke-interface {p1}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v0

    .line 1431
    invoke-static {p1}, Landroidx/compose/ui/node/DelegatableNodeKt;->requireLayoutNode(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/LayoutNode;

    move-result-object p1

    :goto_0
    const/4 v1, 0x0

    if-eqz p1, :cond_d

    .line 1433
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->getNodes$ui_release()Landroidx/compose/ui/node/NodeChain;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/compose/ui/node/NodeChain;->getHead$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v2

    .line 1434
    invoke-virtual {v2}, Landroidx/compose/ui/Modifier$Node;->getAggregateChildKindSet$ui_release()I

    move-result v2

    and-int/2addr v2, p2

    if-eqz v2, :cond_b

    :goto_1
    if-eqz v0, :cond_b

    .line 1436
    invoke-virtual {v0}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v2

    and-int/2addr v2, p2

    if-eqz v2, :cond_a

    .line 1437
    move-object v2, v0

    check-cast v2, Landroidx/compose/ui/Modifier$Node;

    move-object v2, v0

    move-object v3, v1

    :goto_2
    if-eqz v2, :cond_a

    const/4 v4, 0x3

    const-string v5, "T"

    .line 1441
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    instance-of v4, v2, Ljava/lang/Object;

    if-eqz v4, :cond_0

    return-object v2

    .line 1443
    :cond_0
    move-object v4, v2

    check-cast v4, Landroidx/compose/ui/Modifier$Node;

    .line 1444
    invoke-virtual {v2}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v4

    and-int/2addr v4, p2

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v4, :cond_1

    move v4, v6

    goto :goto_3

    :cond_1
    move v4, v5

    :goto_3
    if-eqz v4, :cond_9

    .line 1443
    instance-of v4, v2, Landroidx/compose/ui/node/DelegatingNode;

    if-eqz v4, :cond_9

    .line 1446
    move-object v4, v2

    check-cast v4, Landroidx/compose/ui/node/DelegatingNode;

    .line 1447
    invoke-virtual {v4}, Landroidx/compose/ui/node/DelegatingNode;->getDelegate$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v4

    move v7, v5

    :goto_4
    if-eqz v4, :cond_8

    .line 1449
    move-object v8, v4

    check-cast v8, Landroidx/compose/ui/Modifier$Node;

    .line 1444
    invoke-virtual {v4}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v8

    and-int/2addr v8, p2

    if-eqz v8, :cond_2

    move v8, v6

    goto :goto_5

    :cond_2
    move v8, v5

    :goto_5
    if-eqz v8, :cond_7

    add-int/lit8 v7, v7, 0x1

    if-ne v7, v6, :cond_3

    move-object v2, v4

    goto :goto_6

    .line 1457
    :cond_3
    move-object v8, v3

    check-cast v8, Landroidx/compose/runtime/collection/MutableVector;

    if-nez v3, :cond_4

    .line 1460
    new-instance v3, Landroidx/compose/runtime/collection/MutableVector;

    const/16 v8, 0x10

    new-array v8, v8, [Landroidx/compose/ui/Modifier$Node;

    invoke-direct {v3, v8, v5}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    .line 1458
    move-object v8, v3

    check-cast v8, Landroidx/compose/runtime/collection/MutableVector;

    .line 1461
    :cond_4
    move-object v8, v2

    check-cast v8, Landroidx/compose/ui/Modifier$Node;

    if-eqz v2, :cond_6

    .line 1463
    move-object v8, v3

    check-cast v8, Landroidx/compose/runtime/collection/MutableVector;

    if-eqz v3, :cond_5

    invoke-virtual {v3, v2}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    :cond_5
    move-object v2, v1

    .line 1466
    :cond_6
    move-object v8, v3

    check-cast v8, Landroidx/compose/runtime/collection/MutableVector;

    if-eqz v3, :cond_7

    invoke-virtual {v3, v4}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    .line 1470
    :cond_7
    :goto_6
    invoke-virtual {v4}, Landroidx/compose/ui/Modifier$Node;->getChild$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v4

    goto :goto_4

    :cond_8
    if-ne v7, v6, :cond_9

    goto :goto_2

    .line 1478
    :cond_9
    move-object v2, v3

    check-cast v2, Landroidx/compose/runtime/collection/MutableVector;

    invoke-static {v3}, Landroidx/compose/ui/node/DelegatableNodeKt;->access$pop(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    move-result-object v2

    goto :goto_2

    .line 1481
    :cond_a
    invoke-virtual {v0}, Landroidx/compose/ui/Modifier$Node;->getParent$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v0

    goto/16 :goto_1

    .line 1484
    :cond_b
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->getParent$ui_release()Landroidx/compose/ui/node/LayoutNode;

    move-result-object p1

    if-eqz p1, :cond_c

    .line 1485
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->getNodes$ui_release()Landroidx/compose/ui/node/NodeChain;

    move-result-object v0

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Landroidx/compose/ui/node/NodeChain;->getTail$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v0

    goto/16 :goto_0

    :cond_c
    move-object v0, v1

    goto/16 :goto_0

    :cond_d
    return-object v1

    .line 1428
    :cond_e
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string/jumbo p2, "visitAncestors called on an unattached node"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final synthetic traverseAncestorsIncludingSelf-QFhIj7k(Landroidx/compose/ui/node/DelegatableNode;ILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroidx/compose/ui/node/DelegatableNode;",
            ">(",
            "Landroidx/compose/ui/node/DelegatableNode;",
            "I",
            "Lkotlin/jvm/functions/Function1<",
            "-TT;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-TT;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p3

    move-object/from16 v1, p5

    .line 1265
    invoke-interface/range {p1 .. p1}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/compose/ui/Modifier$Node;->isAttached()Z

    move-result v2

    if-eqz v2, :cond_28

    .line 1267
    invoke-interface/range {p1 .. p1}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/compose/ui/Modifier$Node;->getParent$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v2

    .line 1268
    invoke-static/range {p1 .. p1}, Landroidx/compose/ui/node/DelegatableNodeKt;->requireLayoutNode(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/LayoutNode;

    move-result-object v3

    const/4 v4, 0x0

    move-object v5, v4

    :goto_0
    const/16 v6, 0x10

    const-string v7, "T"

    const/4 v8, 0x3

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-eqz v3, :cond_e

    .line 1270
    invoke-virtual {v3}, Landroidx/compose/ui/node/LayoutNode;->getNodes$ui_release()Landroidx/compose/ui/node/NodeChain;

    move-result-object v11

    invoke-virtual {v11}, Landroidx/compose/ui/node/NodeChain;->getHead$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v11

    .line 1271
    invoke-virtual {v11}, Landroidx/compose/ui/Modifier$Node;->getAggregateChildKindSet$ui_release()I

    move-result v11

    and-int v11, v11, p2

    if-eqz v11, :cond_c

    :goto_1
    if-eqz v2, :cond_c

    .line 1273
    invoke-virtual {v2}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v11

    and-int v11, v11, p2

    if-eqz v11, :cond_b

    .line 1274
    move-object v11, v2

    check-cast v11, Landroidx/compose/ui/Modifier$Node;

    move-object v11, v2

    move-object v12, v4

    :goto_2
    if-eqz v11, :cond_b

    .line 1278
    invoke-static {v8, v7}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    instance-of v13, v11, Ljava/lang/Object;

    if-eqz v13, :cond_1

    if-nez v5, :cond_0

    .line 1280
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    check-cast v5, Ljava/util/List;

    .line 1281
    :cond_0
    move-object v13, v5

    check-cast v13, Ljava/util/List;

    invoke-interface {v5, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_7

    .line 1283
    :cond_1
    move-object v13, v11

    check-cast v13, Landroidx/compose/ui/Modifier$Node;

    .line 1284
    invoke-virtual {v11}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v13

    and-int v13, v13, p2

    if-eqz v13, :cond_2

    move v13, v10

    goto :goto_3

    :cond_2
    move v13, v9

    :goto_3
    if-eqz v13, :cond_a

    .line 1283
    instance-of v13, v11, Landroidx/compose/ui/node/DelegatingNode;

    if-eqz v13, :cond_a

    .line 1286
    move-object v13, v11

    check-cast v13, Landroidx/compose/ui/node/DelegatingNode;

    .line 1287
    invoke-virtual {v13}, Landroidx/compose/ui/node/DelegatingNode;->getDelegate$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v13

    move v14, v9

    :goto_4
    if-eqz v13, :cond_9

    .line 1289
    move-object v15, v13

    check-cast v15, Landroidx/compose/ui/Modifier$Node;

    .line 1284
    invoke-virtual {v13}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v15

    and-int v15, v15, p2

    if-eqz v15, :cond_3

    move v15, v10

    goto :goto_5

    :cond_3
    move v15, v9

    :goto_5
    if-eqz v15, :cond_8

    add-int/lit8 v14, v14, 0x1

    if-ne v14, v10, :cond_4

    move-object v11, v13

    goto :goto_6

    .line 1297
    :cond_4
    move-object v15, v12

    check-cast v15, Landroidx/compose/runtime/collection/MutableVector;

    if-nez v12, :cond_5

    .line 1300
    new-instance v12, Landroidx/compose/runtime/collection/MutableVector;

    new-array v15, v6, [Landroidx/compose/ui/Modifier$Node;

    invoke-direct {v12, v15, v9}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    .line 1298
    move-object v15, v12

    check-cast v15, Landroidx/compose/runtime/collection/MutableVector;

    .line 1301
    :cond_5
    move-object v15, v11

    check-cast v15, Landroidx/compose/ui/Modifier$Node;

    if-eqz v11, :cond_7

    .line 1303
    move-object v15, v12

    check-cast v15, Landroidx/compose/runtime/collection/MutableVector;

    if-eqz v12, :cond_6

    invoke-virtual {v12, v11}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    :cond_6
    move-object v11, v4

    .line 1306
    :cond_7
    move-object v15, v12

    check-cast v15, Landroidx/compose/runtime/collection/MutableVector;

    if-eqz v12, :cond_8

    invoke-virtual {v12, v13}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    .line 1310
    :cond_8
    :goto_6
    invoke-virtual {v13}, Landroidx/compose/ui/Modifier$Node;->getChild$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v13

    goto :goto_4

    :cond_9
    if-ne v14, v10, :cond_a

    goto :goto_2

    .line 1318
    :cond_a
    :goto_7
    move-object v11, v12

    check-cast v11, Landroidx/compose/runtime/collection/MutableVector;

    invoke-static {v12}, Landroidx/compose/ui/node/DelegatableNodeKt;->access$pop(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    move-result-object v11

    goto/16 :goto_2

    .line 1321
    :cond_b
    invoke-virtual {v2}, Landroidx/compose/ui/Modifier$Node;->getParent$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v2

    goto/16 :goto_1

    .line 1324
    :cond_c
    invoke-virtual {v3}, Landroidx/compose/ui/node/LayoutNode;->getParent$ui_release()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v3

    if-eqz v3, :cond_d

    .line 1325
    invoke-virtual {v3}, Landroidx/compose/ui/node/LayoutNode;->getNodes$ui_release()Landroidx/compose/ui/node/NodeChain;

    move-result-object v2

    if-eqz v2, :cond_d

    invoke-virtual {v2}, Landroidx/compose/ui/node/NodeChain;->getTail$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v2

    goto/16 :goto_0

    :cond_d
    move-object v2, v4

    goto/16 :goto_0

    .line 1328
    :cond_e
    move-object v2, v5

    check-cast v2, Ljava/util/List;

    if-eqz v5, :cond_10

    .line 1330
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ltz v2, :cond_10

    :goto_8
    add-int/lit8 v3, v2, -0x1

    .line 1331
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 1332
    invoke-interface {v0, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    if-gez v3, :cond_f

    goto :goto_9

    :cond_f
    move v2, v3

    goto :goto_8

    .line 351
    :cond_10
    :goto_9
    invoke-interface/range {p1 .. p1}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v2

    move-object v3, v4

    :goto_a
    if-eqz v2, :cond_1b

    .line 1338
    invoke-static {v8, v7}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    instance-of v11, v2, Ljava/lang/Object;

    if-eqz v11, :cond_11

    .line 1339
    invoke-interface {v0, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_f

    .line 1340
    :cond_11
    move-object v11, v2

    check-cast v11, Landroidx/compose/ui/Modifier$Node;

    .line 1341
    invoke-virtual {v2}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v11

    and-int v11, v11, p2

    if-eqz v11, :cond_12

    move v11, v10

    goto :goto_b

    :cond_12
    move v11, v9

    :goto_b
    if-eqz v11, :cond_1a

    .line 1340
    instance-of v11, v2, Landroidx/compose/ui/node/DelegatingNode;

    if-eqz v11, :cond_1a

    .line 1343
    move-object v11, v2

    check-cast v11, Landroidx/compose/ui/node/DelegatingNode;

    .line 1344
    invoke-virtual {v11}, Landroidx/compose/ui/node/DelegatingNode;->getDelegate$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v11

    move v12, v9

    :goto_c
    if-eqz v11, :cond_19

    .line 1346
    move-object v13, v11

    check-cast v13, Landroidx/compose/ui/Modifier$Node;

    .line 1341
    invoke-virtual {v11}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v13

    and-int v13, v13, p2

    if-eqz v13, :cond_13

    move v13, v10

    goto :goto_d

    :cond_13
    move v13, v9

    :goto_d
    if-eqz v13, :cond_18

    add-int/lit8 v12, v12, 0x1

    if-ne v12, v10, :cond_14

    move-object v2, v11

    goto :goto_e

    .line 1354
    :cond_14
    move-object v13, v3

    check-cast v13, Landroidx/compose/runtime/collection/MutableVector;

    if-nez v3, :cond_15

    .line 1357
    new-instance v3, Landroidx/compose/runtime/collection/MutableVector;

    new-array v13, v6, [Landroidx/compose/ui/Modifier$Node;

    invoke-direct {v3, v13, v9}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    .line 1355
    move-object v13, v3

    check-cast v13, Landroidx/compose/runtime/collection/MutableVector;

    .line 1358
    :cond_15
    move-object v13, v2

    check-cast v13, Landroidx/compose/ui/Modifier$Node;

    if-eqz v2, :cond_17

    .line 1360
    move-object v13, v3

    check-cast v13, Landroidx/compose/runtime/collection/MutableVector;

    if-eqz v3, :cond_16

    invoke-virtual {v3, v2}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    :cond_16
    move-object v2, v4

    .line 1363
    :cond_17
    move-object v13, v3

    check-cast v13, Landroidx/compose/runtime/collection/MutableVector;

    if-eqz v3, :cond_18

    invoke-virtual {v3, v11}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    .line 1367
    :cond_18
    :goto_e
    invoke-virtual {v11}, Landroidx/compose/ui/Modifier$Node;->getChild$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v11

    goto :goto_c

    :cond_19
    if-ne v12, v10, :cond_1a

    goto :goto_a

    .line 1375
    :cond_1a
    :goto_f
    move-object v2, v3

    check-cast v2, Landroidx/compose/runtime/collection/MutableVector;

    invoke-static {v3}, Landroidx/compose/ui/node/DelegatableNodeKt;->access$pop(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    move-result-object v2

    goto :goto_a

    .line 352
    :cond_1b
    invoke-interface/range {p4 .. p4}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 353
    invoke-interface/range {p1 .. p1}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v0

    move-object v2, v4

    :goto_10
    if-eqz v0, :cond_26

    .line 1381
    invoke-static {v8, v7}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    instance-of v3, v0, Ljava/lang/Object;

    if-eqz v3, :cond_1c

    .line 1382
    invoke-interface {v1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_15

    .line 1383
    :cond_1c
    move-object v3, v0

    check-cast v3, Landroidx/compose/ui/Modifier$Node;

    .line 1384
    invoke-virtual {v0}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v3

    and-int v3, v3, p2

    if-eqz v3, :cond_1d

    move v3, v10

    goto :goto_11

    :cond_1d
    move v3, v9

    :goto_11
    if-eqz v3, :cond_25

    .line 1383
    instance-of v3, v0, Landroidx/compose/ui/node/DelegatingNode;

    if-eqz v3, :cond_25

    .line 1386
    move-object v3, v0

    check-cast v3, Landroidx/compose/ui/node/DelegatingNode;

    .line 1387
    invoke-virtual {v3}, Landroidx/compose/ui/node/DelegatingNode;->getDelegate$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v3

    move v11, v9

    :goto_12
    if-eqz v3, :cond_24

    .line 1389
    move-object v12, v3

    check-cast v12, Landroidx/compose/ui/Modifier$Node;

    .line 1384
    invoke-virtual {v3}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v12

    and-int v12, v12, p2

    if-eqz v12, :cond_1e

    move v12, v10

    goto :goto_13

    :cond_1e
    move v12, v9

    :goto_13
    if-eqz v12, :cond_23

    add-int/lit8 v11, v11, 0x1

    if-ne v11, v10, :cond_1f

    move-object v0, v3

    goto :goto_14

    .line 1397
    :cond_1f
    move-object v12, v2

    check-cast v12, Landroidx/compose/runtime/collection/MutableVector;

    if-nez v2, :cond_20

    .line 1400
    new-instance v2, Landroidx/compose/runtime/collection/MutableVector;

    new-array v12, v6, [Landroidx/compose/ui/Modifier$Node;

    invoke-direct {v2, v12, v9}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    .line 1398
    move-object v12, v2

    check-cast v12, Landroidx/compose/runtime/collection/MutableVector;

    .line 1401
    :cond_20
    move-object v12, v0

    check-cast v12, Landroidx/compose/ui/Modifier$Node;

    if-eqz v0, :cond_22

    .line 1403
    move-object v12, v2

    check-cast v12, Landroidx/compose/runtime/collection/MutableVector;

    if-eqz v2, :cond_21

    invoke-virtual {v2, v0}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    :cond_21
    move-object v0, v4

    .line 1406
    :cond_22
    move-object v12, v2

    check-cast v12, Landroidx/compose/runtime/collection/MutableVector;

    if-eqz v2, :cond_23

    invoke-virtual {v2, v3}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    .line 1410
    :cond_23
    :goto_14
    invoke-virtual {v3}, Landroidx/compose/ui/Modifier$Node;->getChild$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v3

    goto :goto_12

    :cond_24
    if-ne v11, v10, :cond_25

    goto :goto_10

    .line 1418
    :cond_25
    :goto_15
    move-object v0, v2

    check-cast v0, Landroidx/compose/runtime/collection/MutableVector;

    invoke-static {v2}, Landroidx/compose/ui/node/DelegatableNodeKt;->access$pop(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    move-result-object v0

    goto :goto_10

    :cond_26
    if-eqz v5, :cond_27

    .line 1422
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    :goto_16
    if-ge v9, v0, :cond_27

    .line 1423
    invoke-interface {v5, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 1424
    invoke-interface {v1, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v9, v9, 0x1

    goto :goto_16

    :cond_27
    return-void

    .line 1265
    :cond_28
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "visitAncestors called on an unattached node"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final validateKeyEvent-ZmokQxo(Landroid/view/KeyEvent;)Z
    .locals 4

    .line 388
    invoke-static {p1}, Landroidx/compose/ui/input/key/KeyEvent_androidKt;->getKey-ZmokQxo(Landroid/view/KeyEvent;)J

    move-result-wide v0

    .line 389
    invoke-static {p1}, Landroidx/compose/ui/input/key/KeyEvent_androidKt;->getType-ZmokQxo(Landroid/view/KeyEvent;)I

    move-result p1

    .line 390
    sget-object v2, Landroidx/compose/ui/input/key/KeyEventType;->Companion:Landroidx/compose/ui/input/key/KeyEventType$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/input/key/KeyEventType$Companion;->getKeyDown-CS__XNY()I

    move-result v2

    invoke-static {p1, v2}, Landroidx/compose/ui/input/key/KeyEventType;->equals-impl0(II)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    .line 392
    iget-object p1, p0, Landroidx/compose/ui/focus/FocusOwnerImpl;->keysCurrentlyDown:Landroidx/collection/MutableLongSet;

    if-nez p1, :cond_0

    new-instance p1, Landroidx/collection/MutableLongSet;

    const/4 v2, 0x3

    invoke-direct {p1, v2}, Landroidx/collection/MutableLongSet;-><init>(I)V

    .line 393
    iput-object p1, p0, Landroidx/compose/ui/focus/FocusOwnerImpl;->keysCurrentlyDown:Landroidx/collection/MutableLongSet;

    .line 394
    :cond_0
    invoke-virtual {p1, v0, v1}, Landroidx/collection/MutableLongSet;->plusAssign(J)V

    goto :goto_1

    .line 397
    :cond_1
    sget-object v2, Landroidx/compose/ui/input/key/KeyEventType;->Companion:Landroidx/compose/ui/input/key/KeyEventType$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/input/key/KeyEventType$Companion;->getKeyUp-CS__XNY()I

    move-result v2

    invoke-static {p1, v2}, Landroidx/compose/ui/input/key/KeyEventType;->equals-impl0(II)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 398
    iget-object p1, p0, Landroidx/compose/ui/focus/FocusOwnerImpl;->keysCurrentlyDown:Landroidx/collection/MutableLongSet;

    const/4 v2, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p1, v0, v1}, Landroidx/collection/MutableLongSet;->contains(J)Z

    move-result p1

    if-ne p1, v3, :cond_2

    move p1, v3

    goto :goto_0

    :cond_2
    move p1, v2

    :goto_0
    if-nez p1, :cond_3

    return v2

    .line 402
    :cond_3
    iget-object p1, p0, Landroidx/compose/ui/focus/FocusOwnerImpl;->keysCurrentlyDown:Landroidx/collection/MutableLongSet;

    if-eqz p1, :cond_4

    invoke-virtual {p1, v0, v1}, Landroidx/collection/MutableLongSet;->remove(J)Z

    :cond_4
    :goto_1
    return v3
.end method


# virtual methods
.method public clearFocus(Z)V
    .locals 2

    .line 167
    sget-object v0, Landroidx/compose/ui/focus/FocusDirection;->Companion:Landroidx/compose/ui/focus/FocusDirection$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/focus/FocusDirection$Companion;->getExit-dhqQ-8s()I

    move-result v0

    const/4 v1, 0x1

    .line 163
    invoke-virtual {p0, p1, v1, v1, v0}, Landroidx/compose/ui/focus/FocusOwnerImpl;->clearFocus-I7lrPNg(ZZZI)Z

    return-void
.end method

.method public clearFocus-I7lrPNg(ZZZI)Z
    .locals 3

    .line 177
    invoke-virtual {p0}, Landroidx/compose/ui/focus/FocusOwnerImpl;->getFocusTransactionManager()Landroidx/compose/ui/focus/FocusTransactionManager;

    move-result-object v0

    sget-object v1, Landroidx/compose/ui/focus/FocusOwnerImpl$clearFocus$clearedFocusSuccessfully$1;->INSTANCE:Landroidx/compose/ui/focus/FocusOwnerImpl$clearFocus$clearedFocusSuccessfully$1;

    check-cast v1, Lkotlin/jvm/functions/Function0;

    .line 435
    :try_start_0
    invoke-static {v0}, Landroidx/compose/ui/focus/FocusTransactionManager;->access$getOngoingTransaction$p(Landroidx/compose/ui/focus/FocusTransactionManager;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v0}, Landroidx/compose/ui/focus/FocusTransactionManager;->access$cancelTransaction(Landroidx/compose/ui/focus/FocusTransactionManager;)V

    .line 436
    :cond_0
    invoke-static {v0}, Landroidx/compose/ui/focus/FocusTransactionManager;->access$beginTransaction(Landroidx/compose/ui/focus/FocusTransactionManager;)V

    if-eqz v1, :cond_1

    .line 437
    invoke-static {v0}, Landroidx/compose/ui/focus/FocusTransactionManager;->access$getCancellationListener$p(Landroidx/compose/ui/focus/FocusTransactionManager;)Landroidx/compose/runtime/collection/MutableVector;

    move-result-object v2

    .line 439
    invoke-virtual {v2, v1}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    :cond_1
    if-nez p1, :cond_3

    .line 182
    iget-object v1, p0, Landroidx/compose/ui/focus/FocusOwnerImpl;->rootFocusNode:Landroidx/compose/ui/focus/FocusTargetNode;

    invoke-static {v1, p4}, Landroidx/compose/ui/focus/FocusTransactionsKt;->performCustomClearFocus-Mxy_nc0(Landroidx/compose/ui/focus/FocusTargetNode;I)Landroidx/compose/ui/focus/CustomDestinationResult;

    move-result-object p4

    sget-object v1, Landroidx/compose/ui/focus/FocusOwnerImpl$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p4}, Landroidx/compose/ui/focus/CustomDestinationResult;->ordinal()I

    move-result p4

    aget p4, v1, p4

    const/4 v1, 0x1

    if-eq p4, v1, :cond_2

    const/4 v1, 0x2

    if-eq p4, v1, :cond_2

    const/4 v1, 0x3

    if-eq p4, v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    goto :goto_1

    .line 187
    :cond_3
    :goto_0
    iget-object p4, p0, Landroidx/compose/ui/focus/FocusOwnerImpl;->rootFocusNode:Landroidx/compose/ui/focus/FocusTargetNode;

    invoke-static {p4, p1, p2}, Landroidx/compose/ui/focus/FocusTransactionsKt;->clearFocus(Landroidx/compose/ui/focus/FocusTargetNode;ZZ)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 443
    :goto_1
    invoke-static {v0}, Landroidx/compose/ui/focus/FocusTransactionManager;->access$commitTransaction(Landroidx/compose/ui/focus/FocusTransactionManager;)V

    if-eqz p1, :cond_4

    if-eqz p3, :cond_4

    .line 191
    iget-object p2, p0, Landroidx/compose/ui/focus/FocusOwnerImpl;->onClearFocusForOwner:Lkotlin/jvm/functions/Function0;

    invoke-interface {p2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_4
    return p1

    :catchall_0
    move-exception p1

    .line 443
    invoke-static {v0}, Landroidx/compose/ui/focus/FocusTransactionManager;->access$commitTransaction(Landroidx/compose/ui/focus/FocusTransactionManager;)V

    throw p1
.end method

.method public dispatchInterceptedSoftKeyboardEvent-ZmokQxo(Landroid/view/KeyEvent;)Z
    .locals 14

    .line 282
    iget-object v0, p0, Landroidx/compose/ui/focus/FocusOwnerImpl;->focusInvalidationManager:Landroidx/compose/ui/focus/FocusInvalidationManager;

    invoke-virtual {v0}, Landroidx/compose/ui/focus/FocusInvalidationManager;->hasPendingInvalidation()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    if-eqz v0, :cond_3b

    .line 286
    iget-object v0, p0, Landroidx/compose/ui/focus/FocusOwnerImpl;->rootFocusNode:Landroidx/compose/ui/focus/FocusTargetNode;

    invoke-static {v0}, Landroidx/compose/ui/focus/FocusTraversalKt;->findActiveFocusNode(Landroidx/compose/ui/focus/FocusTargetNode;)Landroidx/compose/ui/focus/FocusTargetNode;

    move-result-object v0

    const-string/jumbo v2, "visitAncestors called on an unattached node"

    const/high16 v3, 0x20000

    const/16 v4, 0x10

    const/4 v5, 0x0

    const/4 v6, 0x0

    if-eqz v0, :cond_f

    check-cast v0, Landroidx/compose/ui/node/DelegatableNode;

    .line 762
    invoke-static {v3}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v7

    .line 765
    invoke-interface {v0}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v8

    invoke-virtual {v8}, Landroidx/compose/ui/Modifier$Node;->isAttached()Z

    move-result v8

    if-eqz v8, :cond_e

    .line 767
    invoke-interface {v0}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v8

    .line 768
    invoke-static {v0}, Landroidx/compose/ui/node/DelegatableNodeKt;->requireLayoutNode(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/LayoutNode;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_d

    .line 770
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->getNodes$ui_release()Landroidx/compose/ui/node/NodeChain;

    move-result-object v9

    invoke-virtual {v9}, Landroidx/compose/ui/node/NodeChain;->getHead$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v9

    .line 771
    invoke-virtual {v9}, Landroidx/compose/ui/Modifier$Node;->getAggregateChildKindSet$ui_release()I

    move-result v9

    and-int/2addr v9, v7

    if-eqz v9, :cond_b

    :goto_1
    if-eqz v8, :cond_b

    .line 773
    invoke-virtual {v8}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v9

    and-int/2addr v9, v7

    if-eqz v9, :cond_a

    move-object v10, v5

    move-object v9, v8

    :goto_2
    if-eqz v9, :cond_a

    .line 778
    instance-of v11, v9, Landroidx/compose/ui/input/key/SoftKeyboardInterceptionModifierNode;

    if-eqz v11, :cond_0

    goto/16 :goto_7

    .line 782
    :cond_0
    invoke-virtual {v9}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v11

    and-int/2addr v11, v7

    if-eqz v11, :cond_1

    move v11, v1

    goto :goto_3

    :cond_1
    move v11, v6

    :goto_3
    if-eqz v11, :cond_9

    .line 781
    instance-of v11, v9, Landroidx/compose/ui/node/DelegatingNode;

    if-eqz v11, :cond_9

    .line 784
    move-object v11, v9

    check-cast v11, Landroidx/compose/ui/node/DelegatingNode;

    .line 785
    invoke-virtual {v11}, Landroidx/compose/ui/node/DelegatingNode;->getDelegate$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v11

    move v12, v6

    :goto_4
    if-eqz v11, :cond_8

    .line 782
    invoke-virtual {v11}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v13

    and-int/2addr v13, v7

    if-eqz v13, :cond_2

    move v13, v1

    goto :goto_5

    :cond_2
    move v13, v6

    :goto_5
    if-eqz v13, :cond_7

    add-int/lit8 v12, v12, 0x1

    if-ne v12, v1, :cond_3

    move-object v9, v11

    goto :goto_6

    :cond_3
    if-nez v10, :cond_4

    .line 798
    new-instance v10, Landroidx/compose/runtime/collection/MutableVector;

    new-array v13, v4, [Landroidx/compose/ui/Modifier$Node;

    invoke-direct {v10, v13, v6}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    :cond_4
    if-eqz v9, :cond_6

    if-eqz v10, :cond_5

    .line 801
    invoke-virtual {v10, v9}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    :cond_5
    move-object v9, v5

    :cond_6
    if-eqz v10, :cond_7

    .line 804
    invoke-virtual {v10, v11}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    .line 808
    :cond_7
    :goto_6
    invoke-virtual {v11}, Landroidx/compose/ui/Modifier$Node;->getChild$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v11

    goto :goto_4

    :cond_8
    if-ne v12, v1, :cond_9

    goto :goto_2

    .line 816
    :cond_9
    invoke-static {v10}, Landroidx/compose/ui/node/DelegatableNodeKt;->access$pop(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    move-result-object v9

    goto :goto_2

    .line 819
    :cond_a
    invoke-virtual {v8}, Landroidx/compose/ui/Modifier$Node;->getParent$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v8

    goto :goto_1

    .line 822
    :cond_b
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->getParent$ui_release()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 823
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->getNodes$ui_release()Landroidx/compose/ui/node/NodeChain;

    move-result-object v8

    if-eqz v8, :cond_c

    invoke-virtual {v8}, Landroidx/compose/ui/node/NodeChain;->getTail$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v8

    goto/16 :goto_0

    :cond_c
    move-object v8, v5

    goto/16 :goto_0

    :cond_d
    move-object v9, v5

    .line 826
    :goto_7
    check-cast v9, Landroidx/compose/ui/input/key/SoftKeyboardInterceptionModifierNode;

    goto :goto_8

    .line 765
    :cond_e
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_f
    move-object v9, v5

    :goto_8
    if-eqz v9, :cond_3a

    .line 289
    check-cast v9, Landroidx/compose/ui/node/DelegatableNode;

    .line 827
    invoke-static {v3}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v0

    .line 836
    invoke-interface {v9}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/compose/ui/Modifier$Node;->isAttached()Z

    move-result v3

    if-eqz v3, :cond_39

    .line 838
    invoke-interface {v9}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/compose/ui/Modifier$Node;->getParent$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v2

    .line 839
    invoke-static {v9}, Landroidx/compose/ui/node/DelegatableNodeKt;->requireLayoutNode(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/LayoutNode;

    move-result-object v3

    move-object v7, v5

    :goto_9
    if-eqz v3, :cond_1e

    .line 841
    invoke-virtual {v3}, Landroidx/compose/ui/node/LayoutNode;->getNodes$ui_release()Landroidx/compose/ui/node/NodeChain;

    move-result-object v8

    invoke-virtual {v8}, Landroidx/compose/ui/node/NodeChain;->getHead$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v8

    .line 842
    invoke-virtual {v8}, Landroidx/compose/ui/Modifier$Node;->getAggregateChildKindSet$ui_release()I

    move-result v8

    and-int/2addr v8, v0

    if-eqz v8, :cond_1c

    :goto_a
    if-eqz v2, :cond_1c

    .line 844
    invoke-virtual {v2}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v8

    and-int/2addr v8, v0

    if-eqz v8, :cond_1b

    move-object v8, v2

    move-object v10, v5

    :goto_b
    if-eqz v8, :cond_1b

    .line 849
    instance-of v11, v8, Landroidx/compose/ui/input/key/SoftKeyboardInterceptionModifierNode;

    if-eqz v11, :cond_11

    if-nez v7, :cond_10

    .line 851
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    check-cast v7, Ljava/util/List;

    .line 852
    :cond_10
    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_10

    .line 855
    :cond_11
    invoke-virtual {v8}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v11

    and-int/2addr v11, v0

    if-eqz v11, :cond_12

    move v11, v1

    goto :goto_c

    :cond_12
    move v11, v6

    :goto_c
    if-eqz v11, :cond_1a

    .line 854
    instance-of v11, v8, Landroidx/compose/ui/node/DelegatingNode;

    if-eqz v11, :cond_1a

    .line 857
    move-object v11, v8

    check-cast v11, Landroidx/compose/ui/node/DelegatingNode;

    .line 858
    invoke-virtual {v11}, Landroidx/compose/ui/node/DelegatingNode;->getDelegate$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v11

    move v12, v6

    :goto_d
    if-eqz v11, :cond_19

    .line 855
    invoke-virtual {v11}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v13

    and-int/2addr v13, v0

    if-eqz v13, :cond_13

    move v13, v1

    goto :goto_e

    :cond_13
    move v13, v6

    :goto_e
    if-eqz v13, :cond_18

    add-int/lit8 v12, v12, 0x1

    if-ne v12, v1, :cond_14

    move-object v8, v11

    goto :goto_f

    :cond_14
    if-nez v10, :cond_15

    .line 871
    new-instance v10, Landroidx/compose/runtime/collection/MutableVector;

    new-array v13, v4, [Landroidx/compose/ui/Modifier$Node;

    invoke-direct {v10, v13, v6}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    :cond_15
    if-eqz v8, :cond_17

    if-eqz v10, :cond_16

    .line 874
    invoke-virtual {v10, v8}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    :cond_16
    move-object v8, v5

    :cond_17
    if-eqz v10, :cond_18

    .line 877
    invoke-virtual {v10, v11}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    .line 881
    :cond_18
    :goto_f
    invoke-virtual {v11}, Landroidx/compose/ui/Modifier$Node;->getChild$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v11

    goto :goto_d

    :cond_19
    if-ne v12, v1, :cond_1a

    goto :goto_b

    .line 889
    :cond_1a
    :goto_10
    invoke-static {v10}, Landroidx/compose/ui/node/DelegatableNodeKt;->access$pop(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    move-result-object v8

    goto :goto_b

    .line 892
    :cond_1b
    invoke-virtual {v2}, Landroidx/compose/ui/Modifier$Node;->getParent$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v2

    goto :goto_a

    .line 895
    :cond_1c
    invoke-virtual {v3}, Landroidx/compose/ui/node/LayoutNode;->getParent$ui_release()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v3

    if-eqz v3, :cond_1d

    .line 896
    invoke-virtual {v3}, Landroidx/compose/ui/node/LayoutNode;->getNodes$ui_release()Landroidx/compose/ui/node/NodeChain;

    move-result-object v2

    if-eqz v2, :cond_1d

    invoke-virtual {v2}, Landroidx/compose/ui/node/NodeChain;->getTail$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v2

    goto/16 :goto_9

    :cond_1d
    move-object v2, v5

    goto/16 :goto_9

    :cond_1e
    if-eqz v7, :cond_21

    .line 902
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ltz v2, :cond_21

    :goto_11
    add-int/lit8 v3, v2, -0x1

    .line 903
    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 904
    check-cast v2, Landroidx/compose/ui/input/key/SoftKeyboardInterceptionModifierNode;

    .line 291
    invoke-interface {v2, p1}, Landroidx/compose/ui/input/key/SoftKeyboardInterceptionModifierNode;->onPreInterceptKeyBeforeSoftKeyboard-ZmokQxo(Landroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_1f

    return v1

    :cond_1f
    if-gez v3, :cond_20

    goto :goto_12

    :cond_20
    move v2, v3

    goto :goto_11

    .line 907
    :cond_21
    :goto_12
    invoke-interface {v9}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v2

    move-object v3, v5

    :goto_13
    if-eqz v2, :cond_2c

    .line 911
    instance-of v8, v2, Landroidx/compose/ui/input/key/SoftKeyboardInterceptionModifierNode;

    if-eqz v8, :cond_22

    .line 912
    check-cast v2, Landroidx/compose/ui/input/key/SoftKeyboardInterceptionModifierNode;

    .line 291
    invoke-interface {v2, p1}, Landroidx/compose/ui/input/key/SoftKeyboardInterceptionModifierNode;->onPreInterceptKeyBeforeSoftKeyboard-ZmokQxo(Landroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_2b

    return v1

    .line 855
    :cond_22
    invoke-virtual {v2}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v8

    and-int/2addr v8, v0

    if-eqz v8, :cond_23

    move v8, v1

    goto :goto_14

    :cond_23
    move v8, v6

    :goto_14
    if-eqz v8, :cond_2b

    .line 913
    instance-of v8, v2, Landroidx/compose/ui/node/DelegatingNode;

    if-eqz v8, :cond_2b

    .line 919
    move-object v8, v2

    check-cast v8, Landroidx/compose/ui/node/DelegatingNode;

    .line 920
    invoke-virtual {v8}, Landroidx/compose/ui/node/DelegatingNode;->getDelegate$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v8

    move v10, v6

    :goto_15
    if-eqz v8, :cond_2a

    .line 855
    invoke-virtual {v8}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v11

    and-int/2addr v11, v0

    if-eqz v11, :cond_24

    move v11, v1

    goto :goto_16

    :cond_24
    move v11, v6

    :goto_16
    if-eqz v11, :cond_29

    add-int/lit8 v10, v10, 0x1

    if-ne v10, v1, :cond_25

    move-object v2, v8

    goto :goto_17

    :cond_25
    if-nez v3, :cond_26

    .line 933
    new-instance v3, Landroidx/compose/runtime/collection/MutableVector;

    new-array v11, v4, [Landroidx/compose/ui/Modifier$Node;

    invoke-direct {v3, v11, v6}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    :cond_26
    if-eqz v2, :cond_28

    if-eqz v3, :cond_27

    .line 936
    invoke-virtual {v3, v2}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    :cond_27
    move-object v2, v5

    :cond_28
    if-eqz v3, :cond_29

    .line 939
    invoke-virtual {v3, v8}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    .line 943
    :cond_29
    :goto_17
    invoke-virtual {v8}, Landroidx/compose/ui/Modifier$Node;->getChild$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v8

    goto :goto_15

    :cond_2a
    if-ne v10, v1, :cond_2b

    goto :goto_13

    .line 951
    :cond_2b
    invoke-static {v3}, Landroidx/compose/ui/node/DelegatableNodeKt;->access$pop(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    move-result-object v2

    goto :goto_13

    .line 955
    :cond_2c
    invoke-interface {v9}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v2

    move-object v3, v5

    :goto_18
    if-eqz v2, :cond_37

    .line 959
    instance-of v8, v2, Landroidx/compose/ui/input/key/SoftKeyboardInterceptionModifierNode;

    if-eqz v8, :cond_2d

    .line 960
    check-cast v2, Landroidx/compose/ui/input/key/SoftKeyboardInterceptionModifierNode;

    .line 293
    invoke-interface {v2, p1}, Landroidx/compose/ui/input/key/SoftKeyboardInterceptionModifierNode;->onInterceptKeyBeforeSoftKeyboard-ZmokQxo(Landroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_36

    return v1

    .line 855
    :cond_2d
    invoke-virtual {v2}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v8

    and-int/2addr v8, v0

    if-eqz v8, :cond_2e

    move v8, v1

    goto :goto_19

    :cond_2e
    move v8, v6

    :goto_19
    if-eqz v8, :cond_36

    .line 961
    instance-of v8, v2, Landroidx/compose/ui/node/DelegatingNode;

    if-eqz v8, :cond_36

    .line 967
    move-object v8, v2

    check-cast v8, Landroidx/compose/ui/node/DelegatingNode;

    .line 968
    invoke-virtual {v8}, Landroidx/compose/ui/node/DelegatingNode;->getDelegate$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v8

    move v9, v6

    :goto_1a
    if-eqz v8, :cond_35

    .line 855
    invoke-virtual {v8}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v10

    and-int/2addr v10, v0

    if-eqz v10, :cond_2f

    move v10, v1

    goto :goto_1b

    :cond_2f
    move v10, v6

    :goto_1b
    if-eqz v10, :cond_34

    add-int/lit8 v9, v9, 0x1

    if-ne v9, v1, :cond_30

    move-object v2, v8

    goto :goto_1c

    :cond_30
    if-nez v3, :cond_31

    .line 981
    new-instance v3, Landroidx/compose/runtime/collection/MutableVector;

    new-array v10, v4, [Landroidx/compose/ui/Modifier$Node;

    invoke-direct {v3, v10, v6}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    :cond_31
    if-eqz v2, :cond_33

    if-eqz v3, :cond_32

    .line 984
    invoke-virtual {v3, v2}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    :cond_32
    move-object v2, v5

    :cond_33
    if-eqz v3, :cond_34

    .line 987
    invoke-virtual {v3, v8}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    .line 991
    :cond_34
    :goto_1c
    invoke-virtual {v8}, Landroidx/compose/ui/Modifier$Node;->getChild$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v8

    goto :goto_1a

    :cond_35
    if-ne v9, v1, :cond_36

    goto :goto_18

    .line 999
    :cond_36
    invoke-static {v3}, Landroidx/compose/ui/node/DelegatableNodeKt;->access$pop(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    move-result-object v2

    goto :goto_18

    :cond_37
    if-eqz v7, :cond_3a

    .line 1004
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    move v2, v6

    :goto_1d
    if-ge v2, v0, :cond_3a

    .line 1005
    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 1006
    check-cast v3, Landroidx/compose/ui/input/key/SoftKeyboardInterceptionModifierNode;

    .line 293
    invoke-interface {v3, p1}, Landroidx/compose/ui/input/key/SoftKeyboardInterceptionModifierNode;->onInterceptKeyBeforeSoftKeyboard-ZmokQxo(Landroid/view/KeyEvent;)Z

    move-result v3

    if-eqz v3, :cond_38

    return v1

    :cond_38
    add-int/lit8 v2, v2, 0x1

    goto :goto_1d

    .line 836
    :cond_39
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3a
    return v6

    .line 282
    :cond_3b
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Dispatching intercepted soft keyboard event while focus system is invalidated."

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public dispatchKeyEvent-YhN2O0w(Landroid/view/KeyEvent;Lkotlin/jvm/functions/Function0;)Z
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/KeyEvent;",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 260
    iget-object v2, v0, Landroidx/compose/ui/focus/FocusOwnerImpl;->focusInvalidationManager:Landroidx/compose/ui/focus/FocusInvalidationManager;

    invoke-virtual {v2}, Landroidx/compose/ui/focus/FocusInvalidationManager;->hasPendingInvalidation()Z

    move-result v2

    const/4 v3, 0x1

    xor-int/2addr v2, v3

    if-eqz v2, :cond_52

    .line 264
    invoke-direct/range {p0 .. p1}, Landroidx/compose/ui/focus/FocusOwnerImpl;->validateKeyEvent-ZmokQxo(Landroid/view/KeyEvent;)Z

    move-result v2

    const/4 v4, 0x0

    if-nez v2, :cond_0

    return v4

    .line 266
    :cond_0
    iget-object v2, v0, Landroidx/compose/ui/focus/FocusOwnerImpl;->rootFocusNode:Landroidx/compose/ui/focus/FocusTargetNode;

    invoke-static {v2}, Landroidx/compose/ui/focus/FocusTraversalKt;->findActiveFocusNode(Landroidx/compose/ui/focus/FocusTargetNode;)Landroidx/compose/ui/focus/FocusTargetNode;

    move-result-object v2

    const-string/jumbo v5, "visitAncestors called on an unattached node"

    const/16 v6, 0x2000

    const/16 v7, 0x10

    const/4 v8, 0x0

    if-eqz v2, :cond_1

    .line 267
    move-object v9, v2

    check-cast v9, Landroidx/compose/ui/node/DelegatableNode;

    invoke-direct {v0, v9}, Landroidx/compose/ui/focus/FocusOwnerImpl;->lastLocalKeyInputNode(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/Modifier$Node;

    move-result-object v9

    if-nez v9, :cond_21

    :cond_1
    if-eqz v2, :cond_11

    .line 268
    check-cast v2, Landroidx/compose/ui/node/DelegatableNode;

    .line 445
    invoke-static {v6}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v9

    .line 448
    invoke-interface {v2}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v10

    invoke-virtual {v10}, Landroidx/compose/ui/Modifier$Node;->isAttached()Z

    move-result v10

    if-eqz v10, :cond_10

    .line 450
    invoke-interface {v2}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v10

    .line 451
    invoke-static {v2}, Landroidx/compose/ui/node/DelegatableNodeKt;->requireLayoutNode(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/LayoutNode;

    move-result-object v2

    :goto_0
    if-eqz v2, :cond_f

    .line 453
    invoke-virtual {v2}, Landroidx/compose/ui/node/LayoutNode;->getNodes$ui_release()Landroidx/compose/ui/node/NodeChain;

    move-result-object v11

    invoke-virtual {v11}, Landroidx/compose/ui/node/NodeChain;->getHead$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v11

    .line 454
    invoke-virtual {v11}, Landroidx/compose/ui/Modifier$Node;->getAggregateChildKindSet$ui_release()I

    move-result v11

    and-int/2addr v11, v9

    if-eqz v11, :cond_d

    :goto_1
    if-eqz v10, :cond_d

    .line 456
    invoke-virtual {v10}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v11

    and-int/2addr v11, v9

    if-eqz v11, :cond_c

    move-object v12, v8

    move-object v11, v10

    :goto_2
    if-eqz v11, :cond_c

    .line 461
    instance-of v13, v11, Landroidx/compose/ui/input/key/KeyInputModifierNode;

    if-eqz v13, :cond_2

    goto/16 :goto_7

    .line 465
    :cond_2
    invoke-virtual {v11}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v13

    and-int/2addr v13, v9

    if-eqz v13, :cond_3

    move v13, v3

    goto :goto_3

    :cond_3
    move v13, v4

    :goto_3
    if-eqz v13, :cond_b

    .line 464
    instance-of v13, v11, Landroidx/compose/ui/node/DelegatingNode;

    if-eqz v13, :cond_b

    .line 467
    move-object v13, v11

    check-cast v13, Landroidx/compose/ui/node/DelegatingNode;

    .line 468
    invoke-virtual {v13}, Landroidx/compose/ui/node/DelegatingNode;->getDelegate$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v13

    move v14, v4

    :goto_4
    if-eqz v13, :cond_a

    .line 465
    invoke-virtual {v13}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v15

    and-int/2addr v15, v9

    if-eqz v15, :cond_4

    move v15, v3

    goto :goto_5

    :cond_4
    move v15, v4

    :goto_5
    if-eqz v15, :cond_9

    add-int/lit8 v14, v14, 0x1

    if-ne v14, v3, :cond_5

    move-object v11, v13

    goto :goto_6

    :cond_5
    if-nez v12, :cond_6

    .line 481
    new-instance v12, Landroidx/compose/runtime/collection/MutableVector;

    new-array v15, v7, [Landroidx/compose/ui/Modifier$Node;

    invoke-direct {v12, v15, v4}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    :cond_6
    if-eqz v11, :cond_8

    if-eqz v12, :cond_7

    .line 484
    invoke-virtual {v12, v11}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    move-result v11

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    :cond_7
    move-object v11, v8

    :cond_8
    if-eqz v12, :cond_9

    .line 487
    invoke-virtual {v12, v13}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    move-result v15

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 491
    :cond_9
    :goto_6
    invoke-virtual {v13}, Landroidx/compose/ui/Modifier$Node;->getChild$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v13

    goto :goto_4

    :cond_a
    if-ne v14, v3, :cond_b

    goto :goto_2

    .line 499
    :cond_b
    invoke-static {v12}, Landroidx/compose/ui/node/DelegatableNodeKt;->access$pop(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    move-result-object v11

    goto :goto_2

    .line 502
    :cond_c
    invoke-virtual {v10}, Landroidx/compose/ui/Modifier$Node;->getParent$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v10

    goto :goto_1

    .line 505
    :cond_d
    invoke-virtual {v2}, Landroidx/compose/ui/node/LayoutNode;->getParent$ui_release()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v2

    if-eqz v2, :cond_e

    .line 506
    invoke-virtual {v2}, Landroidx/compose/ui/node/LayoutNode;->getNodes$ui_release()Landroidx/compose/ui/node/NodeChain;

    move-result-object v10

    if-eqz v10, :cond_e

    invoke-virtual {v10}, Landroidx/compose/ui/node/NodeChain;->getTail$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v10

    goto/16 :goto_0

    :cond_e
    move-object v10, v8

    goto/16 :goto_0

    :cond_f
    move-object v11, v8

    .line 268
    :goto_7
    check-cast v11, Landroidx/compose/ui/input/key/KeyInputModifierNode;

    if-eqz v11, :cond_11

    invoke-interface {v11}, Landroidx/compose/ui/input/key/KeyInputModifierNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v9

    goto/16 :goto_10

    .line 448
    :cond_10
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 269
    :cond_11
    iget-object v2, v0, Landroidx/compose/ui/focus/FocusOwnerImpl;->rootFocusNode:Landroidx/compose/ui/focus/FocusTargetNode;

    check-cast v2, Landroidx/compose/ui/node/DelegatableNode;

    .line 510
    invoke-static {v6}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v9

    .line 517
    invoke-interface {v2}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v10

    invoke-virtual {v10}, Landroidx/compose/ui/Modifier$Node;->isAttached()Z

    move-result v10

    if-eqz v10, :cond_51

    .line 519
    invoke-interface {v2}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v10

    invoke-virtual {v10}, Landroidx/compose/ui/Modifier$Node;->getParent$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v10

    .line 520
    invoke-static {v2}, Landroidx/compose/ui/node/DelegatableNodeKt;->requireLayoutNode(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/LayoutNode;

    move-result-object v2

    :goto_8
    if-eqz v2, :cond_1f

    .line 522
    invoke-virtual {v2}, Landroidx/compose/ui/node/LayoutNode;->getNodes$ui_release()Landroidx/compose/ui/node/NodeChain;

    move-result-object v11

    invoke-virtual {v11}, Landroidx/compose/ui/node/NodeChain;->getHead$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v11

    .line 523
    invoke-virtual {v11}, Landroidx/compose/ui/Modifier$Node;->getAggregateChildKindSet$ui_release()I

    move-result v11

    and-int/2addr v11, v9

    if-eqz v11, :cond_1d

    :goto_9
    if-eqz v10, :cond_1d

    .line 525
    invoke-virtual {v10}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v11

    and-int/2addr v11, v9

    if-eqz v11, :cond_1c

    move-object v12, v8

    move-object v11, v10

    :goto_a
    if-eqz v11, :cond_1c

    .line 530
    instance-of v13, v11, Landroidx/compose/ui/input/key/KeyInputModifierNode;

    if-eqz v13, :cond_12

    goto/16 :goto_f

    .line 534
    :cond_12
    invoke-virtual {v11}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v13

    and-int/2addr v13, v9

    if-eqz v13, :cond_13

    move v13, v3

    goto :goto_b

    :cond_13
    move v13, v4

    :goto_b
    if-eqz v13, :cond_1b

    .line 533
    instance-of v13, v11, Landroidx/compose/ui/node/DelegatingNode;

    if-eqz v13, :cond_1b

    .line 536
    move-object v13, v11

    check-cast v13, Landroidx/compose/ui/node/DelegatingNode;

    .line 537
    invoke-virtual {v13}, Landroidx/compose/ui/node/DelegatingNode;->getDelegate$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v13

    move v14, v4

    :goto_c
    if-eqz v13, :cond_1a

    .line 534
    invoke-virtual {v13}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v15

    and-int/2addr v15, v9

    if-eqz v15, :cond_14

    move v15, v3

    goto :goto_d

    :cond_14
    move v15, v4

    :goto_d
    if-eqz v15, :cond_19

    add-int/lit8 v14, v14, 0x1

    if-ne v14, v3, :cond_15

    move-object v11, v13

    goto :goto_e

    :cond_15
    if-nez v12, :cond_16

    .line 550
    new-instance v12, Landroidx/compose/runtime/collection/MutableVector;

    new-array v15, v7, [Landroidx/compose/ui/Modifier$Node;

    invoke-direct {v12, v15, v4}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    :cond_16
    if-eqz v11, :cond_18

    if-eqz v12, :cond_17

    .line 553
    invoke-virtual {v12, v11}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    move-result v11

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    :cond_17
    move-object v11, v8

    :cond_18
    if-eqz v12, :cond_19

    .line 556
    invoke-virtual {v12, v13}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    move-result v15

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 560
    :cond_19
    :goto_e
    invoke-virtual {v13}, Landroidx/compose/ui/Modifier$Node;->getChild$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v13

    goto :goto_c

    :cond_1a
    if-ne v14, v3, :cond_1b

    goto :goto_a

    .line 568
    :cond_1b
    invoke-static {v12}, Landroidx/compose/ui/node/DelegatableNodeKt;->access$pop(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    move-result-object v11

    goto :goto_a

    .line 571
    :cond_1c
    invoke-virtual {v10}, Landroidx/compose/ui/Modifier$Node;->getParent$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v10

    goto :goto_9

    .line 574
    :cond_1d
    invoke-virtual {v2}, Landroidx/compose/ui/node/LayoutNode;->getParent$ui_release()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v2

    if-eqz v2, :cond_1e

    .line 575
    invoke-virtual {v2}, Landroidx/compose/ui/node/LayoutNode;->getNodes$ui_release()Landroidx/compose/ui/node/NodeChain;

    move-result-object v10

    if-eqz v10, :cond_1e

    invoke-virtual {v10}, Landroidx/compose/ui/node/NodeChain;->getTail$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v10

    goto/16 :goto_8

    :cond_1e
    move-object v10, v8

    goto/16 :goto_8

    :cond_1f
    move-object v11, v8

    .line 269
    :goto_f
    check-cast v11, Landroidx/compose/ui/input/key/KeyInputModifierNode;

    if-eqz v11, :cond_20

    invoke-interface {v11}, Landroidx/compose/ui/input/key/KeyInputModifierNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v9

    goto :goto_10

    :cond_20
    move-object v9, v8

    :cond_21
    :goto_10
    if-eqz v9, :cond_50

    .line 271
    check-cast v9, Landroidx/compose/ui/node/DelegatableNode;

    .line 579
    invoke-static {v6}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v2

    .line 588
    invoke-interface {v9}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v6

    invoke-virtual {v6}, Landroidx/compose/ui/Modifier$Node;->isAttached()Z

    move-result v6

    if-eqz v6, :cond_4f

    .line 590
    invoke-interface {v9}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/compose/ui/Modifier$Node;->getParent$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v5

    .line 591
    invoke-static {v9}, Landroidx/compose/ui/node/DelegatableNodeKt;->requireLayoutNode(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/LayoutNode;

    move-result-object v6

    move-object v10, v8

    :goto_11
    if-eqz v6, :cond_30

    .line 593
    invoke-virtual {v6}, Landroidx/compose/ui/node/LayoutNode;->getNodes$ui_release()Landroidx/compose/ui/node/NodeChain;

    move-result-object v11

    invoke-virtual {v11}, Landroidx/compose/ui/node/NodeChain;->getHead$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v11

    .line 594
    invoke-virtual {v11}, Landroidx/compose/ui/Modifier$Node;->getAggregateChildKindSet$ui_release()I

    move-result v11

    and-int/2addr v11, v2

    if-eqz v11, :cond_2e

    :goto_12
    if-eqz v5, :cond_2e

    .line 596
    invoke-virtual {v5}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v11

    and-int/2addr v11, v2

    if-eqz v11, :cond_2d

    move-object v11, v5

    move-object v12, v8

    :goto_13
    if-eqz v11, :cond_2d

    .line 601
    instance-of v13, v11, Landroidx/compose/ui/input/key/KeyInputModifierNode;

    if-eqz v13, :cond_23

    if-nez v10, :cond_22

    .line 603
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    check-cast v10, Ljava/util/List;

    .line 604
    :cond_22
    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_18

    .line 607
    :cond_23
    invoke-virtual {v11}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v13

    and-int/2addr v13, v2

    if-eqz v13, :cond_24

    move v13, v3

    goto :goto_14

    :cond_24
    move v13, v4

    :goto_14
    if-eqz v13, :cond_2c

    .line 606
    instance-of v13, v11, Landroidx/compose/ui/node/DelegatingNode;

    if-eqz v13, :cond_2c

    .line 609
    move-object v13, v11

    check-cast v13, Landroidx/compose/ui/node/DelegatingNode;

    .line 610
    invoke-virtual {v13}, Landroidx/compose/ui/node/DelegatingNode;->getDelegate$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v13

    move v14, v4

    :goto_15
    if-eqz v13, :cond_2b

    .line 607
    invoke-virtual {v13}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v15

    and-int/2addr v15, v2

    if-eqz v15, :cond_25

    move v15, v3

    goto :goto_16

    :cond_25
    move v15, v4

    :goto_16
    if-eqz v15, :cond_2a

    add-int/lit8 v14, v14, 0x1

    if-ne v14, v3, :cond_26

    move-object v11, v13

    goto :goto_17

    :cond_26
    if-nez v12, :cond_27

    .line 623
    new-instance v12, Landroidx/compose/runtime/collection/MutableVector;

    new-array v15, v7, [Landroidx/compose/ui/Modifier$Node;

    invoke-direct {v12, v15, v4}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    :cond_27
    if-eqz v11, :cond_29

    if-eqz v12, :cond_28

    .line 626
    invoke-virtual {v12, v11}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    move-result v11

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    :cond_28
    move-object v11, v8

    :cond_29
    if-eqz v12, :cond_2a

    .line 629
    invoke-virtual {v12, v13}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    move-result v15

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 633
    :cond_2a
    :goto_17
    invoke-virtual {v13}, Landroidx/compose/ui/Modifier$Node;->getChild$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v13

    goto :goto_15

    :cond_2b
    if-ne v14, v3, :cond_2c

    goto :goto_13

    .line 641
    :cond_2c
    :goto_18
    invoke-static {v12}, Landroidx/compose/ui/node/DelegatableNodeKt;->access$pop(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    move-result-object v11

    goto :goto_13

    .line 644
    :cond_2d
    invoke-virtual {v5}, Landroidx/compose/ui/Modifier$Node;->getParent$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v5

    goto :goto_12

    .line 647
    :cond_2e
    invoke-virtual {v6}, Landroidx/compose/ui/node/LayoutNode;->getParent$ui_release()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v6

    if-eqz v6, :cond_2f

    .line 648
    invoke-virtual {v6}, Landroidx/compose/ui/node/LayoutNode;->getNodes$ui_release()Landroidx/compose/ui/node/NodeChain;

    move-result-object v5

    if-eqz v5, :cond_2f

    invoke-virtual {v5}, Landroidx/compose/ui/node/NodeChain;->getTail$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v5

    goto/16 :goto_11

    :cond_2f
    move-object v5, v8

    goto/16 :goto_11

    :cond_30
    if-eqz v10, :cond_34

    .line 654
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ltz v5, :cond_33

    :goto_19
    add-int/lit8 v6, v5, -0x1

    .line 655
    invoke-interface {v10, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    .line 656
    check-cast v5, Landroidx/compose/ui/input/key/KeyInputModifierNode;

    .line 273
    invoke-interface {v5, v1}, Landroidx/compose/ui/input/key/KeyInputModifierNode;->onPreKeyEvent-ZmokQxo(Landroid/view/KeyEvent;)Z

    move-result v5

    if-eqz v5, :cond_31

    return v3

    :cond_31
    if-gez v6, :cond_32

    goto :goto_1a

    :cond_32
    move v5, v6

    goto :goto_19

    .line 658
    :cond_33
    :goto_1a
    sget-object v5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 659
    :cond_34
    invoke-interface {v9}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v5

    move-object v6, v8

    :goto_1b
    if-eqz v5, :cond_3f

    .line 663
    instance-of v11, v5, Landroidx/compose/ui/input/key/KeyInputModifierNode;

    if-eqz v11, :cond_35

    .line 664
    check-cast v5, Landroidx/compose/ui/input/key/KeyInputModifierNode;

    .line 273
    invoke-interface {v5, v1}, Landroidx/compose/ui/input/key/KeyInputModifierNode;->onPreKeyEvent-ZmokQxo(Landroid/view/KeyEvent;)Z

    move-result v5

    if-eqz v5, :cond_3e

    return v3

    .line 607
    :cond_35
    invoke-virtual {v5}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v11

    and-int/2addr v11, v2

    if-eqz v11, :cond_36

    move v11, v3

    goto :goto_1c

    :cond_36
    move v11, v4

    :goto_1c
    if-eqz v11, :cond_3e

    .line 665
    instance-of v11, v5, Landroidx/compose/ui/node/DelegatingNode;

    if-eqz v11, :cond_3e

    .line 671
    move-object v11, v5

    check-cast v11, Landroidx/compose/ui/node/DelegatingNode;

    .line 672
    invoke-virtual {v11}, Landroidx/compose/ui/node/DelegatingNode;->getDelegate$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v11

    move v12, v4

    :goto_1d
    if-eqz v11, :cond_3d

    .line 607
    invoke-virtual {v11}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v13

    and-int/2addr v13, v2

    if-eqz v13, :cond_37

    move v13, v3

    goto :goto_1e

    :cond_37
    move v13, v4

    :goto_1e
    if-eqz v13, :cond_3c

    add-int/lit8 v12, v12, 0x1

    if-ne v12, v3, :cond_38

    move-object v5, v11

    goto :goto_1f

    :cond_38
    if-nez v6, :cond_39

    .line 685
    new-instance v6, Landroidx/compose/runtime/collection/MutableVector;

    new-array v13, v7, [Landroidx/compose/ui/Modifier$Node;

    invoke-direct {v6, v13, v4}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    :cond_39
    if-eqz v5, :cond_3b

    if-eqz v6, :cond_3a

    .line 688
    invoke-virtual {v6, v5}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    :cond_3a
    move-object v5, v8

    :cond_3b
    if-eqz v6, :cond_3c

    .line 691
    invoke-virtual {v6, v11}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    move-result v13

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 695
    :cond_3c
    :goto_1f
    invoke-virtual {v11}, Landroidx/compose/ui/Modifier$Node;->getChild$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v11

    goto :goto_1d

    :cond_3d
    if-ne v12, v3, :cond_3e

    goto :goto_1b

    .line 703
    :cond_3e
    invoke-static {v6}, Landroidx/compose/ui/node/DelegatableNodeKt;->access$pop(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    move-result-object v5

    goto :goto_1b

    .line 274
    :cond_3f
    invoke-interface/range {p2 .. p2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_40

    return v3

    .line 707
    :cond_40
    invoke-interface {v9}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v5

    move-object v6, v8

    :goto_20
    if-eqz v5, :cond_4b

    .line 711
    instance-of v9, v5, Landroidx/compose/ui/input/key/KeyInputModifierNode;

    if-eqz v9, :cond_41

    .line 712
    check-cast v5, Landroidx/compose/ui/input/key/KeyInputModifierNode;

    .line 275
    invoke-interface {v5, v1}, Landroidx/compose/ui/input/key/KeyInputModifierNode;->onKeyEvent-ZmokQxo(Landroid/view/KeyEvent;)Z

    move-result v5

    if-eqz v5, :cond_4a

    return v3

    .line 607
    :cond_41
    invoke-virtual {v5}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v9

    and-int/2addr v9, v2

    if-eqz v9, :cond_42

    move v9, v3

    goto :goto_21

    :cond_42
    move v9, v4

    :goto_21
    if-eqz v9, :cond_4a

    .line 713
    instance-of v9, v5, Landroidx/compose/ui/node/DelegatingNode;

    if-eqz v9, :cond_4a

    .line 719
    move-object v9, v5

    check-cast v9, Landroidx/compose/ui/node/DelegatingNode;

    .line 720
    invoke-virtual {v9}, Landroidx/compose/ui/node/DelegatingNode;->getDelegate$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v9

    move v11, v4

    :goto_22
    if-eqz v9, :cond_49

    .line 607
    invoke-virtual {v9}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v12

    and-int/2addr v12, v2

    if-eqz v12, :cond_43

    move v12, v3

    goto :goto_23

    :cond_43
    move v12, v4

    :goto_23
    if-eqz v12, :cond_48

    add-int/lit8 v11, v11, 0x1

    if-ne v11, v3, :cond_44

    move-object v5, v9

    goto :goto_24

    :cond_44
    if-nez v6, :cond_45

    .line 733
    new-instance v6, Landroidx/compose/runtime/collection/MutableVector;

    new-array v12, v7, [Landroidx/compose/ui/Modifier$Node;

    invoke-direct {v6, v12, v4}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    :cond_45
    if-eqz v5, :cond_47

    if-eqz v6, :cond_46

    .line 736
    invoke-virtual {v6, v5}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    :cond_46
    move-object v5, v8

    :cond_47
    if-eqz v6, :cond_48

    .line 739
    invoke-virtual {v6, v9}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    move-result v12

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 743
    :cond_48
    :goto_24
    invoke-virtual {v9}, Landroidx/compose/ui/Modifier$Node;->getChild$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v9

    goto :goto_22

    :cond_49
    if-ne v11, v3, :cond_4a

    goto :goto_20

    .line 751
    :cond_4a
    invoke-static {v6}, Landroidx/compose/ui/node/DelegatableNodeKt;->access$pop(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    move-result-object v5

    goto :goto_20

    :cond_4b
    if-eqz v10, :cond_4e

    .line 756
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v2

    move v5, v4

    :goto_25
    if-ge v5, v2, :cond_4d

    .line 757
    invoke-interface {v10, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    .line 758
    check-cast v6, Landroidx/compose/ui/input/key/KeyInputModifierNode;

    .line 275
    invoke-interface {v6, v1}, Landroidx/compose/ui/input/key/KeyInputModifierNode;->onKeyEvent-ZmokQxo(Landroid/view/KeyEvent;)Z

    move-result v6

    if-eqz v6, :cond_4c

    return v3

    :cond_4c
    add-int/lit8 v5, v5, 0x1

    goto :goto_25

    .line 760
    :cond_4d
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 761
    :cond_4e
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_26

    .line 588
    :cond_4f
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_50
    :goto_26
    return v4

    .line 517
    :cond_51
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 260
    :cond_52
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Dispatching key event while focus system is invalidated."

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public dispatchRotaryEvent(Landroidx/compose/ui/input/rotary/RotaryScrollEvent;)Z
    .locals 14

    .line 302
    iget-object v0, p0, Landroidx/compose/ui/focus/FocusOwnerImpl;->focusInvalidationManager:Landroidx/compose/ui/focus/FocusInvalidationManager;

    invoke-virtual {v0}, Landroidx/compose/ui/focus/FocusInvalidationManager;->hasPendingInvalidation()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    if-eqz v0, :cond_3b

    .line 306
    iget-object v0, p0, Landroidx/compose/ui/focus/FocusOwnerImpl;->rootFocusNode:Landroidx/compose/ui/focus/FocusTargetNode;

    invoke-static {v0}, Landroidx/compose/ui/focus/FocusTraversalKt;->findActiveFocusNode(Landroidx/compose/ui/focus/FocusTargetNode;)Landroidx/compose/ui/focus/FocusTargetNode;

    move-result-object v0

    const-string/jumbo v2, "visitAncestors called on an unattached node"

    const/16 v3, 0x4000

    const/16 v4, 0x10

    const/4 v5, 0x0

    const/4 v6, 0x0

    if-eqz v0, :cond_f

    check-cast v0, Landroidx/compose/ui/node/DelegatableNode;

    .line 1010
    invoke-static {v3}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v7

    .line 1013
    invoke-interface {v0}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v8

    invoke-virtual {v8}, Landroidx/compose/ui/Modifier$Node;->isAttached()Z

    move-result v8

    if-eqz v8, :cond_e

    .line 1015
    invoke-interface {v0}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v8

    .line 1016
    invoke-static {v0}, Landroidx/compose/ui/node/DelegatableNodeKt;->requireLayoutNode(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/LayoutNode;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_d

    .line 1018
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->getNodes$ui_release()Landroidx/compose/ui/node/NodeChain;

    move-result-object v9

    invoke-virtual {v9}, Landroidx/compose/ui/node/NodeChain;->getHead$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v9

    .line 1019
    invoke-virtual {v9}, Landroidx/compose/ui/Modifier$Node;->getAggregateChildKindSet$ui_release()I

    move-result v9

    and-int/2addr v9, v7

    if-eqz v9, :cond_b

    :goto_1
    if-eqz v8, :cond_b

    .line 1021
    invoke-virtual {v8}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v9

    and-int/2addr v9, v7

    if-eqz v9, :cond_a

    move-object v10, v5

    move-object v9, v8

    :goto_2
    if-eqz v9, :cond_a

    .line 1026
    instance-of v11, v9, Landroidx/compose/ui/input/rotary/RotaryInputModifierNode;

    if-eqz v11, :cond_0

    goto/16 :goto_7

    .line 1030
    :cond_0
    invoke-virtual {v9}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v11

    and-int/2addr v11, v7

    if-eqz v11, :cond_1

    move v11, v1

    goto :goto_3

    :cond_1
    move v11, v6

    :goto_3
    if-eqz v11, :cond_9

    .line 1029
    instance-of v11, v9, Landroidx/compose/ui/node/DelegatingNode;

    if-eqz v11, :cond_9

    .line 1032
    move-object v11, v9

    check-cast v11, Landroidx/compose/ui/node/DelegatingNode;

    .line 1033
    invoke-virtual {v11}, Landroidx/compose/ui/node/DelegatingNode;->getDelegate$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v11

    move v12, v6

    :goto_4
    if-eqz v11, :cond_8

    .line 1030
    invoke-virtual {v11}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v13

    and-int/2addr v13, v7

    if-eqz v13, :cond_2

    move v13, v1

    goto :goto_5

    :cond_2
    move v13, v6

    :goto_5
    if-eqz v13, :cond_7

    add-int/lit8 v12, v12, 0x1

    if-ne v12, v1, :cond_3

    move-object v9, v11

    goto :goto_6

    :cond_3
    if-nez v10, :cond_4

    .line 1046
    new-instance v10, Landroidx/compose/runtime/collection/MutableVector;

    new-array v13, v4, [Landroidx/compose/ui/Modifier$Node;

    invoke-direct {v10, v13, v6}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    :cond_4
    if-eqz v9, :cond_6

    if-eqz v10, :cond_5

    .line 1049
    invoke-virtual {v10, v9}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    :cond_5
    move-object v9, v5

    :cond_6
    if-eqz v10, :cond_7

    .line 1052
    invoke-virtual {v10, v11}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    .line 1056
    :cond_7
    :goto_6
    invoke-virtual {v11}, Landroidx/compose/ui/Modifier$Node;->getChild$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v11

    goto :goto_4

    :cond_8
    if-ne v12, v1, :cond_9

    goto :goto_2

    .line 1064
    :cond_9
    invoke-static {v10}, Landroidx/compose/ui/node/DelegatableNodeKt;->access$pop(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    move-result-object v9

    goto :goto_2

    .line 1067
    :cond_a
    invoke-virtual {v8}, Landroidx/compose/ui/Modifier$Node;->getParent$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v8

    goto :goto_1

    .line 1070
    :cond_b
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->getParent$ui_release()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 1071
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->getNodes$ui_release()Landroidx/compose/ui/node/NodeChain;

    move-result-object v8

    if-eqz v8, :cond_c

    invoke-virtual {v8}, Landroidx/compose/ui/node/NodeChain;->getTail$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v8

    goto/16 :goto_0

    :cond_c
    move-object v8, v5

    goto/16 :goto_0

    :cond_d
    move-object v9, v5

    .line 1074
    :goto_7
    check-cast v9, Landroidx/compose/ui/input/rotary/RotaryInputModifierNode;

    goto :goto_8

    .line 1013
    :cond_e
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_f
    move-object v9, v5

    :goto_8
    if-eqz v9, :cond_3a

    .line 309
    check-cast v9, Landroidx/compose/ui/node/DelegatableNode;

    .line 1075
    invoke-static {v3}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v0

    .line 1084
    invoke-interface {v9}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/compose/ui/Modifier$Node;->isAttached()Z

    move-result v3

    if-eqz v3, :cond_39

    .line 1086
    invoke-interface {v9}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/compose/ui/Modifier$Node;->getParent$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v2

    .line 1087
    invoke-static {v9}, Landroidx/compose/ui/node/DelegatableNodeKt;->requireLayoutNode(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/LayoutNode;

    move-result-object v3

    move-object v7, v5

    :goto_9
    if-eqz v3, :cond_1e

    .line 1089
    invoke-virtual {v3}, Landroidx/compose/ui/node/LayoutNode;->getNodes$ui_release()Landroidx/compose/ui/node/NodeChain;

    move-result-object v8

    invoke-virtual {v8}, Landroidx/compose/ui/node/NodeChain;->getHead$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v8

    .line 1090
    invoke-virtual {v8}, Landroidx/compose/ui/Modifier$Node;->getAggregateChildKindSet$ui_release()I

    move-result v8

    and-int/2addr v8, v0

    if-eqz v8, :cond_1c

    :goto_a
    if-eqz v2, :cond_1c

    .line 1092
    invoke-virtual {v2}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v8

    and-int/2addr v8, v0

    if-eqz v8, :cond_1b

    move-object v8, v2

    move-object v10, v5

    :goto_b
    if-eqz v8, :cond_1b

    .line 1097
    instance-of v11, v8, Landroidx/compose/ui/input/rotary/RotaryInputModifierNode;

    if-eqz v11, :cond_11

    if-nez v7, :cond_10

    .line 1099
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    check-cast v7, Ljava/util/List;

    .line 1100
    :cond_10
    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_10

    .line 1103
    :cond_11
    invoke-virtual {v8}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v11

    and-int/2addr v11, v0

    if-eqz v11, :cond_12

    move v11, v1

    goto :goto_c

    :cond_12
    move v11, v6

    :goto_c
    if-eqz v11, :cond_1a

    .line 1102
    instance-of v11, v8, Landroidx/compose/ui/node/DelegatingNode;

    if-eqz v11, :cond_1a

    .line 1105
    move-object v11, v8

    check-cast v11, Landroidx/compose/ui/node/DelegatingNode;

    .line 1106
    invoke-virtual {v11}, Landroidx/compose/ui/node/DelegatingNode;->getDelegate$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v11

    move v12, v6

    :goto_d
    if-eqz v11, :cond_19

    .line 1103
    invoke-virtual {v11}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v13

    and-int/2addr v13, v0

    if-eqz v13, :cond_13

    move v13, v1

    goto :goto_e

    :cond_13
    move v13, v6

    :goto_e
    if-eqz v13, :cond_18

    add-int/lit8 v12, v12, 0x1

    if-ne v12, v1, :cond_14

    move-object v8, v11

    goto :goto_f

    :cond_14
    if-nez v10, :cond_15

    .line 1119
    new-instance v10, Landroidx/compose/runtime/collection/MutableVector;

    new-array v13, v4, [Landroidx/compose/ui/Modifier$Node;

    invoke-direct {v10, v13, v6}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    :cond_15
    if-eqz v8, :cond_17

    if-eqz v10, :cond_16

    .line 1122
    invoke-virtual {v10, v8}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    :cond_16
    move-object v8, v5

    :cond_17
    if-eqz v10, :cond_18

    .line 1125
    invoke-virtual {v10, v11}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    .line 1129
    :cond_18
    :goto_f
    invoke-virtual {v11}, Landroidx/compose/ui/Modifier$Node;->getChild$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v11

    goto :goto_d

    :cond_19
    if-ne v12, v1, :cond_1a

    goto :goto_b

    .line 1137
    :cond_1a
    :goto_10
    invoke-static {v10}, Landroidx/compose/ui/node/DelegatableNodeKt;->access$pop(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    move-result-object v8

    goto :goto_b

    .line 1140
    :cond_1b
    invoke-virtual {v2}, Landroidx/compose/ui/Modifier$Node;->getParent$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v2

    goto :goto_a

    .line 1143
    :cond_1c
    invoke-virtual {v3}, Landroidx/compose/ui/node/LayoutNode;->getParent$ui_release()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v3

    if-eqz v3, :cond_1d

    .line 1144
    invoke-virtual {v3}, Landroidx/compose/ui/node/LayoutNode;->getNodes$ui_release()Landroidx/compose/ui/node/NodeChain;

    move-result-object v2

    if-eqz v2, :cond_1d

    invoke-virtual {v2}, Landroidx/compose/ui/node/NodeChain;->getTail$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v2

    goto/16 :goto_9

    :cond_1d
    move-object v2, v5

    goto/16 :goto_9

    :cond_1e
    if-eqz v7, :cond_21

    .line 1150
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ltz v2, :cond_21

    :goto_11
    add-int/lit8 v3, v2, -0x1

    .line 1151
    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 1152
    check-cast v2, Landroidx/compose/ui/input/rotary/RotaryInputModifierNode;

    .line 311
    invoke-interface {v2, p1}, Landroidx/compose/ui/input/rotary/RotaryInputModifierNode;->onPreRotaryScrollEvent(Landroidx/compose/ui/input/rotary/RotaryScrollEvent;)Z

    move-result v2

    if-eqz v2, :cond_1f

    return v1

    :cond_1f
    if-gez v3, :cond_20

    goto :goto_12

    :cond_20
    move v2, v3

    goto :goto_11

    .line 1155
    :cond_21
    :goto_12
    invoke-interface {v9}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v2

    move-object v3, v5

    :goto_13
    if-eqz v2, :cond_2c

    .line 1159
    instance-of v8, v2, Landroidx/compose/ui/input/rotary/RotaryInputModifierNode;

    if-eqz v8, :cond_22

    .line 1160
    check-cast v2, Landroidx/compose/ui/input/rotary/RotaryInputModifierNode;

    .line 311
    invoke-interface {v2, p1}, Landroidx/compose/ui/input/rotary/RotaryInputModifierNode;->onPreRotaryScrollEvent(Landroidx/compose/ui/input/rotary/RotaryScrollEvent;)Z

    move-result v2

    if-eqz v2, :cond_2b

    return v1

    .line 1103
    :cond_22
    invoke-virtual {v2}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v8

    and-int/2addr v8, v0

    if-eqz v8, :cond_23

    move v8, v1

    goto :goto_14

    :cond_23
    move v8, v6

    :goto_14
    if-eqz v8, :cond_2b

    .line 1161
    instance-of v8, v2, Landroidx/compose/ui/node/DelegatingNode;

    if-eqz v8, :cond_2b

    .line 1167
    move-object v8, v2

    check-cast v8, Landroidx/compose/ui/node/DelegatingNode;

    .line 1168
    invoke-virtual {v8}, Landroidx/compose/ui/node/DelegatingNode;->getDelegate$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v8

    move v10, v6

    :goto_15
    if-eqz v8, :cond_2a

    .line 1103
    invoke-virtual {v8}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v11

    and-int/2addr v11, v0

    if-eqz v11, :cond_24

    move v11, v1

    goto :goto_16

    :cond_24
    move v11, v6

    :goto_16
    if-eqz v11, :cond_29

    add-int/lit8 v10, v10, 0x1

    if-ne v10, v1, :cond_25

    move-object v2, v8

    goto :goto_17

    :cond_25
    if-nez v3, :cond_26

    .line 1181
    new-instance v3, Landroidx/compose/runtime/collection/MutableVector;

    new-array v11, v4, [Landroidx/compose/ui/Modifier$Node;

    invoke-direct {v3, v11, v6}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    :cond_26
    if-eqz v2, :cond_28

    if-eqz v3, :cond_27

    .line 1184
    invoke-virtual {v3, v2}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    :cond_27
    move-object v2, v5

    :cond_28
    if-eqz v3, :cond_29

    .line 1187
    invoke-virtual {v3, v8}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    .line 1191
    :cond_29
    :goto_17
    invoke-virtual {v8}, Landroidx/compose/ui/Modifier$Node;->getChild$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v8

    goto :goto_15

    :cond_2a
    if-ne v10, v1, :cond_2b

    goto :goto_13

    .line 1199
    :cond_2b
    invoke-static {v3}, Landroidx/compose/ui/node/DelegatableNodeKt;->access$pop(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    move-result-object v2

    goto :goto_13

    .line 1203
    :cond_2c
    invoke-interface {v9}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v2

    move-object v3, v5

    :goto_18
    if-eqz v2, :cond_37

    .line 1207
    instance-of v8, v2, Landroidx/compose/ui/input/rotary/RotaryInputModifierNode;

    if-eqz v8, :cond_2d

    .line 1208
    check-cast v2, Landroidx/compose/ui/input/rotary/RotaryInputModifierNode;

    .line 313
    invoke-interface {v2, p1}, Landroidx/compose/ui/input/rotary/RotaryInputModifierNode;->onRotaryScrollEvent(Landroidx/compose/ui/input/rotary/RotaryScrollEvent;)Z

    move-result v2

    if-eqz v2, :cond_36

    return v1

    .line 1103
    :cond_2d
    invoke-virtual {v2}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v8

    and-int/2addr v8, v0

    if-eqz v8, :cond_2e

    move v8, v1

    goto :goto_19

    :cond_2e
    move v8, v6

    :goto_19
    if-eqz v8, :cond_36

    .line 1209
    instance-of v8, v2, Landroidx/compose/ui/node/DelegatingNode;

    if-eqz v8, :cond_36

    .line 1215
    move-object v8, v2

    check-cast v8, Landroidx/compose/ui/node/DelegatingNode;

    .line 1216
    invoke-virtual {v8}, Landroidx/compose/ui/node/DelegatingNode;->getDelegate$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v8

    move v9, v6

    :goto_1a
    if-eqz v8, :cond_35

    .line 1103
    invoke-virtual {v8}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v10

    and-int/2addr v10, v0

    if-eqz v10, :cond_2f

    move v10, v1

    goto :goto_1b

    :cond_2f
    move v10, v6

    :goto_1b
    if-eqz v10, :cond_34

    add-int/lit8 v9, v9, 0x1

    if-ne v9, v1, :cond_30

    move-object v2, v8

    goto :goto_1c

    :cond_30
    if-nez v3, :cond_31

    .line 1229
    new-instance v3, Landroidx/compose/runtime/collection/MutableVector;

    new-array v10, v4, [Landroidx/compose/ui/Modifier$Node;

    invoke-direct {v3, v10, v6}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    :cond_31
    if-eqz v2, :cond_33

    if-eqz v3, :cond_32

    .line 1232
    invoke-virtual {v3, v2}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    :cond_32
    move-object v2, v5

    :cond_33
    if-eqz v3, :cond_34

    .line 1235
    invoke-virtual {v3, v8}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    .line 1239
    :cond_34
    :goto_1c
    invoke-virtual {v8}, Landroidx/compose/ui/Modifier$Node;->getChild$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v8

    goto :goto_1a

    :cond_35
    if-ne v9, v1, :cond_36

    goto :goto_18

    .line 1247
    :cond_36
    invoke-static {v3}, Landroidx/compose/ui/node/DelegatableNodeKt;->access$pop(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    move-result-object v2

    goto :goto_18

    :cond_37
    if-eqz v7, :cond_3a

    .line 1252
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    move v2, v6

    :goto_1d
    if-ge v2, v0, :cond_3a

    .line 1253
    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 1254
    check-cast v3, Landroidx/compose/ui/input/rotary/RotaryInputModifierNode;

    .line 313
    invoke-interface {v3, p1}, Landroidx/compose/ui/input/rotary/RotaryInputModifierNode;->onRotaryScrollEvent(Landroidx/compose/ui/input/rotary/RotaryScrollEvent;)Z

    move-result v3

    if-eqz v3, :cond_38

    return v1

    :cond_38
    add-int/lit8 v2, v2, 0x1

    goto :goto_1d

    .line 1084
    :cond_39
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3a
    return v6

    .line 302
    :cond_3b
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Dispatching rotary event while focus system is invalidated."

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public focusSearch-ULY8qGw(ILandroidx/compose/ui/geometry/Rect;Lkotlin/jvm/functions/Function1;)Ljava/lang/Boolean;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroidx/compose/ui/geometry/Rect;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/focus/FocusTargetNode;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Boolean;"
        }
    .end annotation

    .line 237
    iget-object v0, p0, Landroidx/compose/ui/focus/FocusOwnerImpl;->rootFocusNode:Landroidx/compose/ui/focus/FocusTargetNode;

    invoke-static {v0}, Landroidx/compose/ui/focus/FocusTraversalKt;->findActiveFocusNode(Landroidx/compose/ui/focus/FocusTargetNode;)Landroidx/compose/ui/focus/FocusTargetNode;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 239
    iget-object v2, p0, Landroidx/compose/ui/focus/FocusOwnerImpl;->onLayoutDirection:Lkotlin/jvm/functions/Function0;

    invoke-interface {v2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/ui/unit/LayoutDirection;

    invoke-static {v0, p1, v2}, Landroidx/compose/ui/focus/FocusTraversalKt;->customFocusSearch--OM-vw8(Landroidx/compose/ui/focus/FocusTargetNode;ILandroidx/compose/ui/unit/LayoutDirection;)Landroidx/compose/ui/focus/FocusRequester;

    move-result-object v2

    .line 241
    sget-object v3, Landroidx/compose/ui/focus/FocusRequester;->Companion:Landroidx/compose/ui/focus/FocusRequester$Companion;

    invoke-virtual {v3}, Landroidx/compose/ui/focus/FocusRequester$Companion;->getCancel()Landroidx/compose/ui/focus/FocusRequester;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    return-object v1

    .line 242
    :cond_0
    sget-object v1, Landroidx/compose/ui/focus/FocusRequester;->Companion:Landroidx/compose/ui/focus/FocusRequester$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/focus/FocusRequester$Companion;->getDefault()Landroidx/compose/ui/focus/FocusRequester;

    move-result-object v1

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 243
    invoke-virtual {v2, p3}, Landroidx/compose/ui/focus/FocusRequester;->findFocusTargetNode$ui_release(Lkotlin/jvm/functions/Function1;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :cond_1
    move-object v0, v1

    .line 247
    :cond_2
    iget-object v1, p0, Landroidx/compose/ui/focus/FocusOwnerImpl;->rootFocusNode:Landroidx/compose/ui/focus/FocusTargetNode;

    iget-object v2, p0, Landroidx/compose/ui/focus/FocusOwnerImpl;->onLayoutDirection:Lkotlin/jvm/functions/Function0;

    invoke-interface {v2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/ui/unit/LayoutDirection;

    new-instance v3, Landroidx/compose/ui/focus/FocusOwnerImpl$focusSearch$1;

    invoke-direct {v3, v0, p0, p3}, Landroidx/compose/ui/focus/FocusOwnerImpl$focusSearch$1;-><init>(Landroidx/compose/ui/focus/FocusTargetNode;Landroidx/compose/ui/focus/FocusOwnerImpl;Lkotlin/jvm/functions/Function1;)V

    check-cast v3, Lkotlin/jvm/functions/Function1;

    invoke-static {v1, p1, v2, p2, v3}, Landroidx/compose/ui/focus/FocusTraversalKt;->focusSearch-0X8WOeE(Landroidx/compose/ui/focus/FocusTargetNode;ILandroidx/compose/ui/unit/LayoutDirection;Landroidx/compose/ui/geometry/Rect;Lkotlin/jvm/functions/Function1;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public getFocusRect()Landroidx/compose/ui/geometry/Rect;
    .locals 1

    .line 370
    iget-object v0, p0, Landroidx/compose/ui/focus/FocusOwnerImpl;->rootFocusNode:Landroidx/compose/ui/focus/FocusTargetNode;

    invoke-static {v0}, Landroidx/compose/ui/focus/FocusTraversalKt;->findActiveFocusNode(Landroidx/compose/ui/focus/FocusTargetNode;)Landroidx/compose/ui/focus/FocusTargetNode;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Landroidx/compose/ui/focus/FocusTraversalKt;->focusRect(Landroidx/compose/ui/focus/FocusTargetNode;)Landroidx/compose/ui/geometry/Rect;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getFocusTransactionManager()Landroidx/compose/ui/focus/FocusTransactionManager;
    .locals 1

    .line 73
    iget-object v0, p0, Landroidx/compose/ui/focus/FocusOwnerImpl;->focusTransactionManager:Landroidx/compose/ui/focus/FocusTransactionManager;

    return-object v0
.end method

.method public getModifier()Landroidx/compose/ui/Modifier;
    .locals 1

    .line 80
    iget-object v0, p0, Landroidx/compose/ui/focus/FocusOwnerImpl;->modifier:Landroidx/compose/ui/Modifier;

    return-object v0
.end method

.method public final getRootFocusNode$ui_release()Landroidx/compose/ui/focus/FocusTargetNode;
    .locals 1

    .line 66
    iget-object v0, p0, Landroidx/compose/ui/focus/FocusOwnerImpl;->rootFocusNode:Landroidx/compose/ui/focus/FocusTargetNode;

    return-object v0
.end method

.method public getRootState()Landroidx/compose/ui/focus/FocusState;
    .locals 1

    .line 374
    iget-object v0, p0, Landroidx/compose/ui/focus/FocusOwnerImpl;->rootFocusNode:Landroidx/compose/ui/focus/FocusTargetNode;

    invoke-virtual {v0}, Landroidx/compose/ui/focus/FocusTargetNode;->getFocusState()Landroidx/compose/ui/focus/FocusStateImpl;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/focus/FocusState;

    return-object v0
.end method

.method public moveFocus-3ESFkO8(I)Z
    .locals 5

    .line 202
    new-instance v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 203
    iget-object v2, p0, Landroidx/compose/ui/focus/FocusOwnerImpl;->onFocusRectInterop:Lkotlin/jvm/functions/Function0;

    invoke-interface {v2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/ui/geometry/Rect;

    new-instance v3, Landroidx/compose/ui/focus/FocusOwnerImpl$moveFocus$focusSearchSuccess$1;

    invoke-direct {v3, v0, p1}, Landroidx/compose/ui/focus/FocusOwnerImpl$moveFocus$focusSearchSuccess$1;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;I)V

    check-cast v3, Lkotlin/jvm/functions/Function1;

    invoke-virtual {p0, p1, v2, v3}, Landroidx/compose/ui/focus/FocusOwnerImpl;->focusSearch-ULY8qGw(ILandroidx/compose/ui/geometry/Rect;Lkotlin/jvm/functions/Function1;)Ljava/lang/Boolean;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 210
    iget-object v3, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x1

    .line 213
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v0, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v3

    .line 216
    :cond_1
    invoke-static {p1}, Landroidx/compose/ui/focus/FocusOwnerImplKt;->is1dFocusSearch-3ESFkO8(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 217
    invoke-virtual {p0, v1, v3, v1, p1}, Landroidx/compose/ui/focus/FocusOwnerImpl;->clearFocus-I7lrPNg(ZZZI)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 223
    invoke-virtual {p0, p1, v0}, Landroidx/compose/ui/focus/FocusOwnerImpl;->takeFocus-aToIllA(ILandroidx/compose/ui/geometry/Rect;)Z

    move-result p1

    if-eqz p1, :cond_2

    move v1, v3

    :cond_2
    return v1

    .line 229
    :cond_3
    iget-object v0, p0, Landroidx/compose/ui/focus/FocusOwnerImpl;->onMoveFocusInterop:Lkotlin/jvm/functions/Function1;

    invoke-static {p1}, Landroidx/compose/ui/focus/FocusDirection;->box-impl(I)Landroidx/compose/ui/focus/FocusDirection;

    move-result-object p1

    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    :cond_4
    :goto_0
    return v1
.end method

.method public releaseFocus()V
    .locals 3

    .line 148
    invoke-virtual {p0}, Landroidx/compose/ui/focus/FocusOwnerImpl;->getFocusTransactionManager()Landroidx/compose/ui/focus/FocusTransactionManager;

    move-result-object v0

    .line 428
    invoke-static {v0}, Landroidx/compose/ui/focus/FocusTransactionManager;->access$getOngoingTransaction$p(Landroidx/compose/ui/focus/FocusTransactionManager;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 149
    iget-object v0, p0, Landroidx/compose/ui/focus/FocusOwnerImpl;->rootFocusNode:Landroidx/compose/ui/focus/FocusTargetNode;

    invoke-static {v0, v2, v2}, Landroidx/compose/ui/focus/FocusTransactionsKt;->clearFocus(Landroidx/compose/ui/focus/FocusTargetNode;ZZ)Z

    goto :goto_0

    .line 429
    :cond_0
    :try_start_0
    invoke-static {v0}, Landroidx/compose/ui/focus/FocusTransactionManager;->access$beginTransaction(Landroidx/compose/ui/focus/FocusTransactionManager;)V

    .line 149
    iget-object v1, p0, Landroidx/compose/ui/focus/FocusOwnerImpl;->rootFocusNode:Landroidx/compose/ui/focus/FocusTargetNode;

    invoke-static {v1, v2, v2}, Landroidx/compose/ui/focus/FocusTransactionsKt;->clearFocus(Landroidx/compose/ui/focus/FocusTargetNode;ZZ)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 432
    invoke-static {v0}, Landroidx/compose/ui/focus/FocusTransactionManager;->access$commitTransaction(Landroidx/compose/ui/focus/FocusTransactionManager;)V

    :goto_0
    return-void

    :catchall_0
    move-exception v1

    invoke-static {v0}, Landroidx/compose/ui/focus/FocusTransactionManager;->access$commitTransaction(Landroidx/compose/ui/focus/FocusTransactionManager;)V

    throw v1
.end method

.method public requestFocusForOwner-7o62pno(Landroidx/compose/ui/focus/FocusDirection;Landroidx/compose/ui/geometry/Rect;)Z
    .locals 1

    .line 111
    iget-object v0, p0, Landroidx/compose/ui/focus/FocusOwnerImpl;->onRequestFocusForOwner:Lkotlin/jvm/functions/Function2;

    invoke-interface {v0, p1, p2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method public scheduleInvalidation(Landroidx/compose/ui/focus/FocusEventModifierNode;)V
    .locals 1

    .line 324
    iget-object v0, p0, Landroidx/compose/ui/focus/FocusOwnerImpl;->focusInvalidationManager:Landroidx/compose/ui/focus/FocusInvalidationManager;

    invoke-virtual {v0, p1}, Landroidx/compose/ui/focus/FocusInvalidationManager;->scheduleInvalidation(Landroidx/compose/ui/focus/FocusEventModifierNode;)V

    return-void
.end method

.method public scheduleInvalidation(Landroidx/compose/ui/focus/FocusPropertiesModifierNode;)V
    .locals 1

    .line 328
    iget-object v0, p0, Landroidx/compose/ui/focus/FocusOwnerImpl;->focusInvalidationManager:Landroidx/compose/ui/focus/FocusInvalidationManager;

    invoke-virtual {v0, p1}, Landroidx/compose/ui/focus/FocusInvalidationManager;->scheduleInvalidation(Landroidx/compose/ui/focus/FocusPropertiesModifierNode;)V

    return-void
.end method

.method public scheduleInvalidation(Landroidx/compose/ui/focus/FocusTargetNode;)V
    .locals 1

    .line 320
    iget-object v0, p0, Landroidx/compose/ui/focus/FocusOwnerImpl;->focusInvalidationManager:Landroidx/compose/ui/focus/FocusInvalidationManager;

    invoke-virtual {v0, p1}, Landroidx/compose/ui/focus/FocusInvalidationManager;->scheduleInvalidation(Landroidx/compose/ui/focus/FocusTargetNode;)V

    return-void
.end method

.method public final setRootFocusNode$ui_release(Landroidx/compose/ui/focus/FocusTargetNode;)V
    .locals 0

    .line 66
    iput-object p1, p0, Landroidx/compose/ui/focus/FocusOwnerImpl;->rootFocusNode:Landroidx/compose/ui/focus/FocusTargetNode;

    return-void
.end method

.method public takeFocus-aToIllA(ILandroidx/compose/ui/geometry/Rect;)Z
    .locals 1

    .line 136
    new-instance v0, Landroidx/compose/ui/focus/FocusOwnerImpl$takeFocus$1;

    invoke-direct {v0, p1}, Landroidx/compose/ui/focus/FocusOwnerImpl$takeFocus$1;-><init>(I)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-virtual {p0, p1, p2, v0}, Landroidx/compose/ui/focus/FocusOwnerImpl;->focusSearch-ULY8qGw(ILandroidx/compose/ui/geometry/Rect;Lkotlin/jvm/functions/Function1;)Ljava/lang/Boolean;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
