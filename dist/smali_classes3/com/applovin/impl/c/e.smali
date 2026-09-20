.class public Lcom/applovin/impl/c/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/applovin/impl/sdk/utils/t;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/applovin/impl/sdk/p;

.field private final d:Lorg/json/JSONObject;

.field private final e:Lorg/json/JSONObject;

.field private final f:Lcom/applovin/impl/sdk/ad/b;

.field private final g:J


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string/jumbo v0, "video/3gpp"

    const-string/jumbo v1, "video/x-matroska"

    const-string/jumbo v2, "video/mp4"

    const-string/jumbo v3, "video/webm"

    .line 33
    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/applovin/impl/c/e;->c:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;Lorg/json/JSONObject;Lcom/applovin/impl/sdk/ad/b;Lcom/applovin/impl/sdk/p;)V
    .locals 0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p4, p0, Lcom/applovin/impl/c/e;->b:Lcom/applovin/impl/sdk/p;

    .line 64
    iput-object p1, p0, Lcom/applovin/impl/c/e;->d:Lorg/json/JSONObject;

    .line 65
    iput-object p2, p0, Lcom/applovin/impl/c/e;->e:Lorg/json/JSONObject;

    .line 66
    iput-object p3, p0, Lcom/applovin/impl/c/e;->f:Lcom/applovin/impl/sdk/ad/b;

    .line 67
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/applovin/impl/c/e;->a:Ljava/util/List;

    .line 68
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/applovin/impl/c/e;->g:J

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/applovin/impl/c/e;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/applovin/impl/sdk/utils/t;",
            ">;"
        }
    .end annotation

    .line 84
    iget-object v0, p0, Lcom/applovin/impl/c/e;->a:Ljava/util/List;

    return-object v0
.end method

.method public c()Lorg/json/JSONObject;
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/applovin/impl/c/e;->d:Lorg/json/JSONObject;

    return-object v0
.end method

.method public d()Lorg/json/JSONObject;
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/applovin/impl/c/e;->e:Lorg/json/JSONObject;

    return-object v0
.end method

.method public e()Lcom/applovin/impl/sdk/ad/b;
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/applovin/impl/c/e;->f:Lcom/applovin/impl/sdk/ad/b;

    return-object v0
.end method

.method public f()J
    .locals 2

    .line 104
    iget-wide v0, p0, Lcom/applovin/impl/c/e;->g:J

    return-wide v0
.end method

.method public g()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 121
    iget-object v0, p0, Lcom/applovin/impl/c/e;->d:Lorg/json/JSONObject;

    const-string/jumbo v1, "vast_preferred_video_types"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/applovin/impl/sdk/utils/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 122
    invoke-static {v0}, Lcom/applovin/impl/sdk/utils/CollectionUtils;->explode(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 124
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/applovin/impl/c/e;->c:Ljava/util/List;

    :goto_0
    return-object v0
.end method

.method public h()I
    .locals 1

    .line 132
    iget-object v0, p0, Lcom/applovin/impl/c/e;->d:Lorg/json/JSONObject;

    invoke-static {v0}, Lcom/applovin/impl/sdk/utils/Utils;->getVideoCompletionPercent(Lorg/json/JSONObject;)I

    move-result v0

    return v0
.end method
