.class public Lcom/tgs/aics/bean/Message;
.super Lcom/tgs/aics/bean/BaseBean;
.source "Message.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tgs/aics/bean/Message$MessageSource;,
        Lcom/tgs/aics/bean/Message$MessageContentType;,
        Lcom/tgs/aics/bean/Message$MessageType;,
        Lcom/tgs/aics/bean/Message$OriginalMessageContent;,
        Lcom/tgs/aics/bean/Message$MessageSendStatus;
    }
.end annotation


# static fields
.field public static final FILE_TYPE_UPLOAD_DIAGNOSE_LOG:Ljava/lang/String; = "\u7f51\u7edc\u8bca\u65ad\u65e5\u5fd7"

.field public static final FILE_TYPE_UPLOAD_USER_LOG:Ljava/lang/String; = "\u73a9\u5bb6\u7aef\u65e5\u5fd7"


# instance fields
.field private appointProvider:Ljava/lang/String;

.field private characterId:Ljava/lang/String;

.field private contentType:Lcom/tgs/aics/bean/Message$MessageContentType;

.field private faqId:Ljava/lang/String;

.field private gameId:Ljava/lang/String;

.field private historyMessageList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tgs/aics/bean/Message;",
            ">;"
        }
    .end annotation
.end field

.field private ip:Ljava/lang/String;

.field private isFormCommitted:Z

.field private isRead:Z

.field private isTimestampShown:Z

.field private messageContent:Lcom/tgs/aics/bean/Message$OriginalMessageContent;

.field private messageId:Ljava/lang/String;

.field private messageIdWithForm:Ljava/lang/String;

.field private messageReceiptBean:Lcom/tgs/aics/bean/MessageReceiptBean;

.field private messageSource:Lcom/tgs/aics/bean/Message$MessageSource;

.field private messageType:Lcom/tgs/aics/bean/Message$MessageType;

.field private ratingMessageId:Ljava/lang/String;

.field private readMessageList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tgs/aics/bean/Message;",
            ">;"
        }
    .end annotation
.end field

.field private sendStatus:Lcom/tgs/aics/bean/Message$MessageSendStatus;

.field private timestamp:J

.field private workOrderInfo:Lcom/tgs/aics/bean/WorkOrderInfo;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Lcom/tgs/aics/bean/BaseBean;-><init>()V

    const-string v0, ""

    .line 39
    iput-object v0, p0, Lcom/tgs/aics/bean/Message;->appointProvider:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)Lcom/tgs/aics/bean/Message$MessageContentType;
    .locals 0

    .line 18
    invoke-static {p0}, Lcom/tgs/aics/bean/Message;->parse2MessageContentType(Ljava/lang/String;)Lcom/tgs/aics/bean/Message$MessageContentType;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Ljava/lang/String;)Lcom/tgs/aics/bean/Message$MessageSource;
    .locals 0

    .line 18
    invoke-static {p0}, Lcom/tgs/aics/bean/Message;->parse2MessageSource(Ljava/lang/String;)Lcom/tgs/aics/bean/Message$MessageSource;

    move-result-object p0

    return-object p0
.end method

.method public static createChatReadAllMessage()Lcom/tgs/aics/bean/Message;
    .locals 3

    .line 328
    sget-object v0, Lcom/tgs/aics/bean/Message$MessageType;->CHAT_READ_ALL:Lcom/tgs/aics/bean/Message$MessageType;

    invoke-static {}, Lcom/tgs/aics/utils/Utils;->getRealTimeStamp()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/tgs/aics/bean/Message;->createCommonMessageWithoutMessageContent(Lcom/tgs/aics/bean/Message$MessageType;J)Lcom/tgs/aics/bean/Message;

    move-result-object v0

    return-object v0
.end method

.method public static createChatReadMessage(Ljava/util/List;)Lcom/tgs/aics/bean/Message;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tgs/aics/bean/Message;",
            ">;)",
            "Lcom/tgs/aics/bean/Message;"
        }
    .end annotation

    .line 319
    sget-object v0, Lcom/tgs/aics/bean/Message$MessageType;->CHAT_READ:Lcom/tgs/aics/bean/Message$MessageType;

    invoke-static {}, Lcom/tgs/aics/utils/Utils;->getRealTimeStamp()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/tgs/aics/bean/Message;->createCommonMessageWithoutMessageContent(Lcom/tgs/aics/bean/Message$MessageType;J)Lcom/tgs/aics/bean/Message;

    move-result-object v0

    .line 320
    iput-object p0, v0, Lcom/tgs/aics/bean/Message;->readMessageList:Ljava/util/List;

    return-object v0
.end method

.method private static createCommonMessage(Lcom/tgs/aics/bean/Message$MessageType;Lcom/tgs/aics/bean/Message$OriginalMessageContent;)Lcom/tgs/aics/bean/Message;
    .locals 2

    .line 371
    new-instance v0, Lcom/tgs/aics/bean/Message;

    invoke-direct {v0}, Lcom/tgs/aics/bean/Message;-><init>()V

    .line 372
    invoke-virtual {p1}, Lcom/tgs/aics/bean/Message$OriginalMessageContent;->getGameId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tgs/aics/bean/Message;->gameId:Ljava/lang/String;

    .line 373
    iput-object p0, v0, Lcom/tgs/aics/bean/Message;->messageType:Lcom/tgs/aics/bean/Message$MessageType;

    .line 374
    sget-object p0, Lcom/tgs/aics/bean/Message$MessageSource;->PLAYER:Lcom/tgs/aics/bean/Message$MessageSource;

    iput-object p0, v0, Lcom/tgs/aics/bean/Message;->messageSource:Lcom/tgs/aics/bean/Message$MessageSource;

    .line 375
    invoke-virtual {p1}, Lcom/tgs/aics/bean/Message$OriginalMessageContent;->getMessageType()Lcom/tgs/aics/bean/Message$MessageContentType;

    move-result-object p0

    iput-object p0, v0, Lcom/tgs/aics/bean/Message;->contentType:Lcom/tgs/aics/bean/Message$MessageContentType;

    .line 376
    iput-object p1, v0, Lcom/tgs/aics/bean/Message;->messageContent:Lcom/tgs/aics/bean/Message$OriginalMessageContent;

    .line 377
    invoke-virtual {p1}, Lcom/tgs/aics/bean/Message$OriginalMessageContent;->getMessageId()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/tgs/aics/bean/Message;->messageId:Ljava/lang/String;

    .line 378
    invoke-virtual {p1}, Lcom/tgs/aics/bean/Message$OriginalMessageContent;->getTimestamp()J

    move-result-wide p0

    iput-wide p0, v0, Lcom/tgs/aics/bean/Message;->timestamp:J

    .line 379
    sget-object p0, Lcom/tgs/aics/bean/Message$MessageSendStatus;->NONE:Lcom/tgs/aics/bean/Message$MessageSendStatus;

    iput-object p0, v0, Lcom/tgs/aics/bean/Message;->sendStatus:Lcom/tgs/aics/bean/Message$MessageSendStatus;

    return-object v0
.end method

.method private static createCommonMessageWithoutMessageContent(Lcom/tgs/aics/bean/Message$MessageType;J)Lcom/tgs/aics/bean/Message;
    .locals 2

    .line 359
    new-instance v0, Lcom/tgs/aics/bean/Message;

    invoke-direct {v0}, Lcom/tgs/aics/bean/Message;-><init>()V

    .line 360
    sget-object v1, Lcom/tgs/aics/utils/ConstantUtil$InitParams;->gameId:Ljava/lang/String;

    iput-object v1, v0, Lcom/tgs/aics/bean/Message;->gameId:Ljava/lang/String;

    .line 361
    iput-object p0, v0, Lcom/tgs/aics/bean/Message;->messageType:Lcom/tgs/aics/bean/Message$MessageType;

    .line 362
    sget-object p0, Lcom/tgs/aics/bean/Message$MessageSource;->PLAYER:Lcom/tgs/aics/bean/Message$MessageSource;

    iput-object p0, v0, Lcom/tgs/aics/bean/Message;->messageSource:Lcom/tgs/aics/bean/Message$MessageSource;

    .line 363
    sget-object p0, Lcom/tgs/aics/bean/Message$MessageContentType;->CHAT_MESSAGE:Lcom/tgs/aics/bean/Message$MessageContentType;

    iput-object p0, v0, Lcom/tgs/aics/bean/Message;->contentType:Lcom/tgs/aics/bean/Message$MessageContentType;

    .line 364
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/tgs/aics/bean/Message;->messageId:Ljava/lang/String;

    .line 365
    iput-wide p1, v0, Lcom/tgs/aics/bean/Message;->timestamp:J

    .line 366
    sget-object p0, Lcom/tgs/aics/bean/Message$MessageSendStatus;->NONE:Lcom/tgs/aics/bean/Message$MessageSendStatus;

    iput-object p0, v0, Lcom/tgs/aics/bean/Message;->sendStatus:Lcom/tgs/aics/bean/Message$MessageSendStatus;

    return-object v0
.end method

.method public static createFaqTapMessage(Ljava/lang/String;)Lcom/tgs/aics/bean/Message;
    .locals 3

    .line 335
    sget-object v0, Lcom/tgs/aics/bean/Message$MessageType;->FAQ_TAP:Lcom/tgs/aics/bean/Message$MessageType;

    invoke-static {}, Lcom/tgs/aics/utils/Utils;->getRealTimeStamp()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/tgs/aics/bean/Message;->createCommonMessageWithoutMessageContent(Lcom/tgs/aics/bean/Message$MessageType;J)Lcom/tgs/aics/bean/Message;

    move-result-object v0

    .line 336
    iput-object p0, v0, Lcom/tgs/aics/bean/Message;->faqId:Ljava/lang/String;

    return-object v0
.end method

.method public static createFeedbackRechargeRecordMessage(Lcom/tgs/aics/bean/RechargeRecordBean$RecordsList;Ljava/lang/String;)Lcom/tgs/aics/bean/Message;
    .locals 1

    .line 353
    sget-object v0, Lcom/tgs/aics/bean/Message$MessageType;->CHAT:Lcom/tgs/aics/bean/Message$MessageType;

    invoke-static {p0}, Lcom/tgs/aics/bean/Message$OriginalMessageContent;->createMessageContentWithFeedbackRechargeRecord(Lcom/tgs/aics/bean/RechargeRecordBean$RecordsList;)Lcom/tgs/aics/bean/Message$OriginalMessageContent;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/tgs/aics/bean/Message;->createCommonMessage(Lcom/tgs/aics/bean/Message$MessageType;Lcom/tgs/aics/bean/Message$OriginalMessageContent;)Lcom/tgs/aics/bean/Message;

    move-result-object p0

    .line 354
    iput-object p1, p0, Lcom/tgs/aics/bean/Message;->appointProvider:Ljava/lang/String;

    return-object p0
.end method

.method public static createHistoryMessage(J)Lcom/tgs/aics/bean/Message;
    .locals 1

    .line 272
    sget-object v0, Lcom/tgs/aics/bean/Message$MessageType;->CHAT_RECORD:Lcom/tgs/aics/bean/Message$MessageType;

    invoke-static {v0, p0, p1}, Lcom/tgs/aics/bean/Message;->createCommonMessageWithoutMessageContent(Lcom/tgs/aics/bean/Message$MessageType;J)Lcom/tgs/aics/bean/Message;

    move-result-object p0

    return-object p0
.end method

.method public static createIpUploadMessage(Ljava/lang/String;)Lcom/tgs/aics/bean/Message;
    .locals 3

    .line 303
    sget-object v0, Lcom/tgs/aics/bean/Message$MessageType;->IP:Lcom/tgs/aics/bean/Message$MessageType;

    invoke-static {}, Lcom/tgs/aics/utils/Utils;->getRealTimeStamp()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/tgs/aics/bean/Message;->createCommonMessageWithoutMessageContent(Lcom/tgs/aics/bean/Message$MessageType;J)Lcom/tgs/aics/bean/Message;

    move-result-object v0

    .line 304
    iput-object p0, v0, Lcom/tgs/aics/bean/Message;->ip:Ljava/lang/String;

    return-object v0
.end method

.method public static createMessageWithFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/tgs/aics/bean/Message;
    .locals 1

    .line 244
    sget-object v0, Lcom/tgs/aics/bean/Message$MessageType;->CHAT:Lcom/tgs/aics/bean/Message$MessageType;

    invoke-static {p1, p2, p3, p4}, Lcom/tgs/aics/bean/Message$OriginalMessageContent;->createMessageContentWithFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/tgs/aics/bean/Message$OriginalMessageContent;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/tgs/aics/bean/Message;->createCommonMessage(Lcom/tgs/aics/bean/Message$MessageType;Lcom/tgs/aics/bean/Message$OriginalMessageContent;)Lcom/tgs/aics/bean/Message;

    move-result-object p1

    .line 245
    iput-object p0, p1, Lcom/tgs/aics/bean/Message;->messageIdWithForm:Ljava/lang/String;

    return-object p1
.end method

.method public static createMessageWithImage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/tgs/aics/bean/Message;
    .locals 1

    .line 230
    sget-object v0, Lcom/tgs/aics/bean/Message$MessageType;->CHAT:Lcom/tgs/aics/bean/Message$MessageType;

    invoke-static/range {p0 .. p6}, Lcom/tgs/aics/bean/Message$OriginalMessageContent;->createMessageContentWitImage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/tgs/aics/bean/Message$OriginalMessageContent;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/tgs/aics/bean/Message;->createCommonMessage(Lcom/tgs/aics/bean/Message$MessageType;Lcom/tgs/aics/bean/Message$OriginalMessageContent;)Lcom/tgs/aics/bean/Message;

    move-result-object p0

    return-object p0
.end method

.method public static createMessageWithIssue(Ljava/lang/String;Ljava/lang/String;)Lcom/tgs/aics/bean/Message;
    .locals 1

    .line 208
    sget-object v0, Lcom/tgs/aics/bean/Message$MessageType;->CHAT:Lcom/tgs/aics/bean/Message$MessageType;

    invoke-static {p0, p1}, Lcom/tgs/aics/bean/Message$OriginalMessageContent;->createMessageContentWithIssue(Ljava/lang/String;Ljava/lang/String;)Lcom/tgs/aics/bean/Message$OriginalMessageContent;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/tgs/aics/bean/Message;->createCommonMessage(Lcom/tgs/aics/bean/Message$MessageType;Lcom/tgs/aics/bean/Message$OriginalMessageContent;)Lcom/tgs/aics/bean/Message;

    move-result-object p0

    const-string p1, "ai"

    .line 209
    iput-object p1, p0, Lcom/tgs/aics/bean/Message;->appointProvider:Ljava/lang/String;

    return-object p0
.end method

.method public static createMessageWithText(Ljava/lang/String;)Lcom/tgs/aics/bean/Message;
    .locals 1

    .line 200
    sget-object v0, Lcom/tgs/aics/bean/Message$MessageType;->CHAT:Lcom/tgs/aics/bean/Message$MessageType;

    invoke-static {p0}, Lcom/tgs/aics/bean/Message$OriginalMessageContent;->createMessageContentWithText(Ljava/lang/String;)Lcom/tgs/aics/bean/Message$OriginalMessageContent;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/tgs/aics/bean/Message;->createCommonMessage(Lcom/tgs/aics/bean/Message$MessageType;Lcom/tgs/aics/bean/Message$OriginalMessageContent;)Lcom/tgs/aics/bean/Message;

    move-result-object p0

    return-object p0
.end method

.method public static createMessageWithTextAppointProvider(Ljava/lang/String;Ljava/lang/String;)Lcom/tgs/aics/bean/Message;
    .locals 1

    .line 221
    sget-object v0, Lcom/tgs/aics/bean/Message$MessageType;->CHAT:Lcom/tgs/aics/bean/Message$MessageType;

    invoke-static {p0}, Lcom/tgs/aics/bean/Message$OriginalMessageContent;->createMessageContentWithText(Ljava/lang/String;)Lcom/tgs/aics/bean/Message$OriginalMessageContent;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/tgs/aics/bean/Message;->createCommonMessage(Lcom/tgs/aics/bean/Message$MessageType;Lcom/tgs/aics/bean/Message$OriginalMessageContent;)Lcom/tgs/aics/bean/Message;

    move-result-object p0

    .line 222
    iput-object p1, p0, Lcom/tgs/aics/bean/Message;->appointProvider:Ljava/lang/String;

    return-object p0
.end method

.method public static createMessageWithVideo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/tgs/aics/bean/Message;
    .locals 1

    .line 237
    sget-object v0, Lcom/tgs/aics/bean/Message$MessageType;->CHAT:Lcom/tgs/aics/bean/Message$MessageType;

    invoke-static/range {p0 .. p6}, Lcom/tgs/aics/bean/Message$OriginalMessageContent;->createMessageContentWithVideo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/tgs/aics/bean/Message$OriginalMessageContent;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/tgs/aics/bean/Message;->createCommonMessage(Lcom/tgs/aics/bean/Message$MessageType;Lcom/tgs/aics/bean/Message$OriginalMessageContent;)Lcom/tgs/aics/bean/Message;

    move-result-object p0

    return-object p0
.end method

.method public static createPingMessage()Lcom/tgs/aics/bean/Message;
    .locals 3

    .line 312
    sget-object v0, Lcom/tgs/aics/bean/Message$MessageType;->PING:Lcom/tgs/aics/bean/Message$MessageType;

    invoke-static {}, Lcom/tgs/aics/utils/Utils;->getRealTimeStamp()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/tgs/aics/bean/Message;->createCommonMessageWithoutMessageContent(Lcom/tgs/aics/bean/Message$MessageType;J)Lcom/tgs/aics/bean/Message;

    move-result-object v0

    return-object v0
.end method

.method public static createRatingRequestMessage()Lcom/tgs/aics/bean/Message;
    .locals 3

    .line 296
    sget-object v0, Lcom/tgs/aics/bean/Message$MessageType;->RATING_REQUEST:Lcom/tgs/aics/bean/Message$MessageType;

    invoke-static {}, Lcom/tgs/aics/utils/Utils;->getRealTimeStamp()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/tgs/aics/bean/Message;->createCommonMessageWithoutMessageContent(Lcom/tgs/aics/bean/Message$MessageType;J)Lcom/tgs/aics/bean/Message;

    move-result-object v0

    return-object v0
.end method

.method public static createRatingWithFormId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/tgs/aics/bean/Message;
    .locals 1

    .line 260
    sget-object v0, Lcom/tgs/aics/bean/Message$MessageType;->CHAT:Lcom/tgs/aics/bean/Message$MessageType;

    invoke-static/range {p1 .. p6}, Lcom/tgs/aics/bean/Message$OriginalMessageContent;->createMessageContentWithFormDetail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/tgs/aics/bean/Message$OriginalMessageContent;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/tgs/aics/bean/Message;->createCommonMessage(Lcom/tgs/aics/bean/Message$MessageType;Lcom/tgs/aics/bean/Message$OriginalMessageContent;)Lcom/tgs/aics/bean/Message;

    move-result-object p1

    .line 261
    iput-object p0, p1, Lcom/tgs/aics/bean/Message;->messageIdWithForm:Ljava/lang/String;

    .line 262
    iput-object p6, p1, Lcom/tgs/aics/bean/Message;->appointProvider:Ljava/lang/String;

    return-object p1
.end method

.method public static createRatingWithScore(Ljava/lang/String;[ILjava/lang/String;I)Lcom/tgs/aics/bean/Message;
    .locals 1

    .line 253
    sget-object v0, Lcom/tgs/aics/bean/Message$MessageType;->CHAT:Lcom/tgs/aics/bean/Message$MessageType;

    invoke-static {p0, p1, p2, p3}, Lcom/tgs/aics/bean/Message$OriginalMessageContent;->createMessageContentWithRating(Ljava/lang/String;[ILjava/lang/String;I)Lcom/tgs/aics/bean/Message$OriginalMessageContent;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/tgs/aics/bean/Message;->createCommonMessage(Lcom/tgs/aics/bean/Message$MessageType;Lcom/tgs/aics/bean/Message$OriginalMessageContent;)Lcom/tgs/aics/bean/Message;

    move-result-object p0

    return-object p0
.end method

.method public static createRechargeRecordQueryMessage(Ljava/lang/String;Ljava/lang/String;)Lcom/tgs/aics/bean/Message;
    .locals 1

    .line 344
    sget-object v0, Lcom/tgs/aics/bean/Message$MessageType;->CHAT:Lcom/tgs/aics/bean/Message$MessageType;

    invoke-static {p0}, Lcom/tgs/aics/bean/Message$OriginalMessageContent;->createMessageContentWithRechargeRecordQuery(Ljava/lang/String;)Lcom/tgs/aics/bean/Message$OriginalMessageContent;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/tgs/aics/bean/Message;->createCommonMessage(Lcom/tgs/aics/bean/Message$MessageType;Lcom/tgs/aics/bean/Message$OriginalMessageContent;)Lcom/tgs/aics/bean/Message;

    move-result-object p0

    .line 345
    iput-object p1, p0, Lcom/tgs/aics/bean/Message;->appointProvider:Ljava/lang/String;

    return-object p0
.end method

.method public static createStatusMessage()Lcom/tgs/aics/bean/Message;
    .locals 3

    .line 288
    sget-object v0, Lcom/tgs/aics/bean/Message$MessageType;->STATUS:Lcom/tgs/aics/bean/Message$MessageType;

    invoke-static {}, Lcom/tgs/aics/utils/Utils;->getRealTimeStamp()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/tgs/aics/bean/Message;->createCommonMessageWithoutMessageContent(Lcom/tgs/aics/bean/Message$MessageType;J)Lcom/tgs/aics/bean/Message;

    move-result-object v0

    return-object v0
.end method

.method public static createWorkOrderMessage()Lcom/tgs/aics/bean/Message;
    .locals 3

    .line 280
    sget-object v0, Lcom/tgs/aics/bean/Message$MessageType;->CREATE_WORKORDER:Lcom/tgs/aics/bean/Message$MessageType;

    invoke-static {}, Lcom/tgs/aics/utils/Utils;->getRealTimeStamp()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/tgs/aics/bean/Message;->createCommonMessageWithoutMessageContent(Lcom/tgs/aics/bean/Message$MessageType;J)Lcom/tgs/aics/bean/Message;

    move-result-object v0

    return-object v0
.end method

.method public static message2JsonStr(Lcom/tgs/aics/bean/Message;)Ljava/lang/String;
    .locals 8

    const-string v0, ""

    .line 540
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "game_id"

    .line 541
    invoke-virtual {p0}, Lcom/tgs/aics/bean/Message;->getGameId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "type"

    .line 542
    invoke-virtual {p0}, Lcom/tgs/aics/bean/Message;->getMessageType()Lcom/tgs/aics/bean/Message$MessageType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tgs/aics/bean/Message$MessageType;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "source"

    .line 543
    invoke-virtual {p0}, Lcom/tgs/aics/bean/Message;->getMessageSource()Lcom/tgs/aics/bean/Message$MessageSource;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tgs/aics/bean/Message$MessageSource;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "content_type"

    .line 544
    invoke-virtual {p0}, Lcom/tgs/aics/bean/Message;->getContentType()Lcom/tgs/aics/bean/Message$MessageContentType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tgs/aics/bean/Message$MessageContentType;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 545
    invoke-virtual {p0}, Lcom/tgs/aics/bean/Message;->getMessageType()Lcom/tgs/aics/bean/Message$MessageType;

    move-result-object v2

    sget-object v3, Lcom/tgs/aics/bean/Message$MessageType;->CHAT_RECORD:Lcom/tgs/aics/bean/Message$MessageType;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v4, 0x0

    const/4 v5, 0x1

    const-string v6, "content"

    if-ne v2, v3, :cond_0

    .line 546
    :try_start_1
    invoke-virtual {p0}, Lcom/tgs/aics/bean/Message;->getTimestamp()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/tgs/aics/bean/HistoryMessageBean;->createHistoryMessageStr(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v6, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_1

    .line 547
    :cond_0
    invoke-virtual {p0}, Lcom/tgs/aics/bean/Message;->getMessageType()Lcom/tgs/aics/bean/Message$MessageType;

    move-result-object v2

    sget-object v3, Lcom/tgs/aics/bean/Message$MessageType;->CHAT:Lcom/tgs/aics/bean/Message$MessageType;

    if-ne v2, v3, :cond_1

    .line 548
    invoke-virtual {p0}, Lcom/tgs/aics/bean/Message;->getMessageContent()Lcom/tgs/aics/bean/Message$OriginalMessageContent;

    move-result-object v2

    invoke-static {v2}, Lcom/tgs/aics/bean/Message$OriginalMessageContent;->messageContent2JsonStr(Lcom/tgs/aics/bean/Message$OriginalMessageContent;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v6, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_1

    .line 549
    :cond_1
    invoke-virtual {p0}, Lcom/tgs/aics/bean/Message;->getMessageType()Lcom/tgs/aics/bean/Message$MessageType;

    move-result-object v2

    sget-object v3, Lcom/tgs/aics/bean/Message$MessageType;->CHAT_READ:Lcom/tgs/aics/bean/Message$MessageType;

    if-ne v2, v3, :cond_3

    .line 550
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    move v3, v4

    .line 551
    :goto_0
    invoke-virtual {p0}, Lcom/tgs/aics/bean/Message;->getReadMessageList()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v3, v7, :cond_2

    .line 552
    invoke-virtual {p0}, Lcom/tgs/aics/bean/Message;->getReadMessageList()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/tgs/aics/bean/Message;

    invoke-virtual {v7}, Lcom/tgs/aics/bean/Message;->getMessageId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 554
    :cond_2
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string v7, "messageIds"

    .line 555
    invoke-virtual {v3, v7, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 556
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v6, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    .line 557
    :cond_3
    invoke-virtual {p0}, Lcom/tgs/aics/bean/Message;->getMessageType()Lcom/tgs/aics/bean/Message$MessageType;

    move-result-object v2

    sget-object v3, Lcom/tgs/aics/bean/Message$MessageType;->FEEDBACK:Lcom/tgs/aics/bean/Message$MessageType;

    if-ne v2, v3, :cond_4

    .line 558
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "success"

    .line 559
    invoke-virtual {v2, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v3, "error_code"

    .line 560
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v3, "error_msg"

    .line 561
    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 562
    invoke-virtual {v1, v6, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    .line 563
    :cond_4
    invoke-virtual {p0}, Lcom/tgs/aics/bean/Message;->getMessageType()Lcom/tgs/aics/bean/Message$MessageType;

    move-result-object v2

    sget-object v3, Lcom/tgs/aics/bean/Message$MessageType;->IP:Lcom/tgs/aics/bean/Message$MessageType;

    if-ne v2, v3, :cond_5

    .line 564
    iget-object v2, p0, Lcom/tgs/aics/bean/Message;->ip:Ljava/lang/String;

    invoke-virtual {v1, v6, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    .line 565
    :cond_5
    invoke-virtual {p0}, Lcom/tgs/aics/bean/Message;->getMessageType()Lcom/tgs/aics/bean/Message$MessageType;

    move-result-object v2

    sget-object v3, Lcom/tgs/aics/bean/Message$MessageType;->FAQ_TAP:Lcom/tgs/aics/bean/Message$MessageType;

    if-ne v2, v3, :cond_6

    .line 566
    iget-object v2, p0, Lcom/tgs/aics/bean/Message;->faqId:Ljava/lang/String;

    invoke-virtual {v1, v6, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_6
    :goto_1
    const-string v2, "message_id"

    .line 568
    invoke-virtual {p0}, Lcom/tgs/aics/bean/Message;->getMessageId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "timestamp"

    .line 569
    invoke-virtual {p0}, Lcom/tgs/aics/bean/Message;->getTimestamp()J

    move-result-wide v6

    invoke-virtual {v1, v2, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v2, "form_id"

    .line 570
    invoke-virtual {p0}, Lcom/tgs/aics/bean/Message;->getMessageIdWithForm()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "is_committed"

    .line 571
    invoke-virtual {p0}, Lcom/tgs/aics/bean/Message;->isFormCommitted()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 573
    invoke-virtual {p0}, Lcom/tgs/aics/bean/Message;->getAppointProvider()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/16 v3, 0xc28

    const/4 v6, 0x2

    if-eq v2, v3, :cond_9

    const v3, 0x33af38

    if-eq v2, v3, :cond_8

    const v3, 0x5f0612d

    if-eq v2, v3, :cond_7

    goto :goto_2

    :cond_7
    const-string v2, "human"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a

    move v4, v5

    goto :goto_3

    :cond_8
    const-string v2, "none"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a

    move v4, v6

    goto :goto_3

    :cond_9
    const-string v2, "ai"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a

    goto :goto_3

    :cond_a
    :goto_2
    const/4 v4, -0x1

    :goto_3
    if-eqz v4, :cond_c

    if-eq v4, v5, :cond_b

    move-object p0, v0

    goto :goto_4

    :cond_b
    const-string p0, "CUSTOMER"

    goto :goto_4

    :cond_c
    const-string p0, "AI"

    :goto_4
    const-string v2, "appoint_provider"

    .line 584
    invoke-virtual {v1, v2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 585
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 587
    invoke-static {p0}, Lcom/tgs/aics/utils/ErrorUtils;->printExceptionInfo(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method private static parse2MessageContentType(Ljava/lang/String;)Lcom/tgs/aics/bean/Message$MessageContentType;
    .locals 2

    .line 504
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "RATING_REQUEST"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v1, 0xa

    goto/16 :goto_0

    :sswitch_1
    const-string v0, "PLAYER_RECHARGE_RECORD_FEEDBACK"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v1, 0x9

    goto/16 :goto_0

    :sswitch_2
    const-string v0, "PLAYER_RECHARGE_RECORD_REQUEST"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v1, 0x8

    goto/16 :goto_0

    :sswitch_3
    const-string v0, "VIDEO"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x7

    goto :goto_0

    :sswitch_4
    const-string v0, "FORM"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v1, 0x6

    goto :goto_0

    :sswitch_5
    const-string v0, "PIC"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    goto :goto_0

    :cond_5
    const/4 v1, 0x5

    goto :goto_0

    :sswitch_6
    const-string v0, "CLIENT_APP_LOG_REQUEST"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    goto :goto_0

    :cond_6
    const/4 v1, 0x4

    goto :goto_0

    :sswitch_7
    const-string v0, "CLIENT_TYPE_LOG_FILE_UPLOAD"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    goto :goto_0

    :cond_7
    const/4 v1, 0x3

    goto :goto_0

    :sswitch_8
    const-string v0, "PLAYER_RECHARGE_RECORD_RESULT"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8

    goto :goto_0

    :cond_8
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_9
    const-string v0, "FORM_REQUEST"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_9

    goto :goto_0

    :cond_9
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_a
    const-string v0, "RATING_SCORE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a

    goto :goto_0

    :cond_a
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 528
    sget-object p0, Lcom/tgs/aics/bean/Message$MessageContentType;->CHAT_MESSAGE:Lcom/tgs/aics/bean/Message$MessageContentType;

    return-object p0

    .line 514
    :pswitch_0
    sget-object p0, Lcom/tgs/aics/bean/Message$MessageContentType;->RATING_REQUEST:Lcom/tgs/aics/bean/Message$MessageContentType;

    return-object p0

    .line 526
    :pswitch_1
    sget-object p0, Lcom/tgs/aics/bean/Message$MessageContentType;->PLAYER_RECHARGE_RECORD_FEEDBACK:Lcom/tgs/aics/bean/Message$MessageContentType;

    return-object p0

    .line 522
    :pswitch_2
    sget-object p0, Lcom/tgs/aics/bean/Message$MessageContentType;->PLAYER_RECHARGE_RECORD_REQUEST:Lcom/tgs/aics/bean/Message$MessageContentType;

    return-object p0

    .line 508
    :pswitch_3
    sget-object p0, Lcom/tgs/aics/bean/Message$MessageContentType;->VIDEO:Lcom/tgs/aics/bean/Message$MessageContentType;

    return-object p0

    .line 512
    :pswitch_4
    sget-object p0, Lcom/tgs/aics/bean/Message$MessageContentType;->FORM:Lcom/tgs/aics/bean/Message$MessageContentType;

    return-object p0

    .line 506
    :pswitch_5
    sget-object p0, Lcom/tgs/aics/bean/Message$MessageContentType;->PIC:Lcom/tgs/aics/bean/Message$MessageContentType;

    return-object p0

    .line 518
    :pswitch_6
    sget-object p0, Lcom/tgs/aics/bean/Message$MessageContentType;->CLIENT_APP_LOG_REQUEST:Lcom/tgs/aics/bean/Message$MessageContentType;

    return-object p0

    .line 520
    :pswitch_7
    sget-object p0, Lcom/tgs/aics/bean/Message$MessageContentType;->CLIENT_TYPE_LOG_FILE_UPLOAD:Lcom/tgs/aics/bean/Message$MessageContentType;

    return-object p0

    .line 524
    :pswitch_8
    sget-object p0, Lcom/tgs/aics/bean/Message$MessageContentType;->PLAYER_RECHARGE_RECORD_RESULT:Lcom/tgs/aics/bean/Message$MessageContentType;

    return-object p0

    .line 516
    :pswitch_9
    sget-object p0, Lcom/tgs/aics/bean/Message$MessageContentType;->FORM_REQUEST:Lcom/tgs/aics/bean/Message$MessageContentType;

    return-object p0

    .line 510
    :pswitch_a
    sget-object p0, Lcom/tgs/aics/bean/Message$MessageContentType;->RATING_SCORE:Lcom/tgs/aics/bean/Message$MessageContentType;

    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x52271ab0 -> :sswitch_a
        -0x2213da0c -> :sswitch_9
        -0x1ed040af -> :sswitch_8
        -0xb1f2988 -> :sswitch_7
        -0x81c6d5e -> :sswitch_6
        0x1356a -> :sswitch_5
        0x2104c4 -> :sswitch_4
        0x4de1c5b -> :sswitch_3
        0x44abe1bb -> :sswitch_2
        0x5cd6e1b9 -> :sswitch_1
        0x69d5ddcd -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static parse2MessageSource(Ljava/lang/String;)Lcom/tgs/aics/bean/Message$MessageSource;
    .locals 2

    .line 491
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "CUSTOMER"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_1
    const-string v0, "AI"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_2
    const-string v0, "SYSTEM"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 499
    sget-object p0, Lcom/tgs/aics/bean/Message$MessageSource;->PLAYER:Lcom/tgs/aics/bean/Message$MessageSource;

    return-object p0

    .line 493
    :pswitch_0
    sget-object p0, Lcom/tgs/aics/bean/Message$MessageSource;->CUSTOMER:Lcom/tgs/aics/bean/Message$MessageSource;

    return-object p0

    .line 495
    :pswitch_1
    sget-object p0, Lcom/tgs/aics/bean/Message$MessageSource;->AI:Lcom/tgs/aics/bean/Message$MessageSource;

    return-object p0

    .line 497
    :pswitch_2
    sget-object p0, Lcom/tgs/aics/bean/Message$MessageSource;->SYSTEM:Lcom/tgs/aics/bean/Message$MessageSource;

    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6d5099d1 -> :sswitch_2
        0x828 -> :sswitch_1
        0x52c76fde -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static parse2MessageType(Ljava/lang/String;)Lcom/tgs/aics/bean/Message$MessageType;
    .locals 2

    .line 468
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "chat_record"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x7

    goto :goto_0

    :sswitch_1
    const-string v0, "chat_read"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x6

    goto :goto_0

    :sswitch_2
    const-string v0, "chat_read_all"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x5

    goto :goto_0

    :sswitch_3
    const-string v0, "chat_withdraw"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x4

    goto :goto_0

    :sswitch_4
    const-string v0, "ping"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v1, 0x3

    goto :goto_0

    :sswitch_5
    const-string v0, "feedback"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    goto :goto_0

    :cond_5
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_6
    const-string v0, "rating_request"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    goto :goto_0

    :cond_6
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_7
    const-string v0, "status"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    goto :goto_0

    :cond_7
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 486
    sget-object p0, Lcom/tgs/aics/bean/Message$MessageType;->CHAT:Lcom/tgs/aics/bean/Message$MessageType;

    return-object p0

    .line 470
    :pswitch_0
    sget-object p0, Lcom/tgs/aics/bean/Message$MessageType;->CHAT_RECORD:Lcom/tgs/aics/bean/Message$MessageType;

    return-object p0

    .line 472
    :pswitch_1
    sget-object p0, Lcom/tgs/aics/bean/Message$MessageType;->CHAT_READ:Lcom/tgs/aics/bean/Message$MessageType;

    return-object p0

    .line 474
    :pswitch_2
    sget-object p0, Lcom/tgs/aics/bean/Message$MessageType;->CHAT_READ_ALL:Lcom/tgs/aics/bean/Message$MessageType;

    return-object p0

    .line 480
    :pswitch_3
    sget-object p0, Lcom/tgs/aics/bean/Message$MessageType;->CHAT_WITHDRAW:Lcom/tgs/aics/bean/Message$MessageType;

    return-object p0

    .line 476
    :pswitch_4
    sget-object p0, Lcom/tgs/aics/bean/Message$MessageType;->PING:Lcom/tgs/aics/bean/Message$MessageType;

    return-object p0

    .line 478
    :pswitch_5
    sget-object p0, Lcom/tgs/aics/bean/Message$MessageType;->FEEDBACK:Lcom/tgs/aics/bean/Message$MessageType;

    return-object p0

    .line 484
    :pswitch_6
    sget-object p0, Lcom/tgs/aics/bean/Message$MessageType;->RATING_REQUEST:Lcom/tgs/aics/bean/Message$MessageType;

    return-object p0

    .line 482
    :pswitch_7
    sget-object p0, Lcom/tgs/aics/bean/Message$MessageType;->STATUS:Lcom/tgs/aics/bean/Message$MessageType;

    return-object p0

    :sswitch_data_0
    .sparse-switch
        -0x3532300e -> :sswitch_7
        -0x1054a213 -> :sswitch_6
        -0xb6a147b -> :sswitch_5
        0x348172 -> :sswitch_4
        0x461fec11 -> :sswitch_3
        0x4a7a287f -> :sswitch_2
        0x608fd61d -> :sswitch_1
        0x7bf3e318 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static parseJSON(Ljava/lang/String;)Lcom/tgs/aics/bean/Message;
    .locals 9

    .line 390
    new-instance v0, Lcom/tgs/aics/bean/Message;

    invoke-direct {v0}, Lcom/tgs/aics/bean/Message;-><init>()V

    .line 392
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "game_id"

    .line 393
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/tgs/aics/bean/Message;->gameId:Ljava/lang/String;

    const-string p0, "type"

    .line 394
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tgs/aics/bean/Message;->parse2MessageType(Ljava/lang/String;)Lcom/tgs/aics/bean/Message$MessageType;

    move-result-object p0

    .line 395
    iput-object p0, v0, Lcom/tgs/aics/bean/Message;->messageType:Lcom/tgs/aics/bean/Message$MessageType;

    const-string v2, "source"

    .line 396
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tgs/aics/bean/Message;->parse2MessageSource(Ljava/lang/String;)Lcom/tgs/aics/bean/Message$MessageSource;

    move-result-object v2

    iput-object v2, v0, Lcom/tgs/aics/bean/Message;->messageSource:Lcom/tgs/aics/bean/Message$MessageSource;

    const-string v2, "content_type"

    .line 397
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tgs/aics/bean/Message;->parse2MessageContentType(Ljava/lang/String;)Lcom/tgs/aics/bean/Message$MessageContentType;

    move-result-object v2

    iput-object v2, v0, Lcom/tgs/aics/bean/Message;->contentType:Lcom/tgs/aics/bean/Message$MessageContentType;

    .line 398
    sget-object v2, Lcom/tgs/aics/bean/Message$MessageType;->FEEDBACK:Lcom/tgs/aics/bean/Message$MessageType;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, ""

    const-string v4, "error_msg"

    const-string v5, "content"

    if-ne p0, v2, :cond_1

    .line 400
    :try_start_1
    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tgs/aics/bean/MessageReceiptBean;->parseJSON(Ljava/lang/String;)Lcom/tgs/aics/bean/MessageReceiptBean;

    move-result-object p0

    iput-object p0, v0, Lcom/tgs/aics/bean/Message;->messageReceiptBean:Lcom/tgs/aics/bean/MessageReceiptBean;

    .line 401
    iget-object p0, v0, Lcom/tgs/aics/bean/Message;->contentType:Lcom/tgs/aics/bean/Message$MessageContentType;

    sget-object v2, Lcom/tgs/aics/bean/Message$MessageContentType;->FORM:Lcom/tgs/aics/bean/Message$MessageContentType;

    if-eq p0, v2, :cond_0

    iget-object p0, v0, Lcom/tgs/aics/bean/Message;->contentType:Lcom/tgs/aics/bean/Message$MessageContentType;

    sget-object v2, Lcom/tgs/aics/bean/Message$MessageContentType;->RATING_SCORE:Lcom/tgs/aics/bean/Message$MessageContentType;

    if-eq p0, v2, :cond_0

    iget-object p0, v0, Lcom/tgs/aics/bean/Message;->contentType:Lcom/tgs/aics/bean/Message$MessageContentType;

    sget-object v2, Lcom/tgs/aics/bean/Message$MessageContentType;->CLIENT_TYPE_LOG_FILE_UPLOAD:Lcom/tgs/aics/bean/Message$MessageContentType;

    if-ne p0, v2, :cond_d

    :cond_0
    iget-object p0, v0, Lcom/tgs/aics/bean/Message;->messageSource:Lcom/tgs/aics/bean/Message$MessageSource;

    sget-object v2, Lcom/tgs/aics/bean/Message$MessageSource;->SYSTEM:Lcom/tgs/aics/bean/Message$MessageSource;

    if-ne p0, v2, :cond_d

    .line 403
    sget-object p0, Lcom/tgs/aics/bean/Message$MessageSource;->EXTRA:Lcom/tgs/aics/bean/Message$MessageSource;

    iput-object p0, v0, Lcom/tgs/aics/bean/Message;->messageSource:Lcom/tgs/aics/bean/Message$MessageSource;

    goto/16 :goto_3

    .line 405
    :cond_1
    sget-object v2, Lcom/tgs/aics/bean/Message$MessageType;->CHAT_RECORD:Lcom/tgs/aics/bean/Message$MessageType;

    const/4 v6, 0x0

    if-ne p0, v2, :cond_3

    .line 407
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "chat_records"

    .line 408
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 410
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v6, v7, :cond_2

    .line 411
    invoke-virtual {v2, v6}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    .line 412
    invoke-virtual {v7}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/tgs/aics/bean/Message;->parseJSON(Ljava/lang/String;)Lcom/tgs/aics/bean/Message;

    move-result-object v7

    .line 413
    invoke-interface {p0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 416
    :cond_2
    iput-object p0, v0, Lcom/tgs/aics/bean/Message;->historyMessageList:Ljava/util/List;

    goto/16 :goto_3

    .line 417
    :cond_3
    sget-object v2, Lcom/tgs/aics/bean/Message$MessageType;->CHAT_READ:Lcom/tgs/aics/bean/Message$MessageType;

    if-eq p0, v2, :cond_d

    sget-object v2, Lcom/tgs/aics/bean/Message$MessageType;->CHAT_READ_ALL:Lcom/tgs/aics/bean/Message$MessageType;

    if-eq p0, v2, :cond_d

    sget-object v2, Lcom/tgs/aics/bean/Message$MessageType;->PING:Lcom/tgs/aics/bean/Message$MessageType;

    if-ne p0, v2, :cond_4

    goto/16 :goto_3

    .line 419
    :cond_4
    sget-object v2, Lcom/tgs/aics/bean/Message$MessageType;->STATUS:Lcom/tgs/aics/bean/Message$MessageType;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    const-string v7, "error_code"

    const/4 v8, 0x1

    if-ne p0, v2, :cond_7

    .line 420
    :try_start_2
    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 421
    invoke-virtual {p0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    invoke-virtual {p0, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_5

    goto :goto_1

    .line 424
    :cond_5
    new-instance p0, Lcom/tgs/aics/bean/MessageReceiptBean;

    invoke-direct {p0}, Lcom/tgs/aics/bean/MessageReceiptBean;-><init>()V

    .line 425
    invoke-virtual {p0, v8}, Lcom/tgs/aics/bean/MessageReceiptBean;->setSuccess(Z)V

    .line 426
    invoke-virtual {p0, v6}, Lcom/tgs/aics/bean/MessageReceiptBean;->setErrCode(I)V

    .line 427
    invoke-virtual {p0, v3}, Lcom/tgs/aics/bean/MessageReceiptBean;->setErrorMsg(Ljava/lang/String;)V

    .line 428
    iput-object p0, v0, Lcom/tgs/aics/bean/Message;->messageReceiptBean:Lcom/tgs/aics/bean/MessageReceiptBean;

    .line 429
    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tgs/aics/bean/WorkOrderInfo;->parseJSON(Ljava/lang/String;)Lcom/tgs/aics/bean/WorkOrderInfo;

    move-result-object p0

    iput-object p0, v0, Lcom/tgs/aics/bean/Message;->workOrderInfo:Lcom/tgs/aics/bean/WorkOrderInfo;

    goto :goto_3

    .line 422
    :cond_6
    :goto_1
    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tgs/aics/bean/MessageReceiptBean;->parseJSON(Ljava/lang/String;)Lcom/tgs/aics/bean/MessageReceiptBean;

    move-result-object p0

    iput-object p0, v0, Lcom/tgs/aics/bean/Message;->messageReceiptBean:Lcom/tgs/aics/bean/MessageReceiptBean;

    goto :goto_3

    .line 431
    :cond_7
    sget-object v2, Lcom/tgs/aics/bean/Message$MessageType;->RATING_REQUEST:Lcom/tgs/aics/bean/Message$MessageType;

    if-ne p0, v2, :cond_a

    .line 432
    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 433
    invoke-virtual {p0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_9

    invoke-virtual {p0, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_8

    goto :goto_2

    .line 436
    :cond_8
    new-instance v2, Lcom/tgs/aics/bean/MessageReceiptBean;

    invoke-direct {v2}, Lcom/tgs/aics/bean/MessageReceiptBean;-><init>()V

    .line 437
    invoke-virtual {v2, v8}, Lcom/tgs/aics/bean/MessageReceiptBean;->setSuccess(Z)V

    .line 438
    invoke-virtual {v2, v6}, Lcom/tgs/aics/bean/MessageReceiptBean;->setErrCode(I)V

    .line 439
    invoke-virtual {v2, v3}, Lcom/tgs/aics/bean/MessageReceiptBean;->setErrorMsg(Ljava/lang/String;)V

    .line 440
    iput-object v2, v0, Lcom/tgs/aics/bean/Message;->messageReceiptBean:Lcom/tgs/aics/bean/MessageReceiptBean;

    .line 441
    iput-object p0, v0, Lcom/tgs/aics/bean/Message;->ratingMessageId:Ljava/lang/String;

    goto :goto_3

    .line 434
    :cond_9
    :goto_2
    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tgs/aics/bean/MessageReceiptBean;->parseJSON(Ljava/lang/String;)Lcom/tgs/aics/bean/MessageReceiptBean;

    move-result-object p0

    iput-object p0, v0, Lcom/tgs/aics/bean/Message;->messageReceiptBean:Lcom/tgs/aics/bean/MessageReceiptBean;

    goto :goto_3

    .line 445
    :cond_a
    iget-object p0, v0, Lcom/tgs/aics/bean/Message;->contentType:Lcom/tgs/aics/bean/Message$MessageContentType;

    sget-object v2, Lcom/tgs/aics/bean/Message$MessageContentType;->FORM:Lcom/tgs/aics/bean/Message$MessageContentType;

    if-eq p0, v2, :cond_b

    iget-object p0, v0, Lcom/tgs/aics/bean/Message;->contentType:Lcom/tgs/aics/bean/Message$MessageContentType;

    sget-object v2, Lcom/tgs/aics/bean/Message$MessageContentType;->RATING_SCORE:Lcom/tgs/aics/bean/Message$MessageContentType;

    if-eq p0, v2, :cond_b

    iget-object p0, v0, Lcom/tgs/aics/bean/Message;->contentType:Lcom/tgs/aics/bean/Message$MessageContentType;

    sget-object v2, Lcom/tgs/aics/bean/Message$MessageContentType;->CLIENT_TYPE_LOG_FILE_UPLOAD:Lcom/tgs/aics/bean/Message$MessageContentType;

    if-ne p0, v2, :cond_c

    :cond_b
    iget-object p0, v0, Lcom/tgs/aics/bean/Message;->messageSource:Lcom/tgs/aics/bean/Message$MessageSource;

    sget-object v2, Lcom/tgs/aics/bean/Message$MessageSource;->PLAYER:Lcom/tgs/aics/bean/Message$MessageSource;

    if-ne p0, v2, :cond_c

    .line 447
    sget-object p0, Lcom/tgs/aics/bean/Message$MessageSource;->EXTRA:Lcom/tgs/aics/bean/Message$MessageSource;

    iput-object p0, v0, Lcom/tgs/aics/bean/Message;->messageSource:Lcom/tgs/aics/bean/Message$MessageSource;

    .line 449
    :cond_c
    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tgs/aics/bean/Message$OriginalMessageContent;->parseJSON(Ljava/lang/String;)Lcom/tgs/aics/bean/Message$OriginalMessageContent;

    move-result-object p0

    iput-object p0, v0, Lcom/tgs/aics/bean/Message;->messageContent:Lcom/tgs/aics/bean/Message$OriginalMessageContent;

    .line 451
    :cond_d
    :goto_3
    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_e

    .line 452
    new-instance p0, Lorg/json/JSONObject;

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 453
    invoke-virtual {p0, v4, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/tgs/aics/bean/Message;->setMsg(Ljava/lang/String;)V

    :cond_e
    const-string p0, "message_id"

    .line 455
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/tgs/aics/bean/Message;->messageId:Ljava/lang/String;

    const-string p0, "character_id"

    .line 456
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/tgs/aics/bean/Message;->characterId:Ljava/lang/String;

    const-string p0, "timestamp"

    .line 457
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/tgs/aics/bean/Message;->timestamp:J

    const-string p0, "form_id"

    .line 458
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/tgs/aics/bean/Message;->messageIdWithForm:Ljava/lang/String;

    const-string p0, "is_committed"

    .line 459
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result p0

    iput-boolean p0, v0, Lcom/tgs/aics/bean/Message;->isFormCommitted:Z

    const-string p0, "is_read"

    .line 460
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result p0

    iput-boolean p0, v0, Lcom/tgs/aics/bean/Message;->isRead:Z
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_4

    :catch_0
    move-exception p0

    .line 462
    invoke-static {p0}, Lcom/tgs/aics/utils/ErrorUtils;->printExceptionInfo(Ljava/lang/Throwable;)V

    :goto_4
    return-object v0
.end method


# virtual methods
.method public getAppointProvider()Ljava/lang/String;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/tgs/aics/bean/Message;->appointProvider:Ljava/lang/String;

    return-object v0
.end method

.method public getCharacterId()Ljava/lang/String;
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/tgs/aics/bean/Message;->characterId:Ljava/lang/String;

    return-object v0
.end method

.method public getContentType()Lcom/tgs/aics/bean/Message$MessageContentType;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/tgs/aics/bean/Message;->contentType:Lcom/tgs/aics/bean/Message$MessageContentType;

    return-object v0
.end method

.method public getGameId()Ljava/lang/String;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/tgs/aics/bean/Message;->gameId:Ljava/lang/String;

    return-object v0
.end method

.method public getHistoryMessageList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/tgs/aics/bean/Message;",
            ">;"
        }
    .end annotation

    .line 135
    iget-object v0, p0, Lcom/tgs/aics/bean/Message;->historyMessageList:Ljava/util/List;

    return-object v0
.end method

.method public getMessageContent()Lcom/tgs/aics/bean/Message$OriginalMessageContent;
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/tgs/aics/bean/Message;->messageContent:Lcom/tgs/aics/bean/Message$OriginalMessageContent;

    return-object v0
.end method

.method public getMessageId()Ljava/lang/String;
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/tgs/aics/bean/Message;->messageId:Ljava/lang/String;

    return-object v0
.end method

.method public getMessageIdWithForm()Ljava/lang/String;
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/tgs/aics/bean/Message;->messageIdWithForm:Ljava/lang/String;

    return-object v0
.end method

.method public getMessageReceiptBean()Lcom/tgs/aics/bean/MessageReceiptBean;
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/tgs/aics/bean/Message;->messageReceiptBean:Lcom/tgs/aics/bean/MessageReceiptBean;

    return-object v0
.end method

.method public getMessageSource()Lcom/tgs/aics/bean/Message$MessageSource;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/tgs/aics/bean/Message;->messageSource:Lcom/tgs/aics/bean/Message$MessageSource;

    return-object v0
.end method

.method public getMessageType()Lcom/tgs/aics/bean/Message$MessageType;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/tgs/aics/bean/Message;->messageType:Lcom/tgs/aics/bean/Message$MessageType;

    return-object v0
.end method

.method public getRatingMessageId()Ljava/lang/String;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/tgs/aics/bean/Message;->ratingMessageId:Ljava/lang/String;

    return-object v0
.end method

.method public getReadMessageList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/tgs/aics/bean/Message;",
            ">;"
        }
    .end annotation

    .line 139
    iget-object v0, p0, Lcom/tgs/aics/bean/Message;->readMessageList:Ljava/util/List;

    return-object v0
.end method

.method public getSendStatus()Lcom/tgs/aics/bean/Message$MessageSendStatus;
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/tgs/aics/bean/Message;->sendStatus:Lcom/tgs/aics/bean/Message$MessageSendStatus;

    return-object v0
.end method

.method public getTimestamp()J
    .locals 2

    .line 87
    iget-wide v0, p0, Lcom/tgs/aics/bean/Message;->timestamp:J

    return-wide v0
.end method

.method public getWorkOrderInfo()Lcom/tgs/aics/bean/WorkOrderInfo;
    .locals 1

    .line 131
    iget-object v0, p0, Lcom/tgs/aics/bean/Message;->workOrderInfo:Lcom/tgs/aics/bean/WorkOrderInfo;

    return-object v0
.end method

.method public isFormCommitted()Z
    .locals 1

    .line 103
    iget-boolean v0, p0, Lcom/tgs/aics/bean/Message;->isFormCommitted:Z

    return v0
.end method

.method public isRead()Z
    .locals 1

    .line 111
    iget-boolean v0, p0, Lcom/tgs/aics/bean/Message;->isRead:Z

    return v0
.end method

.method public isTimestampShown()Z
    .locals 1

    .line 91
    iget-boolean v0, p0, Lcom/tgs/aics/bean/Message;->isTimestampShown:Z

    return v0
.end method

.method public setFormCommitted(Z)V
    .locals 0

    .line 107
    iput-boolean p1, p0, Lcom/tgs/aics/bean/Message;->isFormCommitted:Z

    return-void
.end method

.method public setMessageReceiptBean(Lcom/tgs/aics/bean/MessageReceiptBean;)V
    .locals 0

    .line 127
    iput-object p1, p0, Lcom/tgs/aics/bean/Message;->messageReceiptBean:Lcom/tgs/aics/bean/MessageReceiptBean;

    return-void
.end method

.method public setMessageSource(Lcom/tgs/aics/bean/Message$MessageSource;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/tgs/aics/bean/Message;->messageSource:Lcom/tgs/aics/bean/Message$MessageSource;

    return-void
.end method

.method public setMessageType(Lcom/tgs/aics/bean/Message$MessageType;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/tgs/aics/bean/Message;->messageType:Lcom/tgs/aics/bean/Message$MessageType;

    return-void
.end method

.method public setSendStatus(Lcom/tgs/aics/bean/Message$MessageSendStatus;)V
    .locals 0

    .line 119
    iput-object p1, p0, Lcom/tgs/aics/bean/Message;->sendStatus:Lcom/tgs/aics/bean/Message$MessageSendStatus;

    return-void
.end method

.method public setTimestampShown(Z)V
    .locals 0

    .line 95
    iput-boolean p1, p0, Lcom/tgs/aics/bean/Message;->isTimestampShown:Z

    return-void
.end method
