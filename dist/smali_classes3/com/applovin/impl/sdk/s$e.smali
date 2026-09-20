.class Lcom/applovin/impl/sdk/s$e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/impl/sdk/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "e"
.end annotation


# instance fields
.field final synthetic a:Lcom/applovin/impl/sdk/s;

.field private final b:Ljava/lang/Object;

.field private final c:J


# direct methods
.method private constructor <init>(Lcom/applovin/impl/sdk/s;Ljava/lang/Object;J)V
    .locals 0

    .line 1389
    iput-object p1, p0, Lcom/applovin/impl/sdk/s$e;->a:Lcom/applovin/impl/sdk/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1390
    iput-object p2, p0, Lcom/applovin/impl/sdk/s$e;->b:Ljava/lang/Object;

    .line 1391
    invoke-direct {p0}, Lcom/applovin/impl/sdk/s$e;->b()J

    move-result-wide p1

    add-long/2addr p1, p3

    iput-wide p1, p0, Lcom/applovin/impl/sdk/s$e;->c:J

    return-void
.end method

.method synthetic constructor <init>(Lcom/applovin/impl/sdk/s;Ljava/lang/Object;JLcom/applovin/impl/sdk/s$1;)V
    .locals 0

    .line 1383
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/applovin/impl/sdk/s$e;-><init>(Lcom/applovin/impl/sdk/s;Ljava/lang/Object;J)V

    return-void
.end method

.method private a()Z
    .locals 6

    .line 1396
    iget-object v0, p0, Lcom/applovin/impl/sdk/s$e;->a:Lcom/applovin/impl/sdk/s;

    invoke-static {v0}, Lcom/applovin/impl/sdk/s;->e(Lcom/applovin/impl/sdk/s;)Lcom/applovin/impl/sdk/p;

    move-result-object v0

    sget-object v1, Lcom/applovin/impl/sdk/c/b;->dF:Lcom/applovin/impl/sdk/c/b;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/p;->a(Lcom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 1401
    :cond_0
    iget-wide v2, p0, Lcom/applovin/impl/sdk/s$e;->c:J

    invoke-direct {p0}, Lcom/applovin/impl/sdk/s$e;->b()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-gtz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method static synthetic a(Lcom/applovin/impl/sdk/s$e;)Z
    .locals 0

    .line 1383
    invoke-direct {p0}, Lcom/applovin/impl/sdk/s$e;->a()Z

    move-result p0

    return p0
.end method

.method private b()J
    .locals 4

    .line 1406
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    return-wide v0
.end method

.method static synthetic b(Lcom/applovin/impl/sdk/s$e;)Ljava/lang/Object;
    .locals 0

    .line 1383
    iget-object p0, p0, Lcom/applovin/impl/sdk/s$e;->b:Ljava/lang/Object;

    return-object p0
.end method
