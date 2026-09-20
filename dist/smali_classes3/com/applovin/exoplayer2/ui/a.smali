.class public final Lcom/applovin/exoplayer2/ui/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/view/View;

.field public final b:I

.field public final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/view/View;I)V
    .locals 1

    const/4 v0, 0x0

    .line 59
    invoke-direct {p0, p1, p2, v0}, Lcom/applovin/exoplayer2/ui/a;-><init>(Landroid/view/View;ILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/view/View;ILjava/lang/String;)V
    .locals 0

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object p1, p0, Lcom/applovin/exoplayer2/ui/a;->a:Landroid/view/View;

    .line 71
    iput p2, p0, Lcom/applovin/exoplayer2/ui/a;->b:I

    .line 72
    iput-object p3, p0, Lcom/applovin/exoplayer2/ui/a;->c:Ljava/lang/String;

    return-void
.end method
