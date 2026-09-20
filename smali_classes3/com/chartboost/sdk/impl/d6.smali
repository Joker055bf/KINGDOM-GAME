.class public final Lcom/chartboost/sdk/impl/d6;
.super Lcom/chartboost/sdk/impl/c1;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chartboost/sdk/impl/d6$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chartboost/sdk/impl/c1<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0001:\u0001\u0004BA\u0012\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u000f\u0012\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0011\u0012\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u000b\u0012\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0013\u0012\u0008\u0008\u0002\u0010\u0016\u001a\u00020\u0015\u0012\u0006\u0010\u0017\u001a\u00020\u000b\u00a2\u0006\u0004\u0008\u0018\u0010\u0019J\u0008\u0010\u0004\u001a\u00020\u0003H\u0016J\u001c\u0010\u0004\u001a\u00020\u00082\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u00022\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016J\u001c\u0010\u0004\u001a\u00020\u00082\u0008\u0010\n\u001a\u0004\u0018\u00010\t2\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\u0016J\u0018\u0010\u0004\u001a\u00020\u00082\u0006\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\rH\u0016\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/chartboost/sdk/impl/d6;",
        "Lcom/chartboost/sdk/impl/c1;",
        "",
        "Lcom/chartboost/sdk/impl/d1;",
        "a",
        "response",
        "Lcom/chartboost/sdk/impl/f1;",
        "serverResponse",
        "",
        "Lcom/chartboost/sdk/internal/Model/CBError;",
        "error",
        "",
        "uri",
        "",
        "expectedContentSize",
        "Lcom/chartboost/sdk/impl/h1;",
        "reachability",
        "Ljava/io/File;",
        "outputFile",
        "Lcom/chartboost/sdk/impl/d6$a;",
        "callback",
        "Lcom/chartboost/sdk/impl/h4;",
        "priority",
        "appId",
        "<init>",
        "(Lcom/chartboost/sdk/impl/h1;Ljava/io/File;Ljava/lang/String;Lcom/chartboost/sdk/impl/d6$a;Lcom/chartboost/sdk/impl/h4;Ljava/lang/String;)V",
        "Chartboost-9.2.0_productionRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
.end annotation


# instance fields
.field public final j:Lcom/chartboost/sdk/impl/h1;

.field public final k:Lcom/chartboost/sdk/impl/d6$a;

.field public final l:Lcom/chartboost/sdk/impl/h4;

.field public final m:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/chartboost/sdk/impl/h1;Ljava/io/File;Ljava/lang/String;Lcom/chartboost/sdk/impl/d6$a;Lcom/chartboost/sdk/impl/h4;Ljava/lang/String;)V
    .locals 1

    const-string v0, "priority"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appId"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "GET"

    .line 1
    invoke-direct {p0, v0, p3, p5, p2}, Lcom/chartboost/sdk/impl/c1;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/chartboost/sdk/impl/h4;Ljava/io/File;)V

    .line 2
    iput-object p1, p0, Lcom/chartboost/sdk/impl/d6;->j:Lcom/chartboost/sdk/impl/h1;

    .line 5
    iput-object p4, p0, Lcom/chartboost/sdk/impl/d6;->k:Lcom/chartboost/sdk/impl/d6$a;

    .line 6
    iput-object p5, p0, Lcom/chartboost/sdk/impl/d6;->l:Lcom/chartboost/sdk/impl/h4;

    .line 7
    iput-object p6, p0, Lcom/chartboost/sdk/impl/d6;->m:Ljava/lang/String;

    const/4 p1, 0x1

    .line 11
    iput p1, p0, Lcom/chartboost/sdk/impl/c1;->i:I

    return-void
.end method


# virtual methods
.method public a()Lcom/chartboost/sdk/impl/d1;
    .locals 4

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/chartboost/sdk/impl/d6;->m:Ljava/lang/String;

    const-string v2, "X-Chartboost-App"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-static {}, Lcom/chartboost/sdk/internal/Libraries/CBUtility;->b()Ljava/lang/String;

    move-result-object v1

    const-string v2, "getUserAgent()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "X-Chartboost-Client"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object v1, p0, Lcom/chartboost/sdk/impl/d6;->j:Lcom/chartboost/sdk/impl/h1;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/chartboost/sdk/impl/h1;->b()Lcom/chartboost/sdk/impl/g2;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "X-Chartboost-Reachability"

    .line 6
    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    new-instance v1, Lcom/chartboost/sdk/impl/d1;

    invoke-direct {v1, v0, v2, v2}, Lcom/chartboost/sdk/impl/d1;-><init>(Ljava/util/Map;[BLjava/lang/String;)V

    return-object v1
.end method

.method public a(Lcom/chartboost/sdk/internal/Model/CBError;Lcom/chartboost/sdk/impl/f1;)V
    .locals 3

    .line 10
    iget-object p2, p0, Lcom/chartboost/sdk/impl/d6;->k:Lcom/chartboost/sdk/impl/d6$a;

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/chartboost/sdk/impl/c1;->b:Ljava/lang/String;

    const-string/jumbo v1, "uri"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/chartboost/sdk/impl/c1;->e:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "outputFile.name"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2, v0, v1, p1}, Lcom/chartboost/sdk/impl/d6$a;->a(Ljava/lang/String;Ljava/lang/String;Lcom/chartboost/sdk/internal/Model/CBError;)V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/Object;Lcom/chartboost/sdk/impl/f1;)V
    .locals 2

    .line 9
    iget-object p1, p0, Lcom/chartboost/sdk/impl/d6;->k:Lcom/chartboost/sdk/impl/d6$a;

    if-eqz p1, :cond_0

    iget-object p2, p0, Lcom/chartboost/sdk/impl/c1;->b:Ljava/lang/String;

    const-string/jumbo v0, "uri"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/chartboost/sdk/impl/c1;->e:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "outputFile.name"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, p2, v0}, Lcom/chartboost/sdk/impl/d6$a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;J)V
    .locals 7

    const-string/jumbo v0, "uri"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    iget-object v1, p0, Lcom/chartboost/sdk/impl/d6;->k:Lcom/chartboost/sdk/impl/d6$a;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/chartboost/sdk/impl/c1;->e:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v0, "outputFile.name"

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x0

    move-object v2, p1

    move-wide v4, p2

    invoke-interface/range {v1 .. v6}, Lcom/chartboost/sdk/impl/d6$a;->a(Ljava/lang/String;Ljava/lang/String;JLcom/chartboost/sdk/impl/w;)V

    :cond_0
    return-void
.end method
