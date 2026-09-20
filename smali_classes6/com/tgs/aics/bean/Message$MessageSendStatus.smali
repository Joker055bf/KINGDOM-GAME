.class public final enum Lcom/tgs/aics/bean/Message$MessageSendStatus;
.super Ljava/lang/Enum;
.source "Message.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tgs/aics/bean/Message;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MessageSendStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/tgs/aics/bean/Message$MessageSendStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/tgs/aics/bean/Message$MessageSendStatus;

.field public static final enum FAILED:Lcom/tgs/aics/bean/Message$MessageSendStatus;

.field public static final enum NONE:Lcom/tgs/aics/bean/Message$MessageSendStatus;

.field public static final enum SENDING:Lcom/tgs/aics/bean/Message$MessageSendStatus;

.field public static final enum SENT:Lcom/tgs/aics/bean/Message$MessageSendStatus;


# direct methods
.method private static synthetic $values()[Lcom/tgs/aics/bean/Message$MessageSendStatus;
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/tgs/aics/bean/Message$MessageSendStatus;

    const/4 v1, 0x0

    .line 187
    sget-object v2, Lcom/tgs/aics/bean/Message$MessageSendStatus;->NONE:Lcom/tgs/aics/bean/Message$MessageSendStatus;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/tgs/aics/bean/Message$MessageSendStatus;->SENDING:Lcom/tgs/aics/bean/Message$MessageSendStatus;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/tgs/aics/bean/Message$MessageSendStatus;->FAILED:Lcom/tgs/aics/bean/Message$MessageSendStatus;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/tgs/aics/bean/Message$MessageSendStatus;->SENT:Lcom/tgs/aics/bean/Message$MessageSendStatus;

    aput-object v2, v0, v1

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 188
    new-instance v0, Lcom/tgs/aics/bean/Message$MessageSendStatus;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/tgs/aics/bean/Message$MessageSendStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tgs/aics/bean/Message$MessageSendStatus;->NONE:Lcom/tgs/aics/bean/Message$MessageSendStatus;

    .line 189
    new-instance v0, Lcom/tgs/aics/bean/Message$MessageSendStatus;

    const-string v1, "SENDING"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/tgs/aics/bean/Message$MessageSendStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tgs/aics/bean/Message$MessageSendStatus;->SENDING:Lcom/tgs/aics/bean/Message$MessageSendStatus;

    .line 190
    new-instance v0, Lcom/tgs/aics/bean/Message$MessageSendStatus;

    const-string v1, "FAILED"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/tgs/aics/bean/Message$MessageSendStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tgs/aics/bean/Message$MessageSendStatus;->FAILED:Lcom/tgs/aics/bean/Message$MessageSendStatus;

    .line 191
    new-instance v0, Lcom/tgs/aics/bean/Message$MessageSendStatus;

    const-string v1, "SENT"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/tgs/aics/bean/Message$MessageSendStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tgs/aics/bean/Message$MessageSendStatus;->SENT:Lcom/tgs/aics/bean/Message$MessageSendStatus;

    .line 187
    invoke-static {}, Lcom/tgs/aics/bean/Message$MessageSendStatus;->$values()[Lcom/tgs/aics/bean/Message$MessageSendStatus;

    move-result-object v0

    sput-object v0, Lcom/tgs/aics/bean/Message$MessageSendStatus;->$VALUES:[Lcom/tgs/aics/bean/Message$MessageSendStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 187
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tgs/aics/bean/Message$MessageSendStatus;
    .locals 1

    .line 187
    const-class v0, Lcom/tgs/aics/bean/Message$MessageSendStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/tgs/aics/bean/Message$MessageSendStatus;

    return-object p0
.end method

.method public static values()[Lcom/tgs/aics/bean/Message$MessageSendStatus;
    .locals 1

    .line 187
    sget-object v0, Lcom/tgs/aics/bean/Message$MessageSendStatus;->$VALUES:[Lcom/tgs/aics/bean/Message$MessageSendStatus;

    invoke-virtual {v0}, [Lcom/tgs/aics/bean/Message$MessageSendStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tgs/aics/bean/Message$MessageSendStatus;

    return-object v0
.end method
