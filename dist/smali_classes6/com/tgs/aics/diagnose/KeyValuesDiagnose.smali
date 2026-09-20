.class public abstract Lcom/tgs/aics/diagnose/KeyValuesDiagnose;
.super Lcom/tgs/aics/diagnose/AICSDiagnose;
.source "KeyValuesDiagnose.java"


# instance fields
.field private final mUrls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tgs/aics/diagnose/KeyValue;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tgs/aics/diagnose/KeyValue;",
            ">;)V"
        }
    .end annotation

    .line 8
    invoke-direct {p0}, Lcom/tgs/aics/diagnose/AICSDiagnose;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/tgs/aics/diagnose/KeyValuesDiagnose;->mUrls:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .line 24
    invoke-super {p0, p1}, Lcom/tgs/aics/diagnose/AICSDiagnose;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    instance-of p1, p1, Lcom/tgs/aics/diagnose/KeyValuesDiagnose;

    if-eqz p1, :cond_1

    .line 25
    iget-object p1, p0, Lcom/tgs/aics/diagnose/KeyValuesDiagnose;->mUrls:Ljava/util/List;

    const/4 v0, 0x1

    if-nez p1, :cond_0

    if-nez p1, :cond_0

    return v0

    :cond_0
    if-eqz p1, :cond_1

    if-eqz p1, :cond_1

    .line 30
    invoke-interface {p1, p1}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result p1

    if-eqz p1, :cond_1

    move v1, v0

    :cond_1
    return v1
.end method

.method protected final getKeyValues()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/tgs/aics/diagnose/KeyValue;",
            ">;"
        }
    .end annotation

    .line 19
    iget-object v0, p0, Lcom/tgs/aics/diagnose/KeyValuesDiagnose;->mUrls:Ljava/util/List;

    return-object v0
.end method

.method public getTotal()I
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/tgs/aics/diagnose/KeyValuesDiagnose;->mUrls:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 15
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
