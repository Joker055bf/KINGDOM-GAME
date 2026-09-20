.class public final enum Lcom/tgs/aics/bean/Message$MessageSource;
.super Ljava/lang/Enum;
.source "Message.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tgs/aics/bean/Message;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MessageSource"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/tgs/aics/bean/Message$MessageSource;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/tgs/aics/bean/Message$MessageSource;

.field public static final enum AI:Lcom/tgs/aics/bean/Message$MessageSource;

.field public static final enum CUSTOMER:Lcom/tgs/aics/bean/Message$MessageSource;

.field public static final enum EXTRA:Lcom/tgs/aics/bean/Message$MessageSource;

.field public static final enum PLAYER:Lcom/tgs/aics/bean/Message$MessageSource;

.field public static final enum SYSTEM:Lcom/tgs/aics/bean/Message$MessageSource;


# direct methods
.method private static synthetic $values()[Lcom/tgs/aics/bean/Message$MessageSource;
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/tgs/aics/bean/Message$MessageSource;

    const/4 v1, 0x0

    .line 164
    sget-object v2, Lcom/tgs/aics/bean/Message$MessageSource;->PLAYER:Lcom/tgs/aics/bean/Message$MessageSource;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/tgs/aics/bean/Message$MessageSource;->CUSTOMER:Lcom/tgs/aics/bean/Message$MessageSource;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/tgs/aics/bean/Message$MessageSource;->SYSTEM:Lcom/tgs/aics/bean/Message$MessageSource;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/tgs/aics/bean/Message$MessageSource;->AI:Lcom/tgs/aics/bean/Message$MessageSource;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/tgs/aics/bean/Message$MessageSource;->EXTRA:Lcom/tgs/aics/bean/Message$MessageSource;

    aput-object v2, v0, v1

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 165
    new-instance v0, Lcom/tgs/aics/bean/Message$MessageSource;

    const-string v1, "PLAYER"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/tgs/aics/bean/Message$MessageSource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tgs/aics/bean/Message$MessageSource;->PLAYER:Lcom/tgs/aics/bean/Message$MessageSource;

    .line 166
    new-instance v0, Lcom/tgs/aics/bean/Message$MessageSource;

    const-string v1, "CUSTOMER"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/tgs/aics/bean/Message$MessageSource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tgs/aics/bean/Message$MessageSource;->CUSTOMER:Lcom/tgs/aics/bean/Message$MessageSource;

    .line 167
    new-instance v0, Lcom/tgs/aics/bean/Message$MessageSource;

    const-string v1, "SYSTEM"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/tgs/aics/bean/Message$MessageSource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tgs/aics/bean/Message$MessageSource;->SYSTEM:Lcom/tgs/aics/bean/Message$MessageSource;

    .line 168
    new-instance v0, Lcom/tgs/aics/bean/Message$MessageSource;

    const-string v1, "AI"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/tgs/aics/bean/Message$MessageSource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tgs/aics/bean/Message$MessageSource;->AI:Lcom/tgs/aics/bean/Message$MessageSource;

    .line 169
    new-instance v0, Lcom/tgs/aics/bean/Message$MessageSource;

    const-string v1, "EXTRA"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/tgs/aics/bean/Message$MessageSource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tgs/aics/bean/Message$MessageSource;->EXTRA:Lcom/tgs/aics/bean/Message$MessageSource;

    .line 164
    invoke-static {}, Lcom/tgs/aics/bean/Message$MessageSource;->$values()[Lcom/tgs/aics/bean/Message$MessageSource;

    move-result-object v0

    sput-object v0, Lcom/tgs/aics/bean/Message$MessageSource;->$VALUES:[Lcom/tgs/aics/bean/Message$MessageSource;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 164
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tgs/aics/bean/Message$MessageSource;
    .locals 1

    .line 164
    const-class v0, Lcom/tgs/aics/bean/Message$MessageSource;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/tgs/aics/bean/Message$MessageSource;

    return-object p0
.end method

.method public static values()[Lcom/tgs/aics/bean/Message$MessageSource;
    .locals 1

    .line 164
    sget-object v0, Lcom/tgs/aics/bean/Message$MessageSource;->$VALUES:[Lcom/tgs/aics/bean/Message$MessageSource;

    invoke-virtual {v0}, [Lcom/tgs/aics/bean/Message$MessageSource;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tgs/aics/bean/Message$MessageSource;

    return-object v0
.end method
