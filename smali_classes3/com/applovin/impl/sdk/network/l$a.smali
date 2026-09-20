.class public Lcom/applovin/impl/sdk/network/l$a;
.super Lcom/applovin/impl/sdk/network/c$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/impl/sdk/network/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/applovin/impl/sdk/network/c$a<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private o:Ljava/lang/String;

.field private p:Z


# direct methods
.method public constructor <init>(Lcom/applovin/impl/sdk/p;)V
    .locals 1

    .line 55
    invoke-direct {p0, p1}, Lcom/applovin/impl/sdk/network/c$a;-><init>(Lcom/applovin/impl/sdk/p;)V

    .line 58
    sget-object v0, Lcom/applovin/impl/sdk/c/b;->cW:Lcom/applovin/impl/sdk/c/b;

    invoke-virtual {p1, v0}, Lcom/applovin/impl/sdk/p;->a(Lcom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/applovin/impl/sdk/network/l$a;->h:I

    .line 59
    sget-object v0, Lcom/applovin/impl/sdk/c/b;->cV:Lcom/applovin/impl/sdk/c/b;

    invoke-virtual {p1, v0}, Lcom/applovin/impl/sdk/p;->a(Lcom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/applovin/impl/sdk/network/l$a;->i:I

    .line 60
    sget-object v0, Lcom/applovin/impl/sdk/c/b;->dd:Lcom/applovin/impl/sdk/c/b;

    invoke-virtual {p1, v0}, Lcom/applovin/impl/sdk/p;->a(Lcom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/applovin/impl/sdk/network/l$a;->j:I

    return-void
.end method

.method static synthetic a(Lcom/applovin/impl/sdk/network/l$a;)Ljava/lang/String;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/applovin/impl/sdk/network/l$a;->o:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic b(Lcom/applovin/impl/sdk/network/l$a;)Z
    .locals 0

    .line 47
    iget-boolean p0, p0, Lcom/applovin/impl/sdk/network/l$a;->p:Z

    return p0
.end method


# virtual methods
.method public synthetic a(I)Lcom/applovin/impl/sdk/network/c$a;
    .locals 0

    .line 47
    invoke-virtual {p0, p1}, Lcom/applovin/impl/sdk/network/l$a;->d(I)Lcom/applovin/impl/sdk/network/l$a;

    move-result-object p1

    return-object p1
.end method

.method public synthetic a(Ljava/lang/Object;)Lcom/applovin/impl/sdk/network/c$a;
    .locals 0

    .line 47
    invoke-virtual {p0, p1}, Lcom/applovin/impl/sdk/network/l$a;->b(Ljava/lang/Object;)Lcom/applovin/impl/sdk/network/l$a;

    move-result-object p1

    return-object p1
.end method

.method public synthetic a(Ljava/lang/String;)Lcom/applovin/impl/sdk/network/c$a;
    .locals 0

    .line 47
    invoke-virtual {p0, p1}, Lcom/applovin/impl/sdk/network/l$a;->d(Ljava/lang/String;)Lcom/applovin/impl/sdk/network/l$a;

    move-result-object p1

    return-object p1
.end method

.method public synthetic a(Ljava/util/Map;)Lcom/applovin/impl/sdk/network/c$a;
    .locals 0

    .line 47
    invoke-virtual {p0, p1}, Lcom/applovin/impl/sdk/network/l$a;->c(Ljava/util/Map;)Lcom/applovin/impl/sdk/network/l$a;

    move-result-object p1

    return-object p1
.end method

.method public synthetic a(Lorg/json/JSONObject;)Lcom/applovin/impl/sdk/network/c$a;
    .locals 0

    .line 47
    invoke-virtual {p0, p1}, Lcom/applovin/impl/sdk/network/l$a;->b(Lorg/json/JSONObject;)Lcom/applovin/impl/sdk/network/l$a;

    move-result-object p1

    return-object p1
.end method

.method public synthetic a()Lcom/applovin/impl/sdk/network/c;
    .locals 1

    .line 47
    invoke-virtual {p0}, Lcom/applovin/impl/sdk/network/l$a;->b()Lcom/applovin/impl/sdk/network/l;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(I)Lcom/applovin/impl/sdk/network/c$a;
    .locals 0

    .line 47
    invoke-virtual {p0, p1}, Lcom/applovin/impl/sdk/network/l$a;->e(I)Lcom/applovin/impl/sdk/network/l$a;

    move-result-object p1

    return-object p1
.end method

.method public synthetic b(Ljava/lang/String;)Lcom/applovin/impl/sdk/network/c$a;
    .locals 0

    .line 47
    invoke-virtual {p0, p1}, Lcom/applovin/impl/sdk/network/l$a;->f(Ljava/lang/String;)Lcom/applovin/impl/sdk/network/l$a;

    move-result-object p1

    return-object p1
.end method

.method public synthetic b(Ljava/util/Map;)Lcom/applovin/impl/sdk/network/c$a;
    .locals 0

    .line 47
    invoke-virtual {p0, p1}, Lcom/applovin/impl/sdk/network/l$a;->d(Ljava/util/Map;)Lcom/applovin/impl/sdk/network/l$a;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/lang/Object;)Lcom/applovin/impl/sdk/network/l$a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lcom/applovin/impl/sdk/network/l$a;"
        }
    .end annotation

    .line 108
    iput-object p1, p0, Lcom/applovin/impl/sdk/network/l$a;->g:Ljava/lang/Object;

    return-object p0
.end method

.method public b(Lorg/json/JSONObject;)Lcom/applovin/impl/sdk/network/l$a;
    .locals 0

    .line 87
    iput-object p1, p0, Lcom/applovin/impl/sdk/network/l$a;->f:Lorg/json/JSONObject;

    return-object p0
.end method

.method public b()Lcom/applovin/impl/sdk/network/l;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/applovin/impl/sdk/network/l<",
            "TT;>;"
        }
    .end annotation

    .line 162
    new-instance v0, Lcom/applovin/impl/sdk/network/l;

    invoke-direct {v0, p0}, Lcom/applovin/impl/sdk/network/l;-><init>(Lcom/applovin/impl/sdk/network/l$a;)V

    return-object v0
.end method

.method public synthetic c(I)Lcom/applovin/impl/sdk/network/c$a;
    .locals 0

    .line 47
    invoke-virtual {p0, p1}, Lcom/applovin/impl/sdk/network/l$a;->f(I)Lcom/applovin/impl/sdk/network/l$a;

    move-result-object p1

    return-object p1
.end method

.method public synthetic c(Ljava/lang/String;)Lcom/applovin/impl/sdk/network/c$a;
    .locals 0

    .line 47
    invoke-virtual {p0, p1}, Lcom/applovin/impl/sdk/network/l$a;->e(Ljava/lang/String;)Lcom/applovin/impl/sdk/network/l$a;

    move-result-object p1

    return-object p1
.end method

.method public synthetic c(Z)Lcom/applovin/impl/sdk/network/c$a;
    .locals 0

    .line 47
    invoke-virtual {p0, p1}, Lcom/applovin/impl/sdk/network/l$a;->e(Z)Lcom/applovin/impl/sdk/network/l$a;

    move-result-object p1

    return-object p1
.end method

.method public c(Ljava/util/Map;)Lcom/applovin/impl/sdk/network/l$a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/applovin/impl/sdk/network/l$a;"
        }
    .end annotation

    .line 94
    iput-object p1, p0, Lcom/applovin/impl/sdk/network/l$a;->d:Ljava/util/Map;

    return-object p0
.end method

.method public synthetic d(Z)Lcom/applovin/impl/sdk/network/c$a;
    .locals 0

    .line 47
    invoke-virtual {p0, p1}, Lcom/applovin/impl/sdk/network/l$a;->f(Z)Lcom/applovin/impl/sdk/network/l$a;

    move-result-object p1

    return-object p1
.end method

.method public d(I)Lcom/applovin/impl/sdk/network/l$a;
    .locals 0

    .line 115
    iput p1, p0, Lcom/applovin/impl/sdk/network/l$a;->h:I

    return-object p0
.end method

.method public d(Ljava/lang/String;)Lcom/applovin/impl/sdk/network/l$a;
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/applovin/impl/sdk/network/l$a;->b:Ljava/lang/String;

    return-object p0
.end method

.method public d(Ljava/util/Map;)Lcom/applovin/impl/sdk/network/l$a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/applovin/impl/sdk/network/l$a;"
        }
    .end annotation

    .line 101
    iput-object p1, p0, Lcom/applovin/impl/sdk/network/l$a;->e:Ljava/util/Map;

    return-object p0
.end method

.method public e(I)Lcom/applovin/impl/sdk/network/l$a;
    .locals 0

    .line 122
    iput p1, p0, Lcom/applovin/impl/sdk/network/l$a;->i:I

    return-object p0
.end method

.method public e(Ljava/lang/String;)Lcom/applovin/impl/sdk/network/l$a;
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/applovin/impl/sdk/network/l$a;->c:Ljava/lang/String;

    return-object p0
.end method

.method public e(Z)Lcom/applovin/impl/sdk/network/l$a;
    .locals 0

    .line 136
    iput-boolean p1, p0, Lcom/applovin/impl/sdk/network/l$a;->m:Z

    return-object p0
.end method

.method public f(I)Lcom/applovin/impl/sdk/network/l$a;
    .locals 0

    .line 129
    iput p1, p0, Lcom/applovin/impl/sdk/network/l$a;->j:I

    return-object p0
.end method

.method public f(Ljava/lang/String;)Lcom/applovin/impl/sdk/network/l$a;
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/applovin/impl/sdk/network/l$a;->a:Ljava/lang/String;

    return-object p0
.end method

.method public f(Z)Lcom/applovin/impl/sdk/network/l$a;
    .locals 0

    .line 143
    iput-boolean p1, p0, Lcom/applovin/impl/sdk/network/l$a;->n:Z

    return-object p0
.end method

.method public g(Ljava/lang/String;)Lcom/applovin/impl/sdk/network/l$a;
    .locals 0

    .line 149
    iput-object p1, p0, Lcom/applovin/impl/sdk/network/l$a;->o:Ljava/lang/String;

    return-object p0
.end method

.method public g(Z)Lcom/applovin/impl/sdk/network/l$a;
    .locals 0

    .line 155
    iput-boolean p1, p0, Lcom/applovin/impl/sdk/network/l$a;->p:Z

    return-object p0
.end method
