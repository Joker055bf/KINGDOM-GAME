.class public final Lcom/osbcp/cssparser/Selector;
.super Ljava/lang/Object;
.source "Selector.java"


# instance fields
.field private name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/osbcp/cssparser/Selector;->name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 48
    instance-of v0, p1, Lcom/osbcp/cssparser/Selector;

    if-eqz v0, :cond_0

    .line 50
    check-cast p1, Lcom/osbcp/cssparser/Selector;

    .line 52
    iget-object p1, p1, Lcom/osbcp/cssparser/Selector;->name:Ljava/lang/String;

    iget-object v0, p0, Lcom/osbcp/cssparser/Selector;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 62
    invoke-virtual {p0}, Lcom/osbcp/cssparser/Selector;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/osbcp/cssparser/Selector;->name:Ljava/lang/String;

    return-object v0
.end method
