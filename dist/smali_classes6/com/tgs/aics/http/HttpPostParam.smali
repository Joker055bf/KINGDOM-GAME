.class public Lcom/tgs/aics/http/HttpPostParam;
.super Ljava/lang/Object;
.source "HttpPostParam.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Comparable;


# static fields
.field private static final serialVersionUID:J = -0x78d96ac49142488cL


# instance fields
.field private name:Ljava/lang/String;

.field private value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/tgs/aics/http/HttpPostParam;->name:Ljava/lang/String;

    .line 11
    iput-object p2, p0, Lcom/tgs/aics/http/HttpPostParam;->value:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public compareTo(Ljava/lang/Object;)I
    .locals 2

    .line 51
    check-cast p1, Lcom/tgs/aics/http/HttpPostParam;

    .line 52
    iget-object v0, p0, Lcom/tgs/aics/http/HttpPostParam;->name:Ljava/lang/String;

    iget-object v1, p1, Lcom/tgs/aics/http/HttpPostParam;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/tgs/aics/http/HttpPostParam;->value:Ljava/lang/String;

    iget-object p1, p1, Lcom/tgs/aics/http/HttpPostParam;->value:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    :cond_0
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    if-ne p0, p1, :cond_1

    return v1

    .line 37
    :cond_1
    instance-of v2, p1, Lcom/tgs/aics/http/HttpPostParam;

    if-eqz v2, :cond_2

    .line 38
    check-cast p1, Lcom/tgs/aics/http/HttpPostParam;

    .line 40
    iget-object v2, p0, Lcom/tgs/aics/http/HttpPostParam;->name:Ljava/lang/String;

    iget-object v3, p1, Lcom/tgs/aics/http/HttpPostParam;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/tgs/aics/http/HttpPostParam;->value:Ljava/lang/String;

    iget-object p1, p1, Lcom/tgs/aics/http/HttpPostParam;->value:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    move v0, v1

    :cond_2
    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/tgs/aics/http/HttpPostParam;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/tgs/aics/http/HttpPostParam;->value:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 24
    iget-object v0, p0, Lcom/tgs/aics/http/HttpPostParam;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 25
    iget-object v1, p0, Lcom/tgs/aics/http/HttpPostParam;->value:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "HttpPostParam{name=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tgs/aics/http/HttpPostParam;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', value=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tgs/aics/http/HttpPostParam;->value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
