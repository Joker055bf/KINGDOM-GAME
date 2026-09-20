.class final enum Lcom/openmediation/sdk/mobileads/HeliumSingleTon$InitState;
.super Ljava/lang/Enum;
.source "HeliumSingleTon.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/openmediation/sdk/mobileads/HeliumSingleTon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "InitState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/openmediation/sdk/mobileads/HeliumSingleTon$InitState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/openmediation/sdk/mobileads/HeliumSingleTon$InitState;

.field public static final enum INIT_PENDING:Lcom/openmediation/sdk/mobileads/HeliumSingleTon$InitState;

.field public static final enum INIT_SUCCESS:Lcom/openmediation/sdk/mobileads/HeliumSingleTon$InitState;

.field public static final enum NOT_INIT:Lcom/openmediation/sdk/mobileads/HeliumSingleTon$InitState;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 37
    new-instance v0, Lcom/openmediation/sdk/mobileads/HeliumSingleTon$InitState;

    const-string v1, "NOT_INIT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/openmediation/sdk/mobileads/HeliumSingleTon$InitState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/openmediation/sdk/mobileads/HeliumSingleTon$InitState;->NOT_INIT:Lcom/openmediation/sdk/mobileads/HeliumSingleTon$InitState;

    .line 41
    new-instance v1, Lcom/openmediation/sdk/mobileads/HeliumSingleTon$InitState;

    const-string v3, "INIT_PENDING"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/openmediation/sdk/mobileads/HeliumSingleTon$InitState;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/openmediation/sdk/mobileads/HeliumSingleTon$InitState;->INIT_PENDING:Lcom/openmediation/sdk/mobileads/HeliumSingleTon$InitState;

    .line 45
    new-instance v3, Lcom/openmediation/sdk/mobileads/HeliumSingleTon$InitState;

    const-string v5, "INIT_SUCCESS"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/openmediation/sdk/mobileads/HeliumSingleTon$InitState;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/openmediation/sdk/mobileads/HeliumSingleTon$InitState;->INIT_SUCCESS:Lcom/openmediation/sdk/mobileads/HeliumSingleTon$InitState;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/openmediation/sdk/mobileads/HeliumSingleTon$InitState;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 33
    sput-object v5, Lcom/openmediation/sdk/mobileads/HeliumSingleTon$InitState;->$VALUES:[Lcom/openmediation/sdk/mobileads/HeliumSingleTon$InitState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 33
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/openmediation/sdk/mobileads/HeliumSingleTon$InitState;
    .locals 1

    .line 33
    const-class v0, Lcom/openmediation/sdk/mobileads/HeliumSingleTon$InitState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/openmediation/sdk/mobileads/HeliumSingleTon$InitState;

    return-object p0
.end method

.method public static values()[Lcom/openmediation/sdk/mobileads/HeliumSingleTon$InitState;
    .locals 1

    .line 33
    sget-object v0, Lcom/openmediation/sdk/mobileads/HeliumSingleTon$InitState;->$VALUES:[Lcom/openmediation/sdk/mobileads/HeliumSingleTon$InitState;

    invoke-virtual {v0}, [Lcom/openmediation/sdk/mobileads/HeliumSingleTon$InitState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/openmediation/sdk/mobileads/HeliumSingleTon$InitState;

    return-object v0
.end method
