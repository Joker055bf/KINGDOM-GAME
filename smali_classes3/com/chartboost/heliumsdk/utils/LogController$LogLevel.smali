.class public final enum Lcom/chartboost/heliumsdk/utils/LogController$LogLevel;
.super Ljava/lang/Enum;
.source "LogController.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chartboost/heliumsdk/utils/LogController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LogLevel"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chartboost/heliumsdk/utils/LogController$LogLevel$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/chartboost/heliumsdk/utils/LogController$LogLevel;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u000b\u0008\u0086\u0001\u0018\u0000 \r2\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\rB\u000f\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000c\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/chartboost/heliumsdk/utils/LogController$LogLevel;",
        "",
        "value",
        "",
        "(Ljava/lang/String;II)V",
        "getValue",
        "()I",
        "NONE",
        "ERROR",
        "WARNING",
        "INFO",
        "DEBUG",
        "VERBOSE",
        "Companion",
        "Helium_release"
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
.field private static final synthetic $VALUES:[Lcom/chartboost/heliumsdk/utils/LogController$LogLevel;

.field public static final Companion:Lcom/chartboost/heliumsdk/utils/LogController$LogLevel$Companion;

.field public static final enum DEBUG:Lcom/chartboost/heliumsdk/utils/LogController$LogLevel;

.field public static final enum ERROR:Lcom/chartboost/heliumsdk/utils/LogController$LogLevel;

.field public static final enum INFO:Lcom/chartboost/heliumsdk/utils/LogController$LogLevel;

.field public static final enum NONE:Lcom/chartboost/heliumsdk/utils/LogController$LogLevel;

.field public static final enum VERBOSE:Lcom/chartboost/heliumsdk/utils/LogController$LogLevel;

.field public static final enum WARNING:Lcom/chartboost/heliumsdk/utils/LogController$LogLevel;


# instance fields
.field private final value:I


# direct methods
.method private static final synthetic $values()[Lcom/chartboost/heliumsdk/utils/LogController$LogLevel;
    .locals 3

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/chartboost/heliumsdk/utils/LogController$LogLevel;

    const/4 v1, 0x0

    sget-object v2, Lcom/chartboost/heliumsdk/utils/LogController$LogLevel;->NONE:Lcom/chartboost/heliumsdk/utils/LogController$LogLevel;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/chartboost/heliumsdk/utils/LogController$LogLevel;->ERROR:Lcom/chartboost/heliumsdk/utils/LogController$LogLevel;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/chartboost/heliumsdk/utils/LogController$LogLevel;->WARNING:Lcom/chartboost/heliumsdk/utils/LogController$LogLevel;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/chartboost/heliumsdk/utils/LogController$LogLevel;->INFO:Lcom/chartboost/heliumsdk/utils/LogController$LogLevel;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/chartboost/heliumsdk/utils/LogController$LogLevel;->DEBUG:Lcom/chartboost/heliumsdk/utils/LogController$LogLevel;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/chartboost/heliumsdk/utils/LogController$LogLevel;->VERBOSE:Lcom/chartboost/heliumsdk/utils/LogController$LogLevel;

    aput-object v2, v0, v1

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 28
    new-instance v0, Lcom/chartboost/heliumsdk/utils/LogController$LogLevel;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/chartboost/heliumsdk/utils/LogController$LogLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/chartboost/heliumsdk/utils/LogController$LogLevel;->NONE:Lcom/chartboost/heliumsdk/utils/LogController$LogLevel;

    .line 29
    new-instance v0, Lcom/chartboost/heliumsdk/utils/LogController$LogLevel;

    const-string v1, "ERROR"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lcom/chartboost/heliumsdk/utils/LogController$LogLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/chartboost/heliumsdk/utils/LogController$LogLevel;->ERROR:Lcom/chartboost/heliumsdk/utils/LogController$LogLevel;

    .line 30
    new-instance v0, Lcom/chartboost/heliumsdk/utils/LogController$LogLevel;

    const-string v1, "WARNING"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v2}, Lcom/chartboost/heliumsdk/utils/LogController$LogLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/chartboost/heliumsdk/utils/LogController$LogLevel;->WARNING:Lcom/chartboost/heliumsdk/utils/LogController$LogLevel;

    .line 31
    new-instance v0, Lcom/chartboost/heliumsdk/utils/LogController$LogLevel;

    const-string v1, "INFO"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v2}, Lcom/chartboost/heliumsdk/utils/LogController$LogLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/chartboost/heliumsdk/utils/LogController$LogLevel;->INFO:Lcom/chartboost/heliumsdk/utils/LogController$LogLevel;

    .line 32
    new-instance v0, Lcom/chartboost/heliumsdk/utils/LogController$LogLevel;

    const-string v1, "DEBUG"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2, v2}, Lcom/chartboost/heliumsdk/utils/LogController$LogLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/chartboost/heliumsdk/utils/LogController$LogLevel;->DEBUG:Lcom/chartboost/heliumsdk/utils/LogController$LogLevel;

    .line 33
    new-instance v0, Lcom/chartboost/heliumsdk/utils/LogController$LogLevel;

    const-string v1, "VERBOSE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, v2}, Lcom/chartboost/heliumsdk/utils/LogController$LogLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/chartboost/heliumsdk/utils/LogController$LogLevel;->VERBOSE:Lcom/chartboost/heliumsdk/utils/LogController$LogLevel;

    invoke-static {}, Lcom/chartboost/heliumsdk/utils/LogController$LogLevel;->$values()[Lcom/chartboost/heliumsdk/utils/LogController$LogLevel;

    move-result-object v0

    sput-object v0, Lcom/chartboost/heliumsdk/utils/LogController$LogLevel;->$VALUES:[Lcom/chartboost/heliumsdk/utils/LogController$LogLevel;

    new-instance v0, Lcom/chartboost/heliumsdk/utils/LogController$LogLevel$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/chartboost/heliumsdk/utils/LogController$LogLevel$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/chartboost/heliumsdk/utils/LogController$LogLevel;->Companion:Lcom/chartboost/heliumsdk/utils/LogController$LogLevel$Companion;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 27
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/chartboost/heliumsdk/utils/LogController$LogLevel;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/chartboost/heliumsdk/utils/LogController$LogLevel;
    .locals 1

    const-class v0, Lcom/chartboost/heliumsdk/utils/LogController$LogLevel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/chartboost/heliumsdk/utils/LogController$LogLevel;

    return-object p0
.end method

.method public static values()[Lcom/chartboost/heliumsdk/utils/LogController$LogLevel;
    .locals 1

    sget-object v0, Lcom/chartboost/heliumsdk/utils/LogController$LogLevel;->$VALUES:[Lcom/chartboost/heliumsdk/utils/LogController$LogLevel;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/chartboost/heliumsdk/utils/LogController$LogLevel;

    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .locals 1

    .line 27
    iget v0, p0, Lcom/chartboost/heliumsdk/utils/LogController$LogLevel;->value:I

    return v0
.end method
