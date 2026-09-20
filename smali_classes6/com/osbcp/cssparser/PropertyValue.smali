.class public final Lcom/osbcp/cssparser/PropertyValue;
.super Ljava/lang/Object;
.source "PropertyValue.java"


# instance fields
.field private property:Ljava/lang/String;

.field private value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/osbcp/cssparser/PropertyValue;->property:Ljava/lang/String;

    .line 40
    iput-object p2, p0, Lcom/osbcp/cssparser/PropertyValue;->value:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 51
    instance-of v0, p1, Lcom/osbcp/cssparser/PropertyValue;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 53
    check-cast p1, Lcom/osbcp/cssparser/PropertyValue;

    .line 55
    iget-object v0, p1, Lcom/osbcp/cssparser/PropertyValue;->property:Ljava/lang/String;

    iget-object v2, p0, Lcom/osbcp/cssparser/PropertyValue;->property:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p1, Lcom/osbcp/cssparser/PropertyValue;->value:Ljava/lang/String;

    iget-object v0, p0, Lcom/osbcp/cssparser/PropertyValue;->value:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v1
.end method

.method public getProperty()Ljava/lang/String;
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/osbcp/cssparser/PropertyValue;->property:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/osbcp/cssparser/PropertyValue;->value:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 65
    invoke-virtual {p0}, Lcom/osbcp/cssparser/PropertyValue;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/osbcp/cssparser/PropertyValue;->property:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/osbcp/cssparser/PropertyValue;->value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
