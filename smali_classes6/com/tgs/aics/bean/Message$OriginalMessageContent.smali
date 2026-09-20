.class public Lcom/tgs/aics/bean/Message$OriginalMessageContent;
.super Ljava/lang/Object;
.source "Message.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tgs/aics/bean/Message;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OriginalMessageContent"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tgs/aics/bean/Message$OriginalMessageContent$FormDetail;,
        Lcom/tgs/aics/bean/Message$OriginalMessageContent$Rating;,
        Lcom/tgs/aics/bean/Message$OriginalMessageContent$Files;
    }
.end annotation


# instance fields
.field private accountType:Ljava/lang/String;

.field private avatarUrl:Ljava/lang/String;

.field private characterId:Ljava/lang/String;

.field private content:Ljava/lang/String;

.field private extInfo:Ljava/lang/String;

.field private feedRechargeRecord:Lcom/tgs/aics/bean/RechargeRecordBean$RecordsList;

.field private files:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tgs/aics/bean/Message$OriginalMessageContent$Files;",
            ">;"
        }
    .end annotation
.end field

.field private formDetail:Lcom/tgs/aics/bean/Message$OriginalMessageContent$FormDetail;

.field private gameId:Ljava/lang/String;

.field private inGameLanguage:Ljava/lang/String;

.field private messageId:Ljava/lang/String;

.field private messageType:Lcom/tgs/aics/bean/Message$MessageContentType;

.field private rating:Lcom/tgs/aics/bean/Message$OriginalMessageContent$Rating;

.field private rechargeRecordBean:Lcom/tgs/aics/bean/RechargeRecordBean;

.field private selfServiceUrl:Ljava/lang/String;

.field private sender:Lcom/tgs/aics/bean/Message$MessageSource;

.field private timestamp:J

.field private udid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 592
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createCommonMessageContent(Lcom/tgs/aics/bean/Message$MessageContentType;)Lcom/tgs/aics/bean/Message$OriginalMessageContent;
    .locals 3

    .line 789
    new-instance v0, Lcom/tgs/aics/bean/Message$OriginalMessageContent;

    invoke-direct {v0}, Lcom/tgs/aics/bean/Message$OriginalMessageContent;-><init>()V

    .line 790
    iput-object p0, v0, Lcom/tgs/aics/bean/Message$OriginalMessageContent;->messageType:Lcom/tgs/aics/bean/Message$MessageContentType;

    .line 791
    sget-object p0, Lcom/tgs/aics/bean/Message$MessageSource;->PLAYER:Lcom/tgs/aics/bean/Message$MessageSource;

    iput-object p0, v0, Lcom/tgs/aics/bean/Message$OriginalMessageContent;->sender:Lcom/tgs/aics/bean/Message$MessageSource;

    .line 792
    sget-object p0, Lcom/tgs/aics/utils/ConstantUtil$InitParams;->gameId:Ljava/lang/String;

    iput-object p0, v0, Lcom/tgs/aics/bean/Message$OriginalMessageContent;->gameId:Ljava/lang/String;

    .line 793
    sget-object p0, Lcom/tgs/aics/utils/ConstantUtil$InitParams;->accountToken:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "device"

    goto :goto_0

    :cond_0
    const-string p0, "character"

    :goto_0
    iput-object p0, v0, Lcom/tgs/aics/bean/Message$OriginalMessageContent;->accountType:Ljava/lang/String;

    .line 794
    sget-object p0, Lcom/tgs/aics/utils/ConstantUtil$InitParams;->accountToken:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 795
    sget-object p0, Lcom/tgs/aics/utils/ConstantUtil$InitParams;->udid:Ljava/lang/String;

    iput-object p0, v0, Lcom/tgs/aics/bean/Message$OriginalMessageContent;->udid:Ljava/lang/String;

    goto :goto_1

    :cond_1
    const-string p0, ""

    .line 797
    iput-object p0, v0, Lcom/tgs/aics/bean/Message$OriginalMessageContent;->characterId:Ljava/lang/String;

    .line 799
    :goto_1
    sget-object p0, Lcom/tgs/aics/utils/ConstantUtil$InitParams;->gameLanguage:Ljava/lang/String;

    iput-object p0, v0, Lcom/tgs/aics/bean/Message$OriginalMessageContent;->inGameLanguage:Ljava/lang/String;

    .line 800
    invoke-static {}, Lcom/tgs/aics/utils/Utils;->getRealTimeStamp()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/tgs/aics/bean/Message$OriginalMessageContent;->timestamp:J

    .line 801
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/tgs/aics/bean/Message$OriginalMessageContent;->messageId:Ljava/lang/String;

    return-object v0
.end method

.method public static createMessageContentWitImage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/tgs/aics/bean/Message$OriginalMessageContent;
    .locals 11

    .line 720
    sget-object v0, Lcom/tgs/aics/bean/Message$MessageContentType;->PIC:Lcom/tgs/aics/bean/Message$MessageContentType;

    invoke-static {v0}, Lcom/tgs/aics/bean/Message$OriginalMessageContent;->createCommonMessageContent(Lcom/tgs/aics/bean/Message$MessageContentType;)Lcom/tgs/aics/bean/Message$OriginalMessageContent;

    move-result-object v0

    .line 721
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 722
    new-instance v10, Lcom/tgs/aics/bean/Message$OriginalMessageContent$Files;

    move-object v2, v10

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    invoke-direct/range {v2 .. v9}, Lcom/tgs/aics/bean/Message$OriginalMessageContent$Files;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 723
    iput-object v1, v0, Lcom/tgs/aics/bean/Message$OriginalMessageContent;->files:Ljava/util/List;

    return-object v0
.end method

.method public static createMessageContentWithFeedbackRechargeRecord(Lcom/tgs/aics/bean/RechargeRecordBean$RecordsList;)Lcom/tgs/aics/bean/Message$OriginalMessageContent;
    .locals 1

    .line 783
    sget-object v0, Lcom/tgs/aics/bean/Message$MessageContentType;->PLAYER_RECHARGE_RECORD_FEEDBACK:Lcom/tgs/aics/bean/Message$MessageContentType;

    invoke-static {v0}, Lcom/tgs/aics/bean/Message$OriginalMessageContent;->createCommonMessageContent(Lcom/tgs/aics/bean/Message$MessageContentType;)Lcom/tgs/aics/bean/Message$OriginalMessageContent;

    move-result-object v0

    .line 784
    iput-object p0, v0, Lcom/tgs/aics/bean/Message$OriginalMessageContent;->feedRechargeRecord:Lcom/tgs/aics/bean/RechargeRecordBean$RecordsList;

    return-object v0
.end method

.method public static createMessageContentWithFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/tgs/aics/bean/Message$OriginalMessageContent;
    .locals 11

    .line 743
    sget-object v0, Lcom/tgs/aics/bean/Message$MessageContentType;->CLIENT_TYPE_LOG_FILE_UPLOAD:Lcom/tgs/aics/bean/Message$MessageContentType;

    invoke-static {v0}, Lcom/tgs/aics/bean/Message$OriginalMessageContent;->createCommonMessageContent(Lcom/tgs/aics/bean/Message$MessageContentType;)Lcom/tgs/aics/bean/Message$OriginalMessageContent;

    move-result-object v0

    .line 744
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 745
    new-instance v10, Lcom/tgs/aics/bean/Message$OriginalMessageContent$Files;

    move-object v2, v10

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p2

    move-object v7, p2

    move-object v8, p2

    move-object v9, p2

    invoke-direct/range {v2 .. v9}, Lcom/tgs/aics/bean/Message$OriginalMessageContent$Files;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    const-string p3, ""

    .line 746
    :goto_0
    invoke-virtual {v10, p3}, Lcom/tgs/aics/bean/Message$OriginalMessageContent$Files;->setType(Ljava/lang/String;)V

    .line 747
    invoke-interface {v1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 748
    iput-object v1, v0, Lcom/tgs/aics/bean/Message$OriginalMessageContent;->files:Ljava/util/List;

    return-object v0
.end method

.method public static createMessageContentWithFormDetail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/tgs/aics/bean/Message$OriginalMessageContent;
    .locals 9

    .line 765
    sget-object v0, Lcom/tgs/aics/bean/Message$MessageContentType;->FORM:Lcom/tgs/aics/bean/Message$MessageContentType;

    invoke-static {v0}, Lcom/tgs/aics/bean/Message$OriginalMessageContent;->createCommonMessageContent(Lcom/tgs/aics/bean/Message$MessageContentType;)Lcom/tgs/aics/bean/Message$OriginalMessageContent;

    move-result-object v0

    .line 766
    new-instance v8, Lcom/tgs/aics/bean/Message$OriginalMessageContent$FormDetail;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/tgs/aics/bean/Message$OriginalMessageContent$FormDetail;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v8, v0, Lcom/tgs/aics/bean/Message$OriginalMessageContent;->formDetail:Lcom/tgs/aics/bean/Message$OriginalMessageContent$FormDetail;

    return-object v0
.end method

.method public static createMessageContentWithIssue(Ljava/lang/String;Ljava/lang/String;)Lcom/tgs/aics/bean/Message$OriginalMessageContent;
    .locals 1

    .line 710
    sget-object v0, Lcom/tgs/aics/bean/Message$MessageContentType;->PLAYER_ISSUE:Lcom/tgs/aics/bean/Message$MessageContentType;

    invoke-static {v0}, Lcom/tgs/aics/bean/Message$OriginalMessageContent;->createCommonMessageContent(Lcom/tgs/aics/bean/Message$MessageContentType;)Lcom/tgs/aics/bean/Message$OriginalMessageContent;

    move-result-object v0

    .line 711
    iput-object p0, v0, Lcom/tgs/aics/bean/Message$OriginalMessageContent;->content:Ljava/lang/String;

    .line 712
    iput-object p1, v0, Lcom/tgs/aics/bean/Message$OriginalMessageContent;->extInfo:Ljava/lang/String;

    return-object v0
.end method

.method public static createMessageContentWithRating(Ljava/lang/String;[ILjava/lang/String;I)Lcom/tgs/aics/bean/Message$OriginalMessageContent;
    .locals 2

    .line 756
    sget-object v0, Lcom/tgs/aics/bean/Message$MessageContentType;->RATING_SCORE:Lcom/tgs/aics/bean/Message$MessageContentType;

    invoke-static {v0}, Lcom/tgs/aics/bean/Message$OriginalMessageContent;->createCommonMessageContent(Lcom/tgs/aics/bean/Message$MessageContentType;)Lcom/tgs/aics/bean/Message$OriginalMessageContent;

    move-result-object v0

    .line 757
    new-instance v1, Lcom/tgs/aics/bean/Message$OriginalMessageContent$Rating;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/tgs/aics/bean/Message$OriginalMessageContent$Rating;-><init>(Ljava/lang/String;[ILjava/lang/String;I)V

    iput-object v1, v0, Lcom/tgs/aics/bean/Message$OriginalMessageContent;->rating:Lcom/tgs/aics/bean/Message$OriginalMessageContent$Rating;

    return-object v0
.end method

.method public static createMessageContentWithRechargeRecordQuery(Ljava/lang/String;)Lcom/tgs/aics/bean/Message$OriginalMessageContent;
    .locals 1

    .line 774
    sget-object v0, Lcom/tgs/aics/bean/Message$MessageContentType;->PLAYER_RECHARGE_RECORD_REQUEST:Lcom/tgs/aics/bean/Message$MessageContentType;

    invoke-static {v0}, Lcom/tgs/aics/bean/Message$OriginalMessageContent;->createCommonMessageContent(Lcom/tgs/aics/bean/Message$MessageContentType;)Lcom/tgs/aics/bean/Message$OriginalMessageContent;

    move-result-object v0

    .line 775
    iput-object p0, v0, Lcom/tgs/aics/bean/Message$OriginalMessageContent;->selfServiceUrl:Ljava/lang/String;

    return-object v0
.end method

.method public static createMessageContentWithText(Ljava/lang/String;)Lcom/tgs/aics/bean/Message$OriginalMessageContent;
    .locals 1

    .line 699
    sget-object v0, Lcom/tgs/aics/bean/Message$MessageContentType;->CHAT_MESSAGE:Lcom/tgs/aics/bean/Message$MessageContentType;

    invoke-static {v0}, Lcom/tgs/aics/bean/Message$OriginalMessageContent;->createCommonMessageContent(Lcom/tgs/aics/bean/Message$MessageContentType;)Lcom/tgs/aics/bean/Message$OriginalMessageContent;

    move-result-object v0

    .line 700
    iput-object p0, v0, Lcom/tgs/aics/bean/Message$OriginalMessageContent;->content:Ljava/lang/String;

    return-object v0
.end method

.method public static createMessageContentWithVideo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/tgs/aics/bean/Message$OriginalMessageContent;
    .locals 11

    .line 731
    sget-object v0, Lcom/tgs/aics/bean/Message$MessageContentType;->VIDEO:Lcom/tgs/aics/bean/Message$MessageContentType;

    invoke-static {v0}, Lcom/tgs/aics/bean/Message$OriginalMessageContent;->createCommonMessageContent(Lcom/tgs/aics/bean/Message$MessageContentType;)Lcom/tgs/aics/bean/Message$OriginalMessageContent;

    move-result-object v0

    move-object v3, p1

    .line 732
    iput-object v3, v0, Lcom/tgs/aics/bean/Message$OriginalMessageContent;->content:Ljava/lang/String;

    .line 733
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 734
    new-instance v10, Lcom/tgs/aics/bean/Message$OriginalMessageContent$Files;

    move-object v1, v10

    move-object v2, p0

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    invoke-direct/range {v1 .. v8}, Lcom/tgs/aics/bean/Message$OriginalMessageContent$Files;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 735
    iput-object v9, v0, Lcom/tgs/aics/bean/Message$OriginalMessageContent;->files:Ljava/util/List;

    return-object v0
.end method

.method public static messageContent2JsonStr(Lcom/tgs/aics/bean/Message$OriginalMessageContent;)Ljava/lang/String;
    .locals 5

    .line 851
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "content"

    .line 852
    invoke-virtual {p0}, Lcom/tgs/aics/bean/Message$OriginalMessageContent;->getContent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "messageType"

    .line 853
    invoke-virtual {p0}, Lcom/tgs/aics/bean/Message$OriginalMessageContent;->getMessageType()Lcom/tgs/aics/bean/Message$MessageContentType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tgs/aics/bean/Message$MessageContentType;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "sender"

    .line 854
    invoke-virtual {p0}, Lcom/tgs/aics/bean/Message$OriginalMessageContent;->getSender()Lcom/tgs/aics/bean/Message$MessageSource;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "gameId"

    .line 855
    invoke-virtual {p0}, Lcom/tgs/aics/bean/Message$OriginalMessageContent;->getGameId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "accountType"

    .line 856
    invoke-virtual {p0}, Lcom/tgs/aics/bean/Message$OriginalMessageContent;->getAccountType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "udid"

    .line 857
    invoke-virtual {p0}, Lcom/tgs/aics/bean/Message$OriginalMessageContent;->getUdid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "charateId"

    .line 858
    invoke-virtual {p0}, Lcom/tgs/aics/bean/Message$OriginalMessageContent;->getCharacterId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "inGameLanguage"

    .line 859
    invoke-virtual {p0}, Lcom/tgs/aics/bean/Message$OriginalMessageContent;->getInGameLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "timestamp"

    .line 860
    invoke-virtual {p0}, Lcom/tgs/aics/bean/Message$OriginalMessageContent;->getTimestamp()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "messageId"

    .line 861
    invoke-virtual {p0}, Lcom/tgs/aics/bean/Message$OriginalMessageContent;->getMessageId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "extInfo"

    .line 862
    invoke-virtual {p0}, Lcom/tgs/aics/bean/Message$OriginalMessageContent;->getExtInfo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 864
    invoke-virtual {p0}, Lcom/tgs/aics/bean/Message$OriginalMessageContent;->getFormDetail()Lcom/tgs/aics/bean/Message$OriginalMessageContent$FormDetail;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v1, "formDetail"

    .line 865
    invoke-virtual {p0}, Lcom/tgs/aics/bean/Message$OriginalMessageContent;->getFormDetail()Lcom/tgs/aics/bean/Message$OriginalMessageContent$FormDetail;

    move-result-object v2

    invoke-static {v2}, Lcom/tgs/aics/bean/Message$OriginalMessageContent$FormDetail;->formDetail2Json(Lcom/tgs/aics/bean/Message$OriginalMessageContent$FormDetail;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 868
    :cond_0
    invoke-virtual {p0}, Lcom/tgs/aics/bean/Message$OriginalMessageContent;->getRating()Lcom/tgs/aics/bean/Message$OriginalMessageContent$Rating;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v1, "rating"

    .line 869
    invoke-virtual {p0}, Lcom/tgs/aics/bean/Message$OriginalMessageContent;->getRating()Lcom/tgs/aics/bean/Message$OriginalMessageContent$Rating;

    move-result-object v2

    invoke-static {v2}, Lcom/tgs/aics/bean/Message$OriginalMessageContent$Rating;->rating2Json(Lcom/tgs/aics/bean/Message$OriginalMessageContent$Rating;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 872
    :cond_1
    invoke-virtual {p0}, Lcom/tgs/aics/bean/Message$OriginalMessageContent;->getFiles()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 873
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_3

    .line 874
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    const/4 v3, 0x0

    .line 875
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 876
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/tgs/aics/bean/Message$OriginalMessageContent$Files;

    invoke-static {v4}, Lcom/tgs/aics/bean/Message$OriginalMessageContent$Files;->files2Json(Lcom/tgs/aics/bean/Message$OriginalMessageContent$Files;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    const-string v1, "files"

    .line 878
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_3
    const-string v1, "selfServiceUrl"

    .line 881
    invoke-virtual {p0}, Lcom/tgs/aics/bean/Message$OriginalMessageContent;->getSelfServiceUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "feedbackRechargeRecord"

    .line 883
    invoke-virtual {p0}, Lcom/tgs/aics/bean/Message$OriginalMessageContent;->getFeedRechargeRecord()Lcom/tgs/aics/bean/RechargeRecordBean$RecordsList;

    move-result-object p0

    invoke-static {p0}, Lcom/tgs/aics/bean/RechargeRecordBean$RecordsList;->records2Json(Lcom/tgs/aics/bean/RechargeRecordBean$RecordsList;)Lorg/json/JSONObject;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 884
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 886
    invoke-static {p0}, Lcom/tgs/aics/utils/ErrorUtils;->printExceptionInfo(Ljava/lang/Throwable;)V

    const-string p0, ""

    return-object p0
.end method

.method public static parseJSON(Ljava/lang/String;)Lcom/tgs/aics/bean/Message$OriginalMessageContent;
    .locals 4

    .line 806
    new-instance v0, Lcom/tgs/aics/bean/Message$OriginalMessageContent;

    invoke-direct {v0}, Lcom/tgs/aics/bean/Message$OriginalMessageContent;-><init>()V

    .line 808
    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 811
    :cond_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "content"

    .line 812
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/tgs/aics/bean/Message$OriginalMessageContent;->content:Ljava/lang/String;

    const-string p0, "messageType"

    .line 813
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tgs/aics/bean/Message;->access$000(Ljava/lang/String;)Lcom/tgs/aics/bean/Message$MessageContentType;

    move-result-object p0

    iput-object p0, v0, Lcom/tgs/aics/bean/Message$OriginalMessageContent;->messageType:Lcom/tgs/aics/bean/Message$MessageContentType;

    .line 814
    sget-object v2, Lcom/tgs/aics/bean/Message$MessageContentType;->RATING_REQUEST:Lcom/tgs/aics/bean/Message$MessageContentType;

    if-ne p0, v2, :cond_1

    const-string p0, "go_to_evaluate"

    .line 815
    iput-object p0, v0, Lcom/tgs/aics/bean/Message$OriginalMessageContent;->content:Ljava/lang/String;

    goto :goto_0

    .line 816
    :cond_1
    iget-object p0, v0, Lcom/tgs/aics/bean/Message$OriginalMessageContent;->messageType:Lcom/tgs/aics/bean/Message$MessageContentType;

    sget-object v2, Lcom/tgs/aics/bean/Message$MessageContentType;->CLIENT_APP_LOG_REQUEST:Lcom/tgs/aics/bean/Message$MessageContentType;

    if-ne p0, v2, :cond_2

    const-string p0, "go_to_upload_client_log"

    .line 817
    iput-object p0, v0, Lcom/tgs/aics/bean/Message$OriginalMessageContent;->content:Ljava/lang/String;

    :cond_2
    :goto_0
    const-string p0, "sender"

    .line 819
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tgs/aics/bean/Message;->access$100(Ljava/lang/String;)Lcom/tgs/aics/bean/Message$MessageSource;

    move-result-object p0

    iput-object p0, v0, Lcom/tgs/aics/bean/Message$OriginalMessageContent;->sender:Lcom/tgs/aics/bean/Message$MessageSource;

    const-string p0, "gameId"

    .line 820
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/tgs/aics/bean/Message$OriginalMessageContent;->gameId:Ljava/lang/String;

    const-string p0, "accountType"

    .line 821
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/tgs/aics/bean/Message$OriginalMessageContent;->accountType:Ljava/lang/String;

    const-string p0, "udid"

    .line 822
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/tgs/aics/bean/Message$OriginalMessageContent;->udid:Ljava/lang/String;

    const-string p0, "charateId"

    .line 823
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/tgs/aics/bean/Message$OriginalMessageContent;->characterId:Ljava/lang/String;

    const-string p0, "inGameLanguage"

    .line 824
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/tgs/aics/bean/Message$OriginalMessageContent;->inGameLanguage:Ljava/lang/String;

    const-string p0, "timestamp"

    .line 825
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/tgs/aics/bean/Message$OriginalMessageContent;->timestamp:J

    const-string p0, "messageId"

    .line 826
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/tgs/aics/bean/Message$OriginalMessageContent;->messageId:Ljava/lang/String;

    const-string p0, "formDetail"

    .line 828
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 830
    invoke-static {p0}, Lcom/tgs/aics/bean/Message$OriginalMessageContent$FormDetail;->parseJSON(Lorg/json/JSONObject;)Lcom/tgs/aics/bean/Message$OriginalMessageContent$FormDetail;

    move-result-object p0

    iput-object p0, v0, Lcom/tgs/aics/bean/Message$OriginalMessageContent;->formDetail:Lcom/tgs/aics/bean/Message$OriginalMessageContent$FormDetail;

    :cond_3
    const-string p0, "rating"

    .line 832
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    if-eqz p0, :cond_4

    .line 834
    invoke-static {p0}, Lcom/tgs/aics/bean/Message$OriginalMessageContent$Rating;->parseJSON(Lorg/json/JSONObject;)Lcom/tgs/aics/bean/Message$OriginalMessageContent$Rating;

    move-result-object p0

    iput-object p0, v0, Lcom/tgs/aics/bean/Message$OriginalMessageContent;->rating:Lcom/tgs/aics/bean/Message$OriginalMessageContent$Rating;

    :cond_4
    const-string p0, "files"

    .line 836
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    if-eqz p0, :cond_5

    .line 838
    invoke-static {p0}, Lcom/tgs/aics/bean/Message$OriginalMessageContent$Files;->parseJSON(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object p0

    iput-object p0, v0, Lcom/tgs/aics/bean/Message$OriginalMessageContent;->files:Ljava/util/List;

    :cond_5
    const-string p0, "rechargeRecordsResult"

    .line 840
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    invoke-static {p0}, Lcom/tgs/aics/bean/RechargeRecordBean;->parse(Lorg/json/JSONObject;)Lcom/tgs/aics/bean/RechargeRecordBean;

    move-result-object p0

    iput-object p0, v0, Lcom/tgs/aics/bean/Message$OriginalMessageContent;->rechargeRecordBean:Lcom/tgs/aics/bean/RechargeRecordBean;

    const-string p0, "feedbackRechargeRecord"

    .line 842
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    invoke-static {p0}, Lcom/tgs/aics/bean/RechargeRecordBean$RecordsList;->parse(Lorg/json/JSONObject;)Lcom/tgs/aics/bean/RechargeRecordBean$RecordsList;

    move-result-object p0

    iput-object p0, v0, Lcom/tgs/aics/bean/Message$OriginalMessageContent;->feedRechargeRecord:Lcom/tgs/aics/bean/RechargeRecordBean$RecordsList;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 844
    invoke-static {p0}, Lcom/tgs/aics/utils/ErrorUtils;->printExceptionInfo(Ljava/lang/Throwable;)V

    :goto_1
    return-object v0
.end method


# virtual methods
.method public getAccountType()Ljava/lang/String;
    .locals 1

    .line 638
    iget-object v0, p0, Lcom/tgs/aics/bean/Message$OriginalMessageContent;->accountType:Ljava/lang/String;

    return-object v0
.end method

.method public getAvatarUrl()Ljava/lang/String;
    .locals 1

    .line 614
    iget-object v0, p0, Lcom/tgs/aics/bean/Message$OriginalMessageContent;->avatarUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getCharacterId()Ljava/lang/String;
    .locals 1

    .line 646
    iget-object v0, p0, Lcom/tgs/aics/bean/Message$OriginalMessageContent;->characterId:Ljava/lang/String;

    return-object v0
.end method

.method public getContent()Ljava/lang/String;
    .locals 1

    .line 618
    iget-object v0, p0, Lcom/tgs/aics/bean/Message$OriginalMessageContent;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getExtInfo()Ljava/lang/String;
    .locals 1

    .line 686
    iget-object v0, p0, Lcom/tgs/aics/bean/Message$OriginalMessageContent;->extInfo:Ljava/lang/String;

    return-object v0
.end method

.method public getFeedRechargeRecord()Lcom/tgs/aics/bean/RechargeRecordBean$RecordsList;
    .locals 1

    .line 682
    iget-object v0, p0, Lcom/tgs/aics/bean/Message$OriginalMessageContent;->feedRechargeRecord:Lcom/tgs/aics/bean/RechargeRecordBean$RecordsList;

    return-object v0
.end method

.method public getFiles()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/tgs/aics/bean/Message$OriginalMessageContent$Files;",
            ">;"
        }
    .end annotation

    .line 670
    iget-object v0, p0, Lcom/tgs/aics/bean/Message$OriginalMessageContent;->files:Ljava/util/List;

    return-object v0
.end method

.method public getFormDetail()Lcom/tgs/aics/bean/Message$OriginalMessageContent$FormDetail;
    .locals 1

    .line 662
    iget-object v0, p0, Lcom/tgs/aics/bean/Message$OriginalMessageContent;->formDetail:Lcom/tgs/aics/bean/Message$OriginalMessageContent$FormDetail;

    return-object v0
.end method

.method public getGameId()Ljava/lang/String;
    .locals 1

    .line 634
    iget-object v0, p0, Lcom/tgs/aics/bean/Message$OriginalMessageContent;->gameId:Ljava/lang/String;

    return-object v0
.end method

.method public getInGameLanguage()Ljava/lang/String;
    .locals 1

    .line 650
    iget-object v0, p0, Lcom/tgs/aics/bean/Message$OriginalMessageContent;->inGameLanguage:Ljava/lang/String;

    return-object v0
.end method

.method public getMessageId()Ljava/lang/String;
    .locals 1

    .line 658
    iget-object v0, p0, Lcom/tgs/aics/bean/Message$OriginalMessageContent;->messageId:Ljava/lang/String;

    return-object v0
.end method

.method public getMessageType()Lcom/tgs/aics/bean/Message$MessageContentType;
    .locals 1

    .line 626
    iget-object v0, p0, Lcom/tgs/aics/bean/Message$OriginalMessageContent;->messageType:Lcom/tgs/aics/bean/Message$MessageContentType;

    return-object v0
.end method

.method public getRating()Lcom/tgs/aics/bean/Message$OriginalMessageContent$Rating;
    .locals 1

    .line 666
    iget-object v0, p0, Lcom/tgs/aics/bean/Message$OriginalMessageContent;->rating:Lcom/tgs/aics/bean/Message$OriginalMessageContent$Rating;

    return-object v0
.end method

.method public getRechargeRecordBean()Lcom/tgs/aics/bean/RechargeRecordBean;
    .locals 1

    .line 678
    iget-object v0, p0, Lcom/tgs/aics/bean/Message$OriginalMessageContent;->rechargeRecordBean:Lcom/tgs/aics/bean/RechargeRecordBean;

    return-object v0
.end method

.method public getSelfServiceUrl()Ljava/lang/String;
    .locals 1

    .line 674
    iget-object v0, p0, Lcom/tgs/aics/bean/Message$OriginalMessageContent;->selfServiceUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getSender()Lcom/tgs/aics/bean/Message$MessageSource;
    .locals 1

    .line 630
    iget-object v0, p0, Lcom/tgs/aics/bean/Message$OriginalMessageContent;->sender:Lcom/tgs/aics/bean/Message$MessageSource;

    return-object v0
.end method

.method public getTimestamp()J
    .locals 2

    .line 654
    iget-wide v0, p0, Lcom/tgs/aics/bean/Message$OriginalMessageContent;->timestamp:J

    return-wide v0
.end method

.method public getUdid()Ljava/lang/String;
    .locals 1

    .line 642
    iget-object v0, p0, Lcom/tgs/aics/bean/Message$OriginalMessageContent;->udid:Ljava/lang/String;

    return-object v0
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0

    .line 622
    iput-object p1, p0, Lcom/tgs/aics/bean/Message$OriginalMessageContent;->content:Ljava/lang/String;

    return-void
.end method

.method public setExtInfo(Ljava/lang/String;)V
    .locals 0

    .line 690
    iput-object p1, p0, Lcom/tgs/aics/bean/Message$OriginalMessageContent;->extInfo:Ljava/lang/String;

    return-void
.end method
