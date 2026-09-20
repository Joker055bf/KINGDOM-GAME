.class public final enum Lcom/tgs/aics/bean/Message$MessageType;
.super Ljava/lang/Enum;
.source "Message.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tgs/aics/bean/Message;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MessageType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/tgs/aics/bean/Message$MessageType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/tgs/aics/bean/Message$MessageType;

.field public static final enum CHAT:Lcom/tgs/aics/bean/Message$MessageType;

.field public static final enum CHAT_READ:Lcom/tgs/aics/bean/Message$MessageType;

.field public static final enum CHAT_READ_ALL:Lcom/tgs/aics/bean/Message$MessageType;

.field public static final enum CHAT_RECORD:Lcom/tgs/aics/bean/Message$MessageType;

.field public static final enum CHAT_WITHDRAW:Lcom/tgs/aics/bean/Message$MessageType;

.field public static final enum CREATE_WORKORDER:Lcom/tgs/aics/bean/Message$MessageType;

.field public static final enum FAQ_TAP:Lcom/tgs/aics/bean/Message$MessageType;

.field public static final enum FEEDBACK:Lcom/tgs/aics/bean/Message$MessageType;

.field public static final enum IP:Lcom/tgs/aics/bean/Message$MessageType;

.field public static final enum PING:Lcom/tgs/aics/bean/Message$MessageType;

.field public static final enum RATING_REQUEST:Lcom/tgs/aics/bean/Message$MessageType;

.field public static final enum STATUS:Lcom/tgs/aics/bean/Message$MessageType;


# direct methods
.method private static synthetic $values()[Lcom/tgs/aics/bean/Message$MessageType;
    .locals 3

    const/16 v0, 0xc

    new-array v0, v0, [Lcom/tgs/aics/bean/Message$MessageType;

    const/4 v1, 0x0

    .line 172
    sget-object v2, Lcom/tgs/aics/bean/Message$MessageType;->CHAT:Lcom/tgs/aics/bean/Message$MessageType;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/tgs/aics/bean/Message$MessageType;->CHAT_RECORD:Lcom/tgs/aics/bean/Message$MessageType;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/tgs/aics/bean/Message$MessageType;->CHAT_READ:Lcom/tgs/aics/bean/Message$MessageType;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/tgs/aics/bean/Message$MessageType;->CHAT_READ_ALL:Lcom/tgs/aics/bean/Message$MessageType;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/tgs/aics/bean/Message$MessageType;->PING:Lcom/tgs/aics/bean/Message$MessageType;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/tgs/aics/bean/Message$MessageType;->FEEDBACK:Lcom/tgs/aics/bean/Message$MessageType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/tgs/aics/bean/Message$MessageType;->CHAT_WITHDRAW:Lcom/tgs/aics/bean/Message$MessageType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/tgs/aics/bean/Message$MessageType;->CREATE_WORKORDER:Lcom/tgs/aics/bean/Message$MessageType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/tgs/aics/bean/Message$MessageType;->IP:Lcom/tgs/aics/bean/Message$MessageType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/tgs/aics/bean/Message$MessageType;->FAQ_TAP:Lcom/tgs/aics/bean/Message$MessageType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/tgs/aics/bean/Message$MessageType;->STATUS:Lcom/tgs/aics/bean/Message$MessageType;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/tgs/aics/bean/Message$MessageType;->RATING_REQUEST:Lcom/tgs/aics/bean/Message$MessageType;

    aput-object v2, v0, v1

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 173
    new-instance v0, Lcom/tgs/aics/bean/Message$MessageType;

    const-string v1, "CHAT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/tgs/aics/bean/Message$MessageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tgs/aics/bean/Message$MessageType;->CHAT:Lcom/tgs/aics/bean/Message$MessageType;

    .line 174
    new-instance v0, Lcom/tgs/aics/bean/Message$MessageType;

    const-string v1, "CHAT_RECORD"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/tgs/aics/bean/Message$MessageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tgs/aics/bean/Message$MessageType;->CHAT_RECORD:Lcom/tgs/aics/bean/Message$MessageType;

    .line 175
    new-instance v0, Lcom/tgs/aics/bean/Message$MessageType;

    const-string v1, "CHAT_READ"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/tgs/aics/bean/Message$MessageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tgs/aics/bean/Message$MessageType;->CHAT_READ:Lcom/tgs/aics/bean/Message$MessageType;

    .line 176
    new-instance v0, Lcom/tgs/aics/bean/Message$MessageType;

    const-string v1, "CHAT_READ_ALL"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/tgs/aics/bean/Message$MessageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tgs/aics/bean/Message$MessageType;->CHAT_READ_ALL:Lcom/tgs/aics/bean/Message$MessageType;

    .line 177
    new-instance v0, Lcom/tgs/aics/bean/Message$MessageType;

    const-string v1, "PING"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/tgs/aics/bean/Message$MessageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tgs/aics/bean/Message$MessageType;->PING:Lcom/tgs/aics/bean/Message$MessageType;

    .line 178
    new-instance v0, Lcom/tgs/aics/bean/Message$MessageType;

    const-string v1, "FEEDBACK"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/tgs/aics/bean/Message$MessageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tgs/aics/bean/Message$MessageType;->FEEDBACK:Lcom/tgs/aics/bean/Message$MessageType;

    .line 179
    new-instance v0, Lcom/tgs/aics/bean/Message$MessageType;

    const-string v1, "CHAT_WITHDRAW"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/tgs/aics/bean/Message$MessageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tgs/aics/bean/Message$MessageType;->CHAT_WITHDRAW:Lcom/tgs/aics/bean/Message$MessageType;

    .line 180
    new-instance v0, Lcom/tgs/aics/bean/Message$MessageType;

    const-string v1, "CREATE_WORKORDER"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/tgs/aics/bean/Message$MessageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tgs/aics/bean/Message$MessageType;->CREATE_WORKORDER:Lcom/tgs/aics/bean/Message$MessageType;

    .line 181
    new-instance v0, Lcom/tgs/aics/bean/Message$MessageType;

    const-string v1, "IP"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/tgs/aics/bean/Message$MessageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tgs/aics/bean/Message$MessageType;->IP:Lcom/tgs/aics/bean/Message$MessageType;

    .line 182
    new-instance v0, Lcom/tgs/aics/bean/Message$MessageType;

    const-string v1, "FAQ_TAP"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/tgs/aics/bean/Message$MessageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tgs/aics/bean/Message$MessageType;->FAQ_TAP:Lcom/tgs/aics/bean/Message$MessageType;

    .line 183
    new-instance v0, Lcom/tgs/aics/bean/Message$MessageType;

    const-string v1, "STATUS"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/tgs/aics/bean/Message$MessageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tgs/aics/bean/Message$MessageType;->STATUS:Lcom/tgs/aics/bean/Message$MessageType;

    .line 184
    new-instance v0, Lcom/tgs/aics/bean/Message$MessageType;

    const-string v1, "RATING_REQUEST"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/tgs/aics/bean/Message$MessageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tgs/aics/bean/Message$MessageType;->RATING_REQUEST:Lcom/tgs/aics/bean/Message$MessageType;

    .line 172
    invoke-static {}, Lcom/tgs/aics/bean/Message$MessageType;->$values()[Lcom/tgs/aics/bean/Message$MessageType;

    move-result-object v0

    sput-object v0, Lcom/tgs/aics/bean/Message$MessageType;->$VALUES:[Lcom/tgs/aics/bean/Message$MessageType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 172
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tgs/aics/bean/Message$MessageType;
    .locals 1

    .line 172
    const-class v0, Lcom/tgs/aics/bean/Message$MessageType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/tgs/aics/bean/Message$MessageType;

    return-object p0
.end method

.method public static values()[Lcom/tgs/aics/bean/Message$MessageType;
    .locals 1

    .line 172
    sget-object v0, Lcom/tgs/aics/bean/Message$MessageType;->$VALUES:[Lcom/tgs/aics/bean/Message$MessageType;

    invoke-virtual {v0}, [Lcom/tgs/aics/bean/Message$MessageType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tgs/aics/bean/Message$MessageType;

    return-object v0
.end method
