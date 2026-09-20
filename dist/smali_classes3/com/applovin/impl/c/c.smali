.class public Lcom/applovin/impl/c/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/applovin/impl/c/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/applovin/impl/c/b;",
            ">;)V"
        }
    .end annotation

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/applovin/impl/c/c;->a:Ljava/util/List;

    return-void
.end method

.method public static a(Lcom/applovin/impl/sdk/utils/t;Lcom/applovin/impl/c/c;Lcom/applovin/impl/c/e;Lcom/applovin/impl/sdk/p;)Lcom/applovin/impl/c/c;
    .locals 1

    if-eqz p1, :cond_0

    .line 40
    :try_start_0
    invoke-virtual {p1}, Lcom/applovin/impl/c/c;->a()Ljava/util/List;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    const-string v0, "Verification"

    .line 43
    invoke-virtual {p0, v0}, Lcom/applovin/impl/sdk/utils/t;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    .line 44
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/applovin/impl/sdk/utils/t;

    .line 46
    invoke-static {v0, p2, p3}, Lcom/applovin/impl/c/b;->a(Lcom/applovin/impl/sdk/utils/t;Lcom/applovin/impl/c/e;Lcom/applovin/impl/sdk/p;)Lcom/applovin/impl/c/b;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 49
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 53
    :cond_2
    new-instance p0, Lcom/applovin/impl/c/c;

    invoke-direct {p0, p1}, Lcom/applovin/impl/c/c;-><init>(Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    .line 57
    invoke-virtual {p3}, Lcom/applovin/impl/sdk/p;->L()Lcom/applovin/impl/sdk/y;

    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p3}, Lcom/applovin/impl/sdk/p;->L()Lcom/applovin/impl/sdk/y;

    move-result-object p1

    const-string p2, "VastAdVerifications"

    const-string p3, "Error occurred while initializing"

    invoke-virtual {p1, p2, p3, p0}, Lcom/applovin/impl/sdk/y;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/applovin/impl/c/b;",
            ">;"
        }
    .end annotation

    .line 68
    iget-object v0, p0, Lcom/applovin/impl/c/c;->a:Ljava/util/List;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 75
    :cond_0
    instance-of v0, p1, Lcom/applovin/impl/c/c;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    .line 76
    :cond_1
    check-cast p1, Lcom/applovin/impl/c/c;

    .line 78
    iget-object v0, p0, Lcom/applovin/impl/c/c;->a:Ljava/util/List;

    iget-object p1, p1, Lcom/applovin/impl/c/c;->a:Ljava/util/List;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/applovin/impl/c/c;->a:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "VastAdVerification{verifications=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/applovin/impl/c/c;->a:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
