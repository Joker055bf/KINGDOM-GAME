.class public final enum Lcom/applovin/impl/sdk/t$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/impl/sdk/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/applovin/impl/sdk/t$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/applovin/impl/sdk/t$a;

.field public static final enum b:Lcom/applovin/impl/sdk/t$a;

.field private static final synthetic d:[Lcom/applovin/impl/sdk/t$a;


# instance fields
.field private final c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 30
    new-instance v0, Lcom/applovin/impl/sdk/t$a;

    const-string v1, "black_view"

    const-string v2, "BLACK_VIEW"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/applovin/impl/sdk/t$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/applovin/impl/sdk/t$a;->a:Lcom/applovin/impl/sdk/t$a;

    .line 31
    new-instance v1, Lcom/applovin/impl/sdk/t$a;

    const-string v2, "crash"

    const-string v4, "CRASH"

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5, v2}, Lcom/applovin/impl/sdk/t$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/applovin/impl/sdk/t$a;->b:Lcom/applovin/impl/sdk/t$a;

    const/4 v2, 0x2

    new-array v2, v2, [Lcom/applovin/impl/sdk/t$a;

    aput-object v0, v2, v3

    aput-object v1, v2, v5

    .line 27
    sput-object v2, Lcom/applovin/impl/sdk/t$a;->d:[Lcom/applovin/impl/sdk/t$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 27
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/applovin/impl/sdk/t$a;->c:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/applovin/impl/sdk/t$a;
    .locals 1

    .line 27
    const-class v0, Lcom/applovin/impl/sdk/t$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/applovin/impl/sdk/t$a;

    return-object p0
.end method

.method public static values()[Lcom/applovin/impl/sdk/t$a;
    .locals 1

    .line 27
    sget-object v0, Lcom/applovin/impl/sdk/t$a;->d:[Lcom/applovin/impl/sdk/t$a;

    invoke-virtual {v0}, [Lcom/applovin/impl/sdk/t$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/applovin/impl/sdk/t$a;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/applovin/impl/sdk/t$a;->c:Ljava/lang/String;

    return-object v0
.end method
