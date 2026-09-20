.class public final enum Lcom/openmediation/sdk/mobileads/AppLovinSingleTon$InitState;
.super Ljava/lang/Enum;
.source "AppLovinSingleTon.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/openmediation/sdk/mobileads/AppLovinSingleTon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "InitState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/openmediation/sdk/mobileads/AppLovinSingleTon$InitState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/openmediation/sdk/mobileads/AppLovinSingleTon$InitState;

.field public static final enum INIT_PENDING:Lcom/openmediation/sdk/mobileads/AppLovinSingleTon$InitState;

.field public static final enum INIT_SUCCESS:Lcom/openmediation/sdk/mobileads/AppLovinSingleTon$InitState;

.field public static final enum NOT_INIT:Lcom/openmediation/sdk/mobileads/AppLovinSingleTon$InitState;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 90
    new-instance v0, Lcom/openmediation/sdk/mobileads/AppLovinSingleTon$InitState;

    const-string v1, "NOT_INIT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/openmediation/sdk/mobileads/AppLovinSingleTon$InitState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/openmediation/sdk/mobileads/AppLovinSingleTon$InitState;->NOT_INIT:Lcom/openmediation/sdk/mobileads/AppLovinSingleTon$InitState;

    .line 91
    new-instance v1, Lcom/openmediation/sdk/mobileads/AppLovinSingleTon$InitState;

    const-string v3, "INIT_PENDING"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/openmediation/sdk/mobileads/AppLovinSingleTon$InitState;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/openmediation/sdk/mobileads/AppLovinSingleTon$InitState;->INIT_PENDING:Lcom/openmediation/sdk/mobileads/AppLovinSingleTon$InitState;

    .line 92
    new-instance v3, Lcom/openmediation/sdk/mobileads/AppLovinSingleTon$InitState;

    const-string v5, "INIT_SUCCESS"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/openmediation/sdk/mobileads/AppLovinSingleTon$InitState;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/openmediation/sdk/mobileads/AppLovinSingleTon$InitState;->INIT_SUCCESS:Lcom/openmediation/sdk/mobileads/AppLovinSingleTon$InitState;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/openmediation/sdk/mobileads/AppLovinSingleTon$InitState;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 89
    sput-object v5, Lcom/openmediation/sdk/mobileads/AppLovinSingleTon$InitState;->$VALUES:[Lcom/openmediation/sdk/mobileads/AppLovinSingleTon$InitState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 89
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/openmediation/sdk/mobileads/AppLovinSingleTon$InitState;
    .locals 1

    .line 89
    const-class v0, Lcom/openmediation/sdk/mobileads/AppLovinSingleTon$InitState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/openmediation/sdk/mobileads/AppLovinSingleTon$InitState;

    return-object p0
.end method

.method public static values()[Lcom/openmediation/sdk/mobileads/AppLovinSingleTon$InitState;
    .locals 1

    .line 89
    sget-object v0, Lcom/openmediation/sdk/mobileads/AppLovinSingleTon$InitState;->$VALUES:[Lcom/openmediation/sdk/mobileads/AppLovinSingleTon$InitState;

    invoke-virtual {v0}, [Lcom/openmediation/sdk/mobileads/AppLovinSingleTon$InitState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/openmediation/sdk/mobileads/AppLovinSingleTon$InitState;

    return-object v0
.end method
