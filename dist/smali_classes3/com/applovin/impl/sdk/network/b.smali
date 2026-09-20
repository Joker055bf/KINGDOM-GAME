.class public Lcom/applovin/impl/sdk/network/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/applovin/impl/sdk/network/b$a;,
        Lcom/applovin/impl/sdk/network/b$c;,
        Lcom/applovin/impl/sdk/network/b$b;
    }
.end annotation


# static fields
.field private static final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final b:Lcom/applovin/impl/sdk/p;

.field private final c:Lcom/applovin/impl/sdk/y;

.field private final d:Lcom/applovin/impl/sdk/network/e;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "4.0/ad"

    const-string v1, "1.0/mediate"

    const-string v2, "5.0/i"

    .line 47
    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/applovin/impl/sdk/network/b;->a:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lcom/applovin/impl/sdk/p;)V
    .locals 1

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lcom/applovin/impl/sdk/network/b;->b:Lcom/applovin/impl/sdk/p;

    .line 61
    invoke-virtual {p1}, Lcom/applovin/impl/sdk/p;->L()Lcom/applovin/impl/sdk/y;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/impl/sdk/network/b;->c:Lcom/applovin/impl/sdk/y;

    .line 63
    new-instance v0, Lcom/applovin/impl/sdk/network/e;

    invoke-direct {v0, p1}, Lcom/applovin/impl/sdk/network/e;-><init>(Lcom/applovin/impl/sdk/p;)V

    iput-object v0, p0, Lcom/applovin/impl/sdk/network/b;->d:Lcom/applovin/impl/sdk/network/e;

    .line 64
    invoke-virtual {v0}, Lcom/applovin/impl/sdk/network/e;->a()V

    return-void
.end method

.method static synthetic a(Lcom/applovin/impl/sdk/network/b;Ljava/lang/Throwable;)I
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lcom/applovin/impl/sdk/network/b;->a(Ljava/lang/Throwable;)I

    move-result p0

    return p0
.end method

.method private a(Ljava/lang/Throwable;)I
    .locals 1

    .line 478
    instance-of v0, p1, Ljava/net/UnknownHostException;

    if-eqz v0, :cond_0

    const/16 p1, -0x3f1

    return p1

    .line 482
    :cond_0
    instance-of v0, p1, Ljava/net/SocketTimeoutException;

    if-eqz v0, :cond_1

    const/16 p1, -0x3e9

    return p1

    .line 486
    :cond_1
    instance-of v0, p1, Ljava/io/IOException;

    if-eqz v0, :cond_2

    const/16 p1, -0x64

    return p1

    .line 490
    :cond_2
    instance-of p1, p1, Lorg/json/JSONException;

    if-eqz p1, :cond_3

    const/16 p1, -0x68

    return p1

    :cond_3
    const/4 p1, -0x1

    return p1
.end method

.method static synthetic a(Lcom/applovin/impl/sdk/network/b;)Lcom/applovin/impl/sdk/p;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/applovin/impl/sdk/network/b;->b:Lcom/applovin/impl/sdk/p;

    return-object p0
.end method

.method static synthetic a(Lcom/applovin/impl/sdk/network/b;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Lorg/xml/sax/SAXException;,
            Ljava/lang/ClassCastException;
        }
    .end annotation

    .line 41
    invoke-direct {p0, p1, p2}, Lcom/applovin/impl/sdk/network/b;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Lorg/xml/sax/SAXException;,
            Ljava/lang/ClassCastException;
        }
    .end annotation

    if-nez p2, :cond_0

    return-object p1

    :cond_0
    if-eqz p1, :cond_5

    .line 444
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_1

    goto :goto_0

    .line 447
    :cond_1
    instance-of v0, p2, Lorg/json/JSONObject;

    if-eqz v0, :cond_2

    .line 450
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    return-object p2

    .line 454
    :cond_2
    instance-of v0, p2, Lcom/applovin/impl/sdk/utils/t;

    if-eqz v0, :cond_3

    .line 457
    iget-object p2, p0, Lcom/applovin/impl/sdk/network/b;->b:Lcom/applovin/impl/sdk/p;

    invoke-static {p1, p2}, Lcom/applovin/impl/sdk/utils/u;->a(Ljava/lang/String;Lcom/applovin/impl/sdk/p;)Lcom/applovin/impl/sdk/utils/t;

    move-result-object p1

    return-object p1

    .line 461
    :cond_3
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_4

    return-object p1

    .line 469
    :cond_4
    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/applovin/impl/sdk/network/b;->c:Lcom/applovin/impl/sdk/y;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Failed to process response of type \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ConnectionManager"

    invoke-virtual {p1, v1, v0}, Lcom/applovin/impl/sdk/y;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_0
    return-object p2
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 520
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "#"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/applovin/impl/sdk/utils/StringUtils;->getHostAndPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "\""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method static synthetic a(Lcom/applovin/impl/sdk/network/b;Ljava/lang/String;Ljava/lang/String;IJ)V
    .locals 0

    .line 41
    invoke-direct/range {p0 .. p5}, Lcom/applovin/impl/sdk/network/b;->a(Ljava/lang/String;Ljava/lang/String;IJ)V

    return-void
.end method

.method static synthetic a(Lcom/applovin/impl/sdk/network/b;Ljava/lang/String;Ljava/lang/String;IJLjava/lang/Throwable;)V
    .locals 0

    .line 41
    invoke-direct/range {p0 .. p6}, Lcom/applovin/impl/sdk/network/b;->a(Ljava/lang/String;Ljava/lang/String;IJLjava/lang/Throwable;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;IJ)V
    .locals 3

    .line 502
    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/sdk/network/b;->c:Lcom/applovin/impl/sdk/y;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Successful "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " returned "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p3, " in "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 504
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sub-long/2addr v1, p4

    long-to-float p3, v1

    const/high16 p4, 0x447a0000    # 1000.0f

    div-float/2addr p3, p4

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p3, " s over "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p3, p0, Lcom/applovin/impl/sdk/network/b;->b:Lcom/applovin/impl/sdk/p;

    .line 505
    invoke-static {p3}, Lcom/applovin/impl/sdk/utils/i;->f(Lcom/applovin/impl/sdk/p;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p3, " to "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 506
    invoke-direct {p0, p2}, Lcom/applovin/impl/sdk/network/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ConnectionManager"

    .line 502
    invoke-virtual {v0, p2, p1}, Lcom/applovin/impl/sdk/y;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;IJLjava/lang/Throwable;)V
    .locals 3

    .line 511
    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/sdk/network/b;->c:Lcom/applovin/impl/sdk/y;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " returned "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p3, " in "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 513
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sub-long/2addr v1, p4

    long-to-float p3, v1

    const/high16 p4, 0x447a0000    # 1000.0f

    div-float/2addr p3, p4

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p3, " s over "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p3, p0, Lcom/applovin/impl/sdk/network/b;->b:Lcom/applovin/impl/sdk/p;

    .line 514
    invoke-static {p3}, Lcom/applovin/impl/sdk/utils/i;->f(Lcom/applovin/impl/sdk/p;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p3, " to "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 515
    invoke-direct {p0, p2}, Lcom/applovin/impl/sdk/network/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ConnectionManager"

    .line 511
    invoke-virtual {v0, p2, p1, p6}, Lcom/applovin/impl/sdk/y;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/applovin/impl/sdk/network/b;)Lcom/applovin/impl/sdk/y;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/applovin/impl/sdk/network/b;->c:Lcom/applovin/impl/sdk/y;

    return-object p0
.end method


# virtual methods
.method public a(Lcom/applovin/impl/sdk/network/c;Lcom/applovin/impl/sdk/network/b$a;Lcom/applovin/impl/sdk/network/b$c;)V
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/applovin/impl/sdk/network/c<",
            "TT;>;",
            "Lcom/applovin/impl/sdk/network/b$a;",
            "Lcom/applovin/impl/sdk/network/b$c<",
            "TT;>;)V"
        }
    .end annotation

    move-object/from16 v13, p0

    move-object/from16 v14, p3

    const-string v1, "Failed to gzip POST body for request "

    const-string v2, "Request to "

    const-string v0, "Sending "

    if-eqz p1, :cond_15

    .line 73
    invoke-virtual/range {p1 .. p1}, Lcom/applovin/impl/sdk/network/c;->a()Ljava/lang/String;

    move-result-object v3

    .line 74
    invoke-virtual/range {p1 .. p1}, Lcom/applovin/impl/sdk/network/c;->b()Ljava/lang/String;

    move-result-object v15

    if-eqz v3, :cond_14

    if-eqz v15, :cond_13

    if-eqz v14, :cond_12

    .line 81
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, "http"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    const/4 v12, 0x0

    const-string v5, "ConnectionManager"

    if-nez v4, :cond_0

    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Requested postback submission to non HTTP endpoint "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; skipping..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 84
    invoke-static {v5, v0}, Lcom/applovin/impl/sdk/y;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, -0x384

    .line 86
    invoke-interface {v14, v1, v0, v12}, Lcom/applovin/impl/sdk/network/b$c;->a(ILjava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 91
    :cond_0
    iget-object v4, v13, Lcom/applovin/impl/sdk/network/b;->b:Lcom/applovin/impl/sdk/p;

    sget-object v6, Lcom/applovin/impl/sdk/c/b;->dg:Lcom/applovin/impl/sdk/c/b;

    invoke-virtual {v4, v6}, Lcom/applovin/impl/sdk/p;->a(Lcom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "https://"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 93
    iget-object v6, v13, Lcom/applovin/impl/sdk/network/b;->b:Lcom/applovin/impl/sdk/p;

    invoke-virtual {v6}, Lcom/applovin/impl/sdk/p;->L()Lcom/applovin/impl/sdk/y;

    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, v13, Lcom/applovin/impl/sdk/network/b;->b:Lcom/applovin/impl/sdk/p;

    invoke-virtual {v6}, Lcom/applovin/impl/sdk/p;->L()Lcom/applovin/impl/sdk/y;

    move-result-object v6

    const-string v7, "Plaintext HTTP operation requested; upgrading to HTTPS due to universal SSL setting..."

    invoke-virtual {v6, v5, v7}, Lcom/applovin/impl/sdk/y;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const-string v6, "http://"

    .line 94
    invoke-virtual {v3, v6, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    :cond_2
    const/4 v4, 0x2

    .line 98
    invoke-static {v4}, Lcom/applovin/impl/sdk/utils/CollectionUtils;->map(I)Ljava/util/Map;

    move-result-object v4

    .line 100
    invoke-virtual/range {p1 .. p1}, Lcom/applovin/impl/sdk/network/c;->n()Z

    move-result v7

    .line 101
    iget-object v6, v13, Lcom/applovin/impl/sdk/network/b;->b:Lcom/applovin/impl/sdk/p;

    invoke-static {v6}, Lcom/applovin/impl/sdk/utils/Utils;->getServerAdjustedUnixTimestampMillis(Lcom/applovin/impl/sdk/p;)J

    move-result-wide v8

    .line 104
    invoke-virtual/range {p1 .. p1}, Lcom/applovin/impl/sdk/network/c;->c()Ljava/util/Map;

    move-result-object v6

    if-eqz v6, :cond_3

    invoke-virtual/range {p1 .. p1}, Lcom/applovin/impl/sdk/network/c;->c()Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Map;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_4

    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/applovin/impl/sdk/network/c;->i()I

    move-result v6

    if-ltz v6, :cond_8

    .line 106
    :cond_4
    invoke-virtual/range {p1 .. p1}, Lcom/applovin/impl/sdk/network/c;->c()Ljava/util/Map;

    move-result-object v6

    .line 107
    iget-object v10, v13, Lcom/applovin/impl/sdk/network/b;->b:Lcom/applovin/impl/sdk/p;

    sget-object v11, Lcom/applovin/impl/sdk/c/b;->dv:Lcom/applovin/impl/sdk/c/b;

    invoke-virtual {v10, v11}, Lcom/applovin/impl/sdk/p;->a(Lcom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Boolean;

    if-eqz v6, :cond_5

    .line 110
    invoke-virtual/range {p1 .. p1}, Lcom/applovin/impl/sdk/network/c;->i()I

    move-result v11

    if-ltz v11, :cond_5

    .line 112
    invoke-virtual/range {p1 .. p1}, Lcom/applovin/impl/sdk/network/c;->i()I

    move-result v11

    if-lez v11, :cond_5

    .line 114
    invoke-virtual/range {p1 .. p1}, Lcom/applovin/impl/sdk/network/c;->i()I

    move-result v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    const-string v12, "current_retry_attempt"

    invoke-interface {v6, v12, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    if-eqz v7, :cond_7

    .line 120
    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    invoke-static {v6, v10}, Lcom/applovin/impl/sdk/utils/Utils;->encodeUrlMap(Ljava/util/Map;Z)Ljava/lang/String;

    move-result-object v6

    .line 121
    iget-object v10, v13, Lcom/applovin/impl/sdk/network/b;->b:Lcom/applovin/impl/sdk/p;

    invoke-virtual {v10}, Lcom/applovin/impl/sdk/p;->B()Ljava/lang/String;

    move-result-object v10

    invoke-static {v6, v10, v8, v9}, Lcom/applovin/impl/sdk/utils/n;->a(Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v10

    .line 123
    invoke-static {v6}, Lcom/applovin/impl/sdk/utils/StringUtils;->isValidString(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_6

    if-nez v10, :cond_6

    const-string v11, "query"

    .line 125
    invoke-interface {v4, v11, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    const-string v6, "p"

    .line 128
    invoke-static {v3, v6, v10}, Lcom/applovin/impl/sdk/utils/StringUtils;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 132
    :cond_7
    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    invoke-static {v3, v6, v10}, Lcom/applovin/impl/sdk/utils/StringUtils;->appendQueryParameters(Ljava/lang/String;Ljava/util/Map;Z)Ljava/lang/String;

    move-result-object v3

    :cond_8
    :goto_0
    move-object v12, v3

    .line 136
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    .line 140
    :try_start_0
    invoke-static {v12}, Lcom/applovin/impl/sdk/utils/StringUtils;->getHostAndPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v6, Lcom/applovin/impl/sdk/network/b;->a:Ljava/util/List;

    invoke-static {v3, v6}, Lcom/applovin/impl/sdk/utils/StringUtils;->endsWith(Ljava/lang/String;Ljava/util/List;)Ljava/lang/Boolean;

    move-result-object v3

    .line 142
    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result v6

    if-eqz v6, :cond_a

    iget-object v6, v13, Lcom/applovin/impl/sdk/network/b;->c:Lcom/applovin/impl/sdk/y;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v10, " request to id=#"

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v12}, Ljava/lang/String;->hashCode()I

    move-result v10

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v10, " \""

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_9

    move-object v3, v12

    goto :goto_1

    :cond_9
    invoke-static {v12}, Lcom/applovin/impl/sdk/utils/StringUtils;->getHostAndPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :goto_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\"..."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v5, v0}, Lcom/applovin/impl/sdk/y;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    :cond_a
    new-instance v0, Lcom/applovin/impl/sdk/network/e$b$a;

    invoke-direct {v0}, Lcom/applovin/impl/sdk/network/e$b$a;-><init>()V

    .line 145
    invoke-virtual {v0, v12}, Lcom/applovin/impl/sdk/network/e$b$a;->a(Ljava/lang/String;)Lcom/applovin/impl/sdk/network/e$b$a;

    move-result-object v0

    .line 146
    invoke-virtual {v0, v15}, Lcom/applovin/impl/sdk/network/e$b$a;->b(Ljava/lang/String;)Lcom/applovin/impl/sdk/network/e$b$a;

    move-result-object v0

    .line 147
    invoke-virtual/range {p1 .. p1}, Lcom/applovin/impl/sdk/network/c;->d()Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/applovin/impl/sdk/network/e$b$a;->a(Ljava/util/Map;)Lcom/applovin/impl/sdk/network/e$b$a;

    move-result-object v0

    .line 148
    invoke-virtual/range {p1 .. p1}, Lcom/applovin/impl/sdk/network/c;->j()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/applovin/impl/sdk/network/e$b$a;->a(I)Lcom/applovin/impl/sdk/network/e$b$a;

    move-result-object v11

    .line 151
    invoke-virtual/range {p1 .. p1}, Lcom/applovin/impl/sdk/network/c;->e()Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_10

    if-eqz v7, :cond_b

    .line 157
    invoke-virtual/range {p1 .. p1}, Lcom/applovin/impl/sdk/network/c;->e()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v3, v13, Lcom/applovin/impl/sdk/network/b;->b:Lcom/applovin/impl/sdk/p;

    invoke-virtual {v3}, Lcom/applovin/impl/sdk/p;->B()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v8, v9}, Lcom/applovin/impl/sdk/utils/n;->a(Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_c

    const-string v3, "body"

    .line 160
    invoke-virtual/range {p1 .. p1}, Lcom/applovin/impl/sdk/network/c;->e()Lorg/json/JSONObject;

    move-result-object v6

    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 165
    :cond_b
    invoke-virtual/range {p1 .. p1}, Lcom/applovin/impl/sdk/network/c;->e()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_c
    :goto_2
    move-object v3, v0

    .line 170
    invoke-virtual/range {p1 .. p1}, Lcom/applovin/impl/sdk/network/c;->o()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const-string v6, "UTF-8"

    if-eqz v0, :cond_d

    if-eqz v3, :cond_d

    :try_start_1
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    iget-object v8, v13, Lcom/applovin/impl/sdk/network/b;->b:Lcom/applovin/impl/sdk/p;

    sget-object v9, Lcom/applovin/impl/sdk/c/b;->fe:Lcom/applovin/impl/sdk/c/b;

    invoke-virtual {v8, v9}, Lcom/applovin/impl/sdk/p;->a(Lcom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-le v0, v8, :cond_d

    .line 174
    :try_start_2
    invoke-static {v6}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/applovin/impl/sdk/utils/Utils;->gzip([B)[B

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v0

    .line 178
    :try_start_3
    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result v8

    if-eqz v8, :cond_d

    iget-object v8, v13, Lcom/applovin/impl/sdk/network/b;->c:Lcom/applovin/impl/sdk/y;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {v13, v12}, Lcom/applovin/impl/sdk/network/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v5, v1, v0}, Lcom/applovin/impl/sdk/y;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_d
    const/4 v0, 0x0

    .line 182
    :goto_3
    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result v1

    if-eqz v1, :cond_e

    iget-object v1, v13, Lcom/applovin/impl/sdk/network/b;->c:Lcom/applovin/impl/sdk/y;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {v13, v12}, Lcom/applovin/impl/sdk/network/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v8, " is "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v5, v2}, Lcom/applovin/impl/sdk/y;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_e
    const-string v1, "Content-Type"

    const-string v2, "application/json; charset=utf-8"

    .line 185
    invoke-virtual {v11, v1, v2}, Lcom/applovin/impl/sdk/network/e$b$a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/applovin/impl/sdk/network/e$b$a;

    .line 187
    invoke-virtual/range {p1 .. p1}, Lcom/applovin/impl/sdk/network/c;->o()Z

    move-result v1

    if-eqz v1, :cond_f

    if-eqz v0, :cond_f

    const-string v1, "Content-Encoding"

    const-string v2, "gzip"

    .line 189
    invoke-virtual {v11, v1, v2}, Lcom/applovin/impl/sdk/network/e$b$a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/applovin/impl/sdk/network/e$b$a;

    .line 190
    invoke-virtual {v11, v0}, Lcom/applovin/impl/sdk/network/e$b$a;->a([B)Lcom/applovin/impl/sdk/network/e$b$a;

    goto :goto_4

    :cond_f
    if-eqz v3, :cond_10

    .line 194
    invoke-virtual {v3, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v11, v0}, Lcom/applovin/impl/sdk/network/e$b$a;->a([B)Lcom/applovin/impl/sdk/network/e$b$a;

    .line 199
    :cond_10
    :goto_4
    invoke-interface {v4}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_11

    const-string v0, "request"

    .line 201
    invoke-static {v12}, Lcom/applovin/impl/sdk/utils/StringUtils;->getHostAndPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    iget-object v0, v13, Lcom/applovin/impl/sdk/network/b;->b:Lcom/applovin/impl/sdk/p;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/p;->G()Lcom/applovin/impl/sdk/EventServiceImpl;

    move-result-object v0

    const-string v1, "ref"

    invoke-virtual {v0, v1, v4}, Lcom/applovin/impl/sdk/EventServiceImpl;->trackEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 206
    :cond_11
    iget-object v0, v13, Lcom/applovin/impl/sdk/network/b;->d:Lcom/applovin/impl/sdk/network/e;

    new-instance v10, Lcom/applovin/impl/sdk/network/b$b;

    .line 212
    invoke-virtual/range {p1 .. p1}, Lcom/applovin/impl/sdk/network/c;->g()Ljava/lang/Object;

    move-result-object v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    const/16 v19, 0x0

    move-object v1, v10

    move-object/from16 v2, p0

    move-object v3, v12

    move-object/from16 v4, p1

    move-object v5, v15

    move-wide/from16 v8, v17

    move-object/from16 v20, v10

    move-object/from16 v10, p2

    move-object v14, v11

    move-object/from16 v11, p3

    move-object/from16 v16, v12

    move-object/from16 v12, v19

    :try_start_4
    invoke-direct/range {v1 .. v12}, Lcom/applovin/impl/sdk/network/b$b;-><init>(Lcom/applovin/impl/sdk/network/b;Ljava/lang/String;Lcom/applovin/impl/sdk/network/c;Ljava/lang/String;Ljava/lang/Object;ZJLcom/applovin/impl/sdk/network/b$a;Lcom/applovin/impl/sdk/network/b$c;Lcom/applovin/impl/sdk/network/b$1;)V

    move-object/from16 v1, v20

    .line 208
    invoke-virtual {v14, v1}, Lcom/applovin/impl/sdk/network/e$b$a;->a(Landroidx/core/util/Consumer;)Lcom/applovin/impl/sdk/network/e$b$a;

    move-result-object v1

    iget-object v2, v13, Lcom/applovin/impl/sdk/network/b;->b:Lcom/applovin/impl/sdk/p;

    .line 218
    invoke-virtual {v2}, Lcom/applovin/impl/sdk/p;->M()Lcom/applovin/impl/sdk/e/o;

    move-result-object v2

    invoke-virtual {v2}, Lcom/applovin/impl/sdk/e/o;->b()Ljava/util/concurrent/Executor;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/applovin/impl/sdk/network/e$b$a;->a(Ljava/util/concurrent/Executor;)Lcom/applovin/impl/sdk/network/e$b$a;

    move-result-object v1

    .line 219
    invoke-virtual {v1}, Lcom/applovin/impl/sdk/network/e$b$a;->a()Lcom/applovin/impl/sdk/network/e$b;

    move-result-object v1

    .line 206
    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/network/e;->a(Lcom/applovin/impl/sdk/network/e$b;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_6

    :catchall_1
    move-exception v0

    goto :goto_5

    :catchall_2
    move-exception v0

    move-object/from16 v16, v12

    :goto_5
    const/4 v4, 0x0

    move-object/from16 v1, p0

    move-object v2, v15

    move-object/from16 v3, v16

    move-wide/from16 v5, v17

    move-object v7, v0

    .line 224
    invoke-direct/range {v1 .. v7}, Lcom/applovin/impl/sdk/network/b;->a(Ljava/lang/String;Ljava/lang/String;IJLjava/lang/Throwable;)V

    const/4 v1, 0x0

    .line 225
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v2, p3

    const/4 v3, 0x0

    invoke-interface {v2, v1, v0, v3}, Lcom/applovin/impl/sdk/network/b$c;->a(ILjava/lang/String;Ljava/lang/Object;)V

    :goto_6
    return-void

    .line 79
    :cond_12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No callback specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 78
    :cond_13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No method specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 77
    :cond_14
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No endpoint specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 71
    :cond_15
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No request specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
