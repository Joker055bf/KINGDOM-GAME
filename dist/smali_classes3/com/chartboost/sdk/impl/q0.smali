.class public Lcom/chartboost/sdk/impl/q0;
.super Lcom/chartboost/sdk/impl/c1;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chartboost/sdk/impl/c1<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field public final j:Lcom/chartboost/sdk/impl/o2;

.field public final k:Lcom/chartboost/sdk/impl/h1;

.field public final l:Lcom/chartboost/sdk/impl/p0;

.field public m:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/chartboost/sdk/impl/o2;Lcom/chartboost/sdk/impl/h1;Lcom/chartboost/sdk/impl/p0;Ljava/io/File;Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p3, Lcom/chartboost/sdk/impl/p0;->d:Ljava/lang/String;

    sget-object v1, Lcom/chartboost/sdk/impl/h4;->d:Lcom/chartboost/sdk/impl/h4;

    const-string v2, "GET"

    invoke-direct {p0, v2, v0, v1, p4}, Lcom/chartboost/sdk/impl/c1;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/chartboost/sdk/impl/h4;Ljava/io/File;)V

    const/4 p4, 0x1

    .line 2
    iput p4, p0, Lcom/chartboost/sdk/impl/c1;->i:I

    .line 3
    iput-object p1, p0, Lcom/chartboost/sdk/impl/q0;->j:Lcom/chartboost/sdk/impl/o2;

    .line 4
    iput-object p2, p0, Lcom/chartboost/sdk/impl/q0;->k:Lcom/chartboost/sdk/impl/h1;

    .line 5
    iput-object p3, p0, Lcom/chartboost/sdk/impl/q0;->l:Lcom/chartboost/sdk/impl/p0;

    .line 6
    iput-object p5, p0, Lcom/chartboost/sdk/impl/q0;->m:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Lcom/chartboost/sdk/impl/d1;
    .locals 3

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    iget-object v1, p0, Lcom/chartboost/sdk/impl/q0;->m:Ljava/lang/String;

    const-string v2, "X-Chartboost-App"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-static {}, Lcom/chartboost/sdk/internal/Libraries/CBUtility;->b()Ljava/lang/String;

    move-result-object v1

    const-string v2, "X-Chartboost-Client"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget-object v1, p0, Lcom/chartboost/sdk/impl/q0;->k:Lcom/chartboost/sdk/impl/h1;

    invoke-virtual {v1}, Lcom/chartboost/sdk/impl/h1;->b()Lcom/chartboost/sdk/impl/g2;

    move-result-object v1

    invoke-virtual {v1}, Lcom/chartboost/sdk/impl/g2;->b()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "X-Chartboost-Reachability"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    new-instance v1, Lcom/chartboost/sdk/impl/d1;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2, v2}, Lcom/chartboost/sdk/impl/d1;-><init>(Ljava/util/Map;[BLjava/lang/String;)V

    return-object v1
.end method

.method public a(Lcom/chartboost/sdk/internal/Model/CBError;Lcom/chartboost/sdk/impl/f1;)V
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/chartboost/sdk/impl/q0;->j:Lcom/chartboost/sdk/impl/o2;

    invoke-virtual {v0, p0, p1, p2}, Lcom/chartboost/sdk/impl/o2;->a(Lcom/chartboost/sdk/impl/q0;Lcom/chartboost/sdk/internal/Model/CBError;Lcom/chartboost/sdk/impl/f1;)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;Lcom/chartboost/sdk/impl/f1;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/chartboost/sdk/impl/q0;->a(Ljava/lang/Void;Lcom/chartboost/sdk/impl/f1;)V

    return-void
.end method

.method public a(Ljava/lang/Void;Lcom/chartboost/sdk/impl/f1;)V
    .locals 0

    .line 9
    iget-object p1, p0, Lcom/chartboost/sdk/impl/q0;->j:Lcom/chartboost/sdk/impl/o2;

    const/4 p2, 0x0

    invoke-virtual {p1, p0, p2, p2}, Lcom/chartboost/sdk/impl/o2;->a(Lcom/chartboost/sdk/impl/q0;Lcom/chartboost/sdk/internal/Model/CBError;Lcom/chartboost/sdk/impl/f1;)V

    return-void
.end method
