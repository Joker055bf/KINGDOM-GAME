.class public Lcom/discord/org/webrtc/Size;
.super Ljava/lang/Object;
.source "Size.java"


# instance fields
.field public height:I

.field public width:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput p1, p0, Lcom/discord/org/webrtc/Size;->width:I

    .line 23
    iput p2, p0, Lcom/discord/org/webrtc/Size;->height:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 33
    instance-of v0, p1, Lcom/discord/org/webrtc/Size;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 36
    :cond_0
    check-cast p1, Lcom/discord/org/webrtc/Size;

    .line 37
    iget v0, p0, Lcom/discord/org/webrtc/Size;->width:I

    iget v2, p1, Lcom/discord/org/webrtc/Size;->width:I

    if-ne v0, v2, :cond_1

    iget v0, p0, Lcom/discord/org/webrtc/Size;->height:I

    iget p1, p1, Lcom/discord/org/webrtc/Size;->height:I

    if-ne v0, p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 2

    const v0, 0x10001

    .line 43
    iget v1, p0, Lcom/discord/org/webrtc/Size;->width:I

    mul-int/2addr v1, v0

    add-int/lit8 v1, v1, 0x1

    iget v0, p0, Lcom/discord/org/webrtc/Size;->height:I

    add-int/2addr v1, v0

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 28
    iget v0, p0, Lcom/discord/org/webrtc/Size;->width:I

    iget v1, p0, Lcom/discord/org/webrtc/Size;->height:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "x"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
