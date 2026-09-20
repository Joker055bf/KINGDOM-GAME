.class public final enum Lcom/chartboost/sdk/impl/m1;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/chartboost/sdk/impl/m1;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u0008\n\u0002\u0008\u000b\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0011\u0008\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005j\u0002\u0008\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000c\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/chartboost/sdk/impl/m1;",
        "",
        "",
        "value",
        "<init>",
        "(Ljava/lang/String;II)V",
        "FORCE_DISMISS_IMPRESSION",
        "START_ACTIVITY",
        "SHOW_IMPRESSION_FOR_AD_UNIT",
        "DISMISS_IMPRESSION_IF_DISPLAYED",
        "IMPRESSION_ON_ANIMATE_IN_FINISH",
        "VC_ANIMATE_DISMISS_TRANSITION_OUT",
        "VC_REMOVE_IMPRESSION",
        "Chartboost-9.2.0_productionRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
.end annotation


# static fields
.field public static final enum b:Lcom/chartboost/sdk/impl/m1;

.field public static final enum c:Lcom/chartboost/sdk/impl/m1;

.field public static final enum d:Lcom/chartboost/sdk/impl/m1;

.field public static final enum e:Lcom/chartboost/sdk/impl/m1;

.field public static final enum f:Lcom/chartboost/sdk/impl/m1;

.field public static final enum g:Lcom/chartboost/sdk/impl/m1;

.field public static final enum h:Lcom/chartboost/sdk/impl/m1;

.field public static final synthetic i:[Lcom/chartboost/sdk/impl/m1;


# instance fields
.field public final a:I


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lcom/chartboost/sdk/impl/m1;

    const/4 v1, 0x7

    const-string v2, "FORCE_DISMISS_IMPRESSION"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/chartboost/sdk/impl/m1;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/chartboost/sdk/impl/m1;->b:Lcom/chartboost/sdk/impl/m1;

    .line 2
    new-instance v0, Lcom/chartboost/sdk/impl/m1;

    const/16 v1, 0x9

    const-string v2, "START_ACTIVITY"

    const/4 v4, 0x1

    invoke-direct {v0, v2, v4, v1}, Lcom/chartboost/sdk/impl/m1;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/chartboost/sdk/impl/m1;->c:Lcom/chartboost/sdk/impl/m1;

    .line 3
    new-instance v0, Lcom/chartboost/sdk/impl/m1;

    const-string v1, "SHOW_IMPRESSION_FOR_AD_UNIT"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v3}, Lcom/chartboost/sdk/impl/m1;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/chartboost/sdk/impl/m1;->d:Lcom/chartboost/sdk/impl/m1;

    .line 4
    new-instance v0, Lcom/chartboost/sdk/impl/m1;

    const-string v1, "DISMISS_IMPRESSION_IF_DISPLAYED"

    const/4 v3, 0x3

    invoke-direct {v0, v1, v3, v4}, Lcom/chartboost/sdk/impl/m1;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/chartboost/sdk/impl/m1;->e:Lcom/chartboost/sdk/impl/m1;

    .line 5
    new-instance v0, Lcom/chartboost/sdk/impl/m1;

    const-string v1, "IMPRESSION_ON_ANIMATE_IN_FINISH"

    const/4 v4, 0x4

    invoke-direct {v0, v1, v4, v2}, Lcom/chartboost/sdk/impl/m1;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/chartboost/sdk/impl/m1;->f:Lcom/chartboost/sdk/impl/m1;

    .line 6
    new-instance v0, Lcom/chartboost/sdk/impl/m1;

    const-string v1, "VC_ANIMATE_DISMISS_TRANSITION_OUT"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/chartboost/sdk/impl/m1;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/chartboost/sdk/impl/m1;->g:Lcom/chartboost/sdk/impl/m1;

    .line 7
    new-instance v0, Lcom/chartboost/sdk/impl/m1;

    const-string v1, "VC_REMOVE_IMPRESSION"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2, v4}, Lcom/chartboost/sdk/impl/m1;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/chartboost/sdk/impl/m1;->h:Lcom/chartboost/sdk/impl/m1;

    invoke-static {}, Lcom/chartboost/sdk/impl/m1;->a()[Lcom/chartboost/sdk/impl/m1;

    move-result-object v0

    sput-object v0, Lcom/chartboost/sdk/impl/m1;->i:[Lcom/chartboost/sdk/impl/m1;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/chartboost/sdk/impl/m1;->a:I

    return-void
.end method

.method public static final synthetic a()[Lcom/chartboost/sdk/impl/m1;
    .locals 3

    const/4 v0, 0x7

    new-array v0, v0, [Lcom/chartboost/sdk/impl/m1;

    sget-object v1, Lcom/chartboost/sdk/impl/m1;->b:Lcom/chartboost/sdk/impl/m1;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/chartboost/sdk/impl/m1;->c:Lcom/chartboost/sdk/impl/m1;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/chartboost/sdk/impl/m1;->d:Lcom/chartboost/sdk/impl/m1;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/chartboost/sdk/impl/m1;->e:Lcom/chartboost/sdk/impl/m1;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/chartboost/sdk/impl/m1;->f:Lcom/chartboost/sdk/impl/m1;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/chartboost/sdk/impl/m1;->g:Lcom/chartboost/sdk/impl/m1;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/chartboost/sdk/impl/m1;->h:Lcom/chartboost/sdk/impl/m1;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/chartboost/sdk/impl/m1;
    .locals 1

    const-class v0, Lcom/chartboost/sdk/impl/m1;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/chartboost/sdk/impl/m1;

    return-object p0
.end method

.method public static values()[Lcom/chartboost/sdk/impl/m1;
    .locals 1

    sget-object v0, Lcom/chartboost/sdk/impl/m1;->i:[Lcom/chartboost/sdk/impl/m1;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/chartboost/sdk/impl/m1;

    return-object v0
.end method
