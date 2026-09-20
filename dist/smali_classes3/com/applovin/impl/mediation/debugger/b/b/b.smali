.class public Lcom/applovin/impl/mediation/debugger/b/b/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:Z

.field private final f:Ljava/lang/String;

.field private final g:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, -0x1

    .line 50
    invoke-direct {p0, p1, v0}, Lcom/applovin/impl/mediation/debugger/b/b/b;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 5

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/applovin/impl/mediation/debugger/b/b/b;->f:Ljava/lang/String;

    .line 28
    iput p2, p0, Lcom/applovin/impl/mediation/debugger/b/b/b;->g:I

    const-string p2, ","

    .line 30
    invoke-virtual {p1, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 31
    array-length p2, p1

    const/4 v0, 0x0

    const/4 v1, 0x4

    const/4 v2, 0x1

    const/4 v3, 0x3

    if-eq p2, v3, :cond_1

    array-length p2, p1

    if-ne p2, v1, :cond_0

    goto :goto_0

    :cond_0
    move p2, v0

    goto :goto_1

    :cond_1
    :goto_0
    move p2, v2

    :goto_1
    iput-boolean p2, p0, Lcom/applovin/impl/mediation/debugger/b/b/b;->e:Z

    const-string v4, ""

    if-eqz p2, :cond_3

    .line 34
    aget-object p2, p1, v0

    invoke-direct {p0, p2}, Lcom/applovin/impl/mediation/debugger/b/b/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/applovin/impl/mediation/debugger/b/b/b;->a:Ljava/lang/String;

    .line 35
    aget-object p2, p1, v2

    invoke-direct {p0, p2}, Lcom/applovin/impl/mediation/debugger/b/b/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/applovin/impl/mediation/debugger/b/b/b;->b:Ljava/lang/String;

    const/4 p2, 0x2

    .line 36
    aget-object p2, p1, p2

    invoke-direct {p0, p2}, Lcom/applovin/impl/mediation/debugger/b/b/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/applovin/impl/mediation/debugger/b/b/b;->c:Ljava/lang/String;

    .line 37
    array-length p2, p1

    if-ne p2, v1, :cond_2

    aget-object p1, p1, v3

    invoke-direct {p0, p1}, Lcom/applovin/impl/mediation/debugger/b/b/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :cond_2
    iput-object v4, p0, Lcom/applovin/impl/mediation/debugger/b/b/b;->d:Ljava/lang/String;

    goto :goto_2

    .line 41
    :cond_3
    iput-object v4, p0, Lcom/applovin/impl/mediation/debugger/b/b/b;->a:Ljava/lang/String;

    .line 42
    iput-object v4, p0, Lcom/applovin/impl/mediation/debugger/b/b/b;->b:Ljava/lang/String;

    .line 43
    iput-object v4, p0, Lcom/applovin/impl/mediation/debugger/b/b/b;->c:Ljava/lang/String;

    .line 44
    iput-object v4, p0, Lcom/applovin/impl/mediation/debugger/b/b/b;->d:Ljava/lang/String;

    :goto_2
    return-void
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/16 v0, 0xad

    const/16 v1, 0x20

    .line 113
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/applovin/impl/mediation/debugger/b/b/b;->a:Ljava/lang/String;

    return-object v0
.end method

.method protected a(Ljava/lang/Object;)Z
    .locals 0

    .line 9
    instance-of p1, p1, Lcom/applovin/impl/mediation/debugger/b/b/b;

    return p1
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/applovin/impl/mediation/debugger/b/b/b;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/applovin/impl/mediation/debugger/b/b/b;->c:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/applovin/impl/mediation/debugger/b/b/b;->d:Ljava/lang/String;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/applovin/impl/mediation/debugger/b/b/b;->f:Ljava/lang/String;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 9
    :cond_0
    instance-of v1, p1, Lcom/applovin/impl/mediation/debugger/b/b/b;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/applovin/impl/mediation/debugger/b/b/b;

    invoke-virtual {p1, p0}, Lcom/applovin/impl/mediation/debugger/b/b/b;->a(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    invoke-virtual {p0}, Lcom/applovin/impl/mediation/debugger/b/b/b;->g()Z

    move-result v1

    invoke-virtual {p1}, Lcom/applovin/impl/mediation/debugger/b/b/b;->g()Z

    move-result v3

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    invoke-virtual {p0}, Lcom/applovin/impl/mediation/debugger/b/b/b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/applovin/impl/mediation/debugger/b/b/b;->a()Ljava/lang/String;

    move-result-object v3

    if-nez v1, :cond_4

    if-eqz v3, :cond_5

    goto :goto_0

    :cond_4
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    :goto_0
    return v2

    :cond_5
    invoke-virtual {p0}, Lcom/applovin/impl/mediation/debugger/b/b/b;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/applovin/impl/mediation/debugger/b/b/b;->b()Ljava/lang/String;

    move-result-object v3

    if-nez v1, :cond_6

    if-eqz v3, :cond_7

    goto :goto_1

    :cond_6
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    :goto_1
    return v2

    :cond_7
    invoke-virtual {p0}, Lcom/applovin/impl/mediation/debugger/b/b/b;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/applovin/impl/mediation/debugger/b/b/b;->c()Ljava/lang/String;

    move-result-object v3

    if-nez v1, :cond_8

    if-eqz v3, :cond_9

    goto :goto_2

    :cond_8
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    :goto_2
    return v2

    :cond_9
    invoke-virtual {p0}, Lcom/applovin/impl/mediation/debugger/b/b/b;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/applovin/impl/mediation/debugger/b/b/b;->d()Ljava/lang/String;

    move-result-object p1

    if-nez v1, :cond_a

    if-eqz p1, :cond_b

    goto :goto_3

    :cond_a
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b

    :goto_3
    return v2

    :cond_b
    return v0
.end method

.method public f()I
    .locals 1

    .line 98
    iget v0, p0, Lcom/applovin/impl/mediation/debugger/b/b/b;->g:I

    return v0
.end method

.method public g()Z
    .locals 1

    .line 106
    iget-boolean v0, p0, Lcom/applovin/impl/mediation/debugger/b/b/b;->e:Z

    return v0
.end method

.method public hashCode()I
    .locals 4

    .line 9
    invoke-virtual {p0}, Lcom/applovin/impl/mediation/debugger/b/b/b;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x4f

    goto :goto_0

    :cond_0
    const/16 v0, 0x61

    :goto_0
    const/16 v1, 0x3b

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/applovin/impl/mediation/debugger/b/b/b;->a()Ljava/lang/String;

    move-result-object v2

    mul-int/2addr v0, v1

    const/16 v3, 0x2b

    if-nez v2, :cond_1

    move v2, v3

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    invoke-virtual {p0}, Lcom/applovin/impl/mediation/debugger/b/b/b;->b()Ljava/lang/String;

    move-result-object v2

    mul-int/2addr v0, v1

    if-nez v2, :cond_2

    move v2, v3

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_2
    add-int/2addr v0, v2

    invoke-virtual {p0}, Lcom/applovin/impl/mediation/debugger/b/b/b;->c()Ljava/lang/String;

    move-result-object v2

    mul-int/2addr v0, v1

    if-nez v2, :cond_3

    move v2, v3

    goto :goto_3

    :cond_3
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_3
    add-int/2addr v0, v2

    invoke-virtual {p0}, Lcom/applovin/impl/mediation/debugger/b/b/b;->d()Ljava/lang/String;

    move-result-object v2

    mul-int/2addr v0, v1

    if-nez v2, :cond_4

    goto :goto_4

    :cond_4
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_4
    add-int/2addr v0, v3

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AppAdsTxtEntry(domainName="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/applovin/impl/mediation/debugger/b/b/b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", publisherId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/applovin/impl/mediation/debugger/b/b/b;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", relationship="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/applovin/impl/mediation/debugger/b/b/b;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", certificateAuthorityId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/applovin/impl/mediation/debugger/b/b/b;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", valid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/applovin/impl/mediation/debugger/b/b/b;->g()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", rawValue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/applovin/impl/mediation/debugger/b/b/b;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", rowNumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/applovin/impl/mediation/debugger/b/b/b;->f()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
