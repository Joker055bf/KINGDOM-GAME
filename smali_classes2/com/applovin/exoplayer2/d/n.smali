.class public final Lcom/applovin/exoplayer2/d/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/applovin/exoplayer2/c/b;


# static fields
.field public static final a:Z


# instance fields
.field public final b:Ljava/util/UUID;

.field public final c:[B

.field public final d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "Amazon"

    .line 36
    sget-object v1, Lcom/applovin/exoplayer2/l/ai;->c:Ljava/lang/String;

    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "AFTM"

    sget-object v1, Lcom/applovin/exoplayer2/l/ai;->d:Ljava/lang/String;

    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "AFTB"

    sget-object v1, Lcom/applovin/exoplayer2/l/ai;->d:Ljava/lang/String;

    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lcom/applovin/exoplayer2/d/n;->a:Z

    return-void
.end method

.method public constructor <init>(Ljava/util/UUID;[BZ)V
    .locals 0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lcom/applovin/exoplayer2/d/n;->b:Ljava/util/UUID;

    .line 60
    iput-object p2, p0, Lcom/applovin/exoplayer2/d/n;->c:[B

    .line 61
    iput-boolean p3, p0, Lcom/applovin/exoplayer2/d/n;->d:Z

    return-void
.end method
