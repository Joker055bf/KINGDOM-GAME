.class final Lcom/applovin/exoplayer2/i/e;
.super Lcom/applovin/exoplayer2/i/k;
.source "SourceFile"


# instance fields
.field private final c:Lcom/applovin/exoplayer2/c/i$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/applovin/exoplayer2/c/i$a<",
            "Lcom/applovin/exoplayer2/i/k;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/applovin/exoplayer2/c/i$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/applovin/exoplayer2/c/i$a<",
            "Lcom/applovin/exoplayer2/i/k;",
            ">;)V"
        }
    .end annotation

    .line 25
    invoke-direct {p0}, Lcom/applovin/exoplayer2/i/k;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/applovin/exoplayer2/i/e;->c:Lcom/applovin/exoplayer2/c/i$a;

    return-void
.end method


# virtual methods
.method public final f()V
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/applovin/exoplayer2/i/e;->c:Lcom/applovin/exoplayer2/c/i$a;

    invoke-interface {v0, p0}, Lcom/applovin/exoplayer2/c/i$a;->releaseOutputBuffer(Lcom/applovin/exoplayer2/c/i;)V

    return-void
.end method
