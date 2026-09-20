.class public final enum Lcom/tgs/aics/bean/Message$MessageContentType;
.super Ljava/lang/Enum;
.source "Message.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tgs/aics/bean/Message;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MessageContentType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/tgs/aics/bean/Message$MessageContentType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/tgs/aics/bean/Message$MessageContentType;

.field public static final enum CHAT_MESSAGE:Lcom/tgs/aics/bean/Message$MessageContentType;

.field public static final enum CLIENT_APP_LOG_REQUEST:Lcom/tgs/aics/bean/Message$MessageContentType;

.field public static final enum CLIENT_TYPE_LOG_FILE_UPLOAD:Lcom/tgs/aics/bean/Message$MessageContentType;

.field public static final enum FORM:Lcom/tgs/aics/bean/Message$MessageContentType;

.field public static final enum FORM_REQUEST:Lcom/tgs/aics/bean/Message$MessageContentType;

.field public static final enum PIC:Lcom/tgs/aics/bean/Message$MessageContentType;

.field public static final enum PLAYER_ISSUE:Lcom/tgs/aics/bean/Message$MessageContentType;

.field public static final enum PLAYER_RECHARGE_RECORD_FEEDBACK:Lcom/tgs/aics/bean/Message$MessageContentType;

.field public static final enum PLAYER_RECHARGE_RECORD_REQUEST:Lcom/tgs/aics/bean/Message$MessageContentType;

.field public static final enum PLAYER_RECHARGE_RECORD_RESULT:Lcom/tgs/aics/bean/Message$MessageContentType;

.field public static final enum RATING_REQUEST:Lcom/tgs/aics/bean/Message$MessageContentType;

.field public static final enum RATING_SCORE:Lcom/tgs/aics/bean/Message$MessageContentType;

.field public static final enum VIDEO:Lcom/tgs/aics/bean/Message$MessageContentType;


# direct methods
.method private static synthetic $values()[Lcom/tgs/aics/bean/Message$MessageContentType;
    .locals 3

    const/16 v0, 0xd

    new-array v0, v0, [Lcom/tgs/aics/bean/Message$MessageContentType;

    const/4 v1, 0x0

    .line 142
    sget-object v2, Lcom/tgs/aics/bean/Message$MessageContentType;->CHAT_MESSAGE:Lcom/tgs/aics/bean/Message$MessageContentType;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/tgs/aics/bean/Message$MessageContentType;->PIC:Lcom/tgs/aics/bean/Message$MessageContentType;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/tgs/aics/bean/Message$MessageContentType;->VIDEO:Lcom/tgs/aics/bean/Message$MessageContentType;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/tgs/aics/bean/Message$MessageContentType;->RATING_SCORE:Lcom/tgs/aics/bean/Message$MessageContentType;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/tgs/aics/bean/Message$MessageContentType;->RATING_REQUEST:Lcom/tgs/aics/bean/Message$MessageContentType;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/tgs/aics/bean/Message$MessageContentType;->FORM:Lcom/tgs/aics/bean/Message$MessageContentType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/tgs/aics/bean/Message$MessageContentType;->FORM_REQUEST:Lcom/tgs/aics/bean/Message$MessageContentType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/tgs/aics/bean/Message$MessageContentType;->CLIENT_APP_LOG_REQUEST:Lcom/tgs/aics/bean/Message$MessageContentType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/tgs/aics/bean/Message$MessageContentType;->CLIENT_TYPE_LOG_FILE_UPLOAD:Lcom/tgs/aics/bean/Message$MessageContentType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/tgs/aics/bean/Message$MessageContentType;->PLAYER_RECHARGE_RECORD_REQUEST:Lcom/tgs/aics/bean/Message$MessageContentType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/tgs/aics/bean/Message$MessageContentType;->PLAYER_RECHARGE_RECORD_RESULT:Lcom/tgs/aics/bean/Message$MessageContentType;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/tgs/aics/bean/Message$MessageContentType;->PLAYER_RECHARGE_RECORD_FEEDBACK:Lcom/tgs/aics/bean/Message$MessageContentType;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/tgs/aics/bean/Message$MessageContentType;->PLAYER_ISSUE:Lcom/tgs/aics/bean/Message$MessageContentType;

    aput-object v2, v0, v1

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 143
    new-instance v0, Lcom/tgs/aics/bean/Message$MessageContentType;

    const-string v1, "CHAT_MESSAGE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/tgs/aics/bean/Message$MessageContentType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tgs/aics/bean/Message$MessageContentType;->CHAT_MESSAGE:Lcom/tgs/aics/bean/Message$MessageContentType;

    .line 144
    new-instance v0, Lcom/tgs/aics/bean/Message$MessageContentType;

    const-string v1, "PIC"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/tgs/aics/bean/Message$MessageContentType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tgs/aics/bean/Message$MessageContentType;->PIC:Lcom/tgs/aics/bean/Message$MessageContentType;

    .line 145
    new-instance v0, Lcom/tgs/aics/bean/Message$MessageContentType;

    const-string v1, "VIDEO"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/tgs/aics/bean/Message$MessageContentType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tgs/aics/bean/Message$MessageContentType;->VIDEO:Lcom/tgs/aics/bean/Message$MessageContentType;

    .line 146
    new-instance v0, Lcom/tgs/aics/bean/Message$MessageContentType;

    const-string v1, "RATING_SCORE"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/tgs/aics/bean/Message$MessageContentType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tgs/aics/bean/Message$MessageContentType;->RATING_SCORE:Lcom/tgs/aics/bean/Message$MessageContentType;

    .line 147
    new-instance v0, Lcom/tgs/aics/bean/Message$MessageContentType;

    const-string v1, "RATING_REQUEST"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/tgs/aics/bean/Message$MessageContentType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tgs/aics/bean/Message$MessageContentType;->RATING_REQUEST:Lcom/tgs/aics/bean/Message$MessageContentType;

    .line 148
    new-instance v0, Lcom/tgs/aics/bean/Message$MessageContentType;

    const-string v1, "FORM"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/tgs/aics/bean/Message$MessageContentType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tgs/aics/bean/Message$MessageContentType;->FORM:Lcom/tgs/aics/bean/Message$MessageContentType;

    .line 149
    new-instance v0, Lcom/tgs/aics/bean/Message$MessageContentType;

    const-string v1, "FORM_REQUEST"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/tgs/aics/bean/Message$MessageContentType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tgs/aics/bean/Message$MessageContentType;->FORM_REQUEST:Lcom/tgs/aics/bean/Message$MessageContentType;

    .line 150
    new-instance v0, Lcom/tgs/aics/bean/Message$MessageContentType;

    const-string v1, "CLIENT_APP_LOG_REQUEST"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/tgs/aics/bean/Message$MessageContentType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tgs/aics/bean/Message$MessageContentType;->CLIENT_APP_LOG_REQUEST:Lcom/tgs/aics/bean/Message$MessageContentType;

    .line 151
    new-instance v0, Lcom/tgs/aics/bean/Message$MessageContentType;

    const-string v1, "CLIENT_TYPE_LOG_FILE_UPLOAD"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/tgs/aics/bean/Message$MessageContentType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tgs/aics/bean/Message$MessageContentType;->CLIENT_TYPE_LOG_FILE_UPLOAD:Lcom/tgs/aics/bean/Message$MessageContentType;

    .line 152
    new-instance v0, Lcom/tgs/aics/bean/Message$MessageContentType;

    const-string v1, "PLAYER_RECHARGE_RECORD_REQUEST"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/tgs/aics/bean/Message$MessageContentType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tgs/aics/bean/Message$MessageContentType;->PLAYER_RECHARGE_RECORD_REQUEST:Lcom/tgs/aics/bean/Message$MessageContentType;

    .line 153
    new-instance v0, Lcom/tgs/aics/bean/Message$MessageContentType;

    const-string v1, "PLAYER_RECHARGE_RECORD_RESULT"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/tgs/aics/bean/Message$MessageContentType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tgs/aics/bean/Message$MessageContentType;->PLAYER_RECHARGE_RECORD_RESULT:Lcom/tgs/aics/bean/Message$MessageContentType;

    .line 154
    new-instance v0, Lcom/tgs/aics/bean/Message$MessageContentType;

    const-string v1, "PLAYER_RECHARGE_RECORD_FEEDBACK"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/tgs/aics/bean/Message$MessageContentType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tgs/aics/bean/Message$MessageContentType;->PLAYER_RECHARGE_RECORD_FEEDBACK:Lcom/tgs/aics/bean/Message$MessageContentType;

    .line 155
    new-instance v0, Lcom/tgs/aics/bean/Message$MessageContentType;

    const-string v1, "PLAYER_ISSUE"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/tgs/aics/bean/Message$MessageContentType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tgs/aics/bean/Message$MessageContentType;->PLAYER_ISSUE:Lcom/tgs/aics/bean/Message$MessageContentType;

    .line 142
    invoke-static {}, Lcom/tgs/aics/bean/Message$MessageContentType;->$values()[Lcom/tgs/aics/bean/Message$MessageContentType;

    move-result-object v0

    sput-object v0, Lcom/tgs/aics/bean/Message$MessageContentType;->$VALUES:[Lcom/tgs/aics/bean/Message$MessageContentType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 142
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tgs/aics/bean/Message$MessageContentType;
    .locals 1

    .line 142
    const-class v0, Lcom/tgs/aics/bean/Message$MessageContentType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/tgs/aics/bean/Message$MessageContentType;

    return-object p0
.end method

.method public static values()[Lcom/tgs/aics/bean/Message$MessageContentType;
    .locals 1

    .line 142
    sget-object v0, Lcom/tgs/aics/bean/Message$MessageContentType;->$VALUES:[Lcom/tgs/aics/bean/Message$MessageContentType;

    invoke-virtual {v0}, [Lcom/tgs/aics/bean/Message$MessageContentType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tgs/aics/bean/Message$MessageContentType;

    return-object v0
.end method
