.class public final enum Lcom/chartboost/sdk/impl/g0;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chartboost/sdk/impl/g0$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/chartboost/sdk/impl/g0;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u0008\n\u0002\u0008\u0011\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\tB\u0011\u0008\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0007\u0010\u0008R\u0017\u0010\u0003\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006j\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\rj\u0002\u0008\u000ej\u0002\u0008\u000fj\u0002\u0008\u0010j\u0002\u0008\u0011j\u0002\u0008\u0012\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/chartboost/sdk/impl/g0;",
        "",
        "",
        "value",
        "I",
        "b",
        "()I",
        "<init>",
        "(Ljava/lang/String;II)V",
        "a",
        "PERSPECTIVE_ROTATE",
        "BOUNCE",
        "PERSPECTIVE_ZOOM",
        "SLIDE_FROM_TOP",
        "SLIDE_FROM_BOTTOM",
        "FADE",
        "NONE",
        "SLIDE_FROM_LEFT",
        "SLIDE_FROM_RIGHT",
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
.field public static final b:Lcom/chartboost/sdk/impl/g0$a;

.field public static final enum c:Lcom/chartboost/sdk/impl/g0;

.field public static final enum d:Lcom/chartboost/sdk/impl/g0;

.field public static final enum e:Lcom/chartboost/sdk/impl/g0;

.field public static final enum f:Lcom/chartboost/sdk/impl/g0;

.field public static final enum g:Lcom/chartboost/sdk/impl/g0;

.field public static final enum h:Lcom/chartboost/sdk/impl/g0;

.field public static final enum i:Lcom/chartboost/sdk/impl/g0;

.field public static final enum j:Lcom/chartboost/sdk/impl/g0;

.field public static final enum k:Lcom/chartboost/sdk/impl/g0;

.field public static final synthetic l:[Lcom/chartboost/sdk/impl/g0;


# instance fields
.field public final a:I


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/chartboost/sdk/impl/g0;

    const-string v1, "PERSPECTIVE_ROTATE"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/chartboost/sdk/impl/g0;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/chartboost/sdk/impl/g0;->c:Lcom/chartboost/sdk/impl/g0;

    .line 2
    new-instance v0, Lcom/chartboost/sdk/impl/g0;

    const-string v1, "BOUNCE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v3, v2}, Lcom/chartboost/sdk/impl/g0;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/chartboost/sdk/impl/g0;->d:Lcom/chartboost/sdk/impl/g0;

    .line 3
    new-instance v0, Lcom/chartboost/sdk/impl/g0;

    const-string v1, "PERSPECTIVE_ZOOM"

    const/4 v3, 0x3

    invoke-direct {v0, v1, v2, v3}, Lcom/chartboost/sdk/impl/g0;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/chartboost/sdk/impl/g0;->e:Lcom/chartboost/sdk/impl/g0;

    .line 4
    new-instance v0, Lcom/chartboost/sdk/impl/g0;

    const-string v1, "SLIDE_FROM_TOP"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v3, v2}, Lcom/chartboost/sdk/impl/g0;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/chartboost/sdk/impl/g0;->f:Lcom/chartboost/sdk/impl/g0;

    .line 5
    new-instance v0, Lcom/chartboost/sdk/impl/g0;

    const-string v1, "SLIDE_FROM_BOTTOM"

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/chartboost/sdk/impl/g0;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/chartboost/sdk/impl/g0;->g:Lcom/chartboost/sdk/impl/g0;

    .line 6
    new-instance v0, Lcom/chartboost/sdk/impl/g0;

    const-string v1, "FADE"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v3, v2}, Lcom/chartboost/sdk/impl/g0;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/chartboost/sdk/impl/g0;->h:Lcom/chartboost/sdk/impl/g0;

    .line 7
    new-instance v0, Lcom/chartboost/sdk/impl/g0;

    const-string v1, "NONE"

    const/4 v3, 0x7

    invoke-direct {v0, v1, v2, v3}, Lcom/chartboost/sdk/impl/g0;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/chartboost/sdk/impl/g0;->i:Lcom/chartboost/sdk/impl/g0;

    .line 8
    new-instance v0, Lcom/chartboost/sdk/impl/g0;

    const-string v1, "SLIDE_FROM_LEFT"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v3, v2}, Lcom/chartboost/sdk/impl/g0;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/chartboost/sdk/impl/g0;->j:Lcom/chartboost/sdk/impl/g0;

    .line 9
    new-instance v0, Lcom/chartboost/sdk/impl/g0;

    const-string v1, "SLIDE_FROM_RIGHT"

    const/16 v3, 0x9

    invoke-direct {v0, v1, v2, v3}, Lcom/chartboost/sdk/impl/g0;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/chartboost/sdk/impl/g0;->k:Lcom/chartboost/sdk/impl/g0;

    invoke-static {}, Lcom/chartboost/sdk/impl/g0;->a()[Lcom/chartboost/sdk/impl/g0;

    move-result-object v0

    sput-object v0, Lcom/chartboost/sdk/impl/g0;->l:[Lcom/chartboost/sdk/impl/g0;

    new-instance v0, Lcom/chartboost/sdk/impl/g0$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/chartboost/sdk/impl/g0$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/chartboost/sdk/impl/g0;->b:Lcom/chartboost/sdk/impl/g0$a;

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

    iput p3, p0, Lcom/chartboost/sdk/impl/g0;->a:I

    return-void
.end method

.method public static final synthetic a()[Lcom/chartboost/sdk/impl/g0;
    .locals 3

    const/16 v0, 0x9

    new-array v0, v0, [Lcom/chartboost/sdk/impl/g0;

    sget-object v1, Lcom/chartboost/sdk/impl/g0;->c:Lcom/chartboost/sdk/impl/g0;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/chartboost/sdk/impl/g0;->d:Lcom/chartboost/sdk/impl/g0;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/chartboost/sdk/impl/g0;->e:Lcom/chartboost/sdk/impl/g0;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/chartboost/sdk/impl/g0;->f:Lcom/chartboost/sdk/impl/g0;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/chartboost/sdk/impl/g0;->g:Lcom/chartboost/sdk/impl/g0;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/chartboost/sdk/impl/g0;->h:Lcom/chartboost/sdk/impl/g0;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/chartboost/sdk/impl/g0;->i:Lcom/chartboost/sdk/impl/g0;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/chartboost/sdk/impl/g0;->j:Lcom/chartboost/sdk/impl/g0;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lcom/chartboost/sdk/impl/g0;->k:Lcom/chartboost/sdk/impl/g0;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/chartboost/sdk/impl/g0;
    .locals 1

    const-class v0, Lcom/chartboost/sdk/impl/g0;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/chartboost/sdk/impl/g0;

    return-object p0
.end method

.method public static values()[Lcom/chartboost/sdk/impl/g0;
    .locals 1

    sget-object v0, Lcom/chartboost/sdk/impl/g0;->l:[Lcom/chartboost/sdk/impl/g0;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/chartboost/sdk/impl/g0;

    return-object v0
.end method


# virtual methods
.method public final b()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/chartboost/sdk/impl/g0;->a:I

    return v0
.end method
