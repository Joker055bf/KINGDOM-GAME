.class public final Lcom/chartboost/sdk/impl/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B/\u0012\n\u0008\u0002\u0010&\u001a\u0004\u0018\u00010\u0006\u0012\u0008\u0010(\u001a\u0004\u0018\u00010\'\u0012\u0008\u0010*\u001a\u0004\u0018\u00010)\u0012\u0006\u0010,\u001a\u00020+\u00a2\u0006\u0004\u0008-\u0010.J\u0008\u0010\u0003\u001a\u00020\u0002H\u0002J\u0008\u0010\u0004\u001a\u00020\u0002H\u0002J\u0008\u0010\u0005\u001a\u00020\u0002H\u0002J\u0010\u0010\u0008\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u0006H\u0002J\u0010\u0010\u0008\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\tH\u0002J\u0008\u0010\u000b\u001a\u00020\u0002H\u0002J\u0008\u0010\u000c\u001a\u00020\u0002H\u0002J\u0008\u0010\r\u001a\u00020\u0002H\u0002J\u0018\u0010\u0008\u001a\u00020\u00022\u0006\u0010\u000e\u001a\u00020\t2\u0006\u0010\u000f\u001a\u00020\tH\u0002J\u0008\u0010\u0010\u001a\u00020\u0002H\u0002J\u0016\u0010\u0008\u001a\u00020\u00022\u0006\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0014\u001a\u00020\u0013J\u0018\u0010\u000c\u001a\u00020\u00022\u0006\u0010\u0015\u001a\u00020\t2\u0006\u0010\u0016\u001a\u00020\tH\u0007J\u000e\u0010\u0008\u001a\u00020\u00022\u0006\u0010\u0018\u001a\u00020\u0017J\u0006\u0010\u0019\u001a\u00020\u0002J\u0006\u0010\u001a\u001a\u00020\u0002J\u0006\u0010\u001b\u001a\u00020\u0002J\u0006\u0010\u001c\u001a\u00020\u0002J\u0016\u0010\u001d\u001a\u00020\u00022\u0006\u0010\u000e\u001a\u00020\t2\u0006\u0010\u000f\u001a\u00020\tJ\u0008\u0010\u001e\u001a\u00020\u0002H\u0004J\u0008\u0010\u0008\u001a\u00020\u0002H\u0007J\u0008\u0010\u001d\u001a\u00020\u0002H\u0004J\u0008\u0010\u001f\u001a\u00020\u0002H\u0004J\u0010\u0010\"\u001a\u00020\u00022\u0006\u0010!\u001a\u00020 H\u0016J(\u0010$\u001a\u00020\u00022\u0006\u0010!\u001a\u00020 2\u0006\u0010#\u001a\u00020\t2\u0006\u0010\u000e\u001a\u00020\t2\u0006\u0010\u000f\u001a\u00020\tH\u0016J\u0010\u0010%\u001a\u00020\u00022\u0006\u0010!\u001a\u00020 H\u0016\u00a8\u0006/"
    }
    d2 = {
        "Lcom/chartboost/sdk/impl/x;",
        "Landroid/view/SurfaceHolder$Callback;",
        "",
        "j",
        "i",
        "f",
        "Landroid/media/MediaPlayer;",
        "mp",
        "a",
        "",
        "totalVideoDuration",
        "l",
        "c",
        "n",
        "width",
        "height",
        "g",
        "Ljava/io/RandomAccessFile;",
        "accessFile",
        "",
        "expectedFileSize",
        "what",
        "extra",
        "",
        "isComingFromBackground",
        "e",
        "m",
        "d",
        "o",
        "b",
        "k",
        "h",
        "Landroid/view/SurfaceHolder;",
        "holder",
        "surfaceCreated",
        "format",
        "surfaceChanged",
        "surfaceDestroyed",
        "mediaPlayer",
        "Landroid/view/SurfaceView;",
        "surface",
        "Lcom/chartboost/sdk/impl/y;",
        "callback",
        "Landroid/os/Handler;",
        "uiHandler",
        "<init>",
        "(Landroid/media/MediaPlayer;Landroid/view/SurfaceView;Lcom/chartboost/sdk/impl/y;Landroid/os/Handler;)V",
        "Chartboost-9.2.0_productionRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
.end annotation


# instance fields
.field public a:Landroid/media/MediaPlayer;

.field public b:Landroid/view/SurfaceView;

.field public c:Lcom/chartboost/sdk/impl/y;

.field public final d:Landroid/os/Handler;

.field public e:I

.field public f:Landroid/view/SurfaceHolder;

.field public g:Z

.field public h:Z

.field public i:Z

.field public j:Z

.field public k:F

.field public l:Ljava/io/RandomAccessFile;

.field public m:J

.field public n:J

.field public final o:Lcom/chartboost/sdk/impl/x$c;

.field public final p:Ljava/lang/Runnable;

.field public final q:Lcom/chartboost/sdk/impl/x$a;


# direct methods
.method public constructor <init>(Landroid/media/MediaPlayer;Landroid/view/SurfaceView;Lcom/chartboost/sdk/impl/y;Landroid/os/Handler;)V
    .locals 1

    const-string/jumbo v0, "uiHandler"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/chartboost/sdk/impl/x;->a:Landroid/media/MediaPlayer;

    .line 3
    iput-object p2, p0, Lcom/chartboost/sdk/impl/x;->b:Landroid/view/SurfaceView;

    .line 4
    iput-object p3, p0, Lcom/chartboost/sdk/impl/x;->c:Lcom/chartboost/sdk/impl/y;

    .line 5
    iput-object p4, p0, Lcom/chartboost/sdk/impl/x;->d:Landroid/os/Handler;

    if-eqz p2, :cond_0

    .line 9
    invoke-virtual {p2}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/chartboost/sdk/impl/x;->f:Landroid/view/SurfaceHolder;

    const p1, 0x3c23d70a

    .line 15
    iput p1, p0, Lcom/chartboost/sdk/impl/x;->k:F

    .line 192
    new-instance p1, Lcom/chartboost/sdk/impl/x$c;

    invoke-direct {p1, p0}, Lcom/chartboost/sdk/impl/x$c;-><init>(Lcom/chartboost/sdk/impl/x;)V

    iput-object p1, p0, Lcom/chartboost/sdk/impl/x;->o:Lcom/chartboost/sdk/impl/x$c;

    .line 251
    new-instance p1, Lcom/chartboost/sdk/impl/x$b;

    invoke-direct {p1, p0}, Lcom/chartboost/sdk/impl/x$b;-><init>(Lcom/chartboost/sdk/impl/x;)V

    iput-object p1, p0, Lcom/chartboost/sdk/impl/x;->p:Ljava/lang/Runnable;

    .line 336
    new-instance p1, Lcom/chartboost/sdk/impl/x$a;

    invoke-direct {p1, p0}, Lcom/chartboost/sdk/impl/x$a;-><init>(Lcom/chartboost/sdk/impl/x;)V

    iput-object p1, p0, Lcom/chartboost/sdk/impl/x;->q:Lcom/chartboost/sdk/impl/x$a;

    return-void
.end method

.method public static final synthetic a(Lcom/chartboost/sdk/impl/x;)Lcom/chartboost/sdk/impl/y;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/chartboost/sdk/impl/x;->c:Lcom/chartboost/sdk/impl/y;

    return-object p0
.end method

.method public static final synthetic a(Lcom/chartboost/sdk/impl/x;I)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/chartboost/sdk/impl/x;->e:I

    return-void
.end method

.method public static final a(Lcom/chartboost/sdk/impl/x;Landroid/media/MediaPlayer;)V
    .locals 1

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mp"

    .line 10
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/chartboost/sdk/impl/x;->a(Landroid/media/MediaPlayer;)V

    return-void
.end method

.method public static final a(Lcom/chartboost/sdk/impl/x;Landroid/media/MediaPlayer;II)Z
    .locals 0

    const-string/jumbo p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 p1, 0x325

    if-eq p2, p1, :cond_0

    const/16 p1, 0x324

    if-ne p2, p1, :cond_1

    :cond_0
    const/16 p1, -0x3ec

    if-ne p3, p1, :cond_1

    .line 11
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/x;->a()V

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static final synthetic b(Lcom/chartboost/sdk/impl/x;)Landroid/media/MediaPlayer;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/chartboost/sdk/impl/x;->a:Landroid/media/MediaPlayer;

    return-object p0
.end method

.method public static final b(Lcom/chartboost/sdk/impl/x;Landroid/media/MediaPlayer;)V
    .locals 4

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    int-to-double v0, v0

    const-wide v2, 0x3fa999999999999aL    # 0.05

    mul-double/2addr v0, v2

    .line 5
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getDuration()I

    move-result p1

    int-to-double v2, p1

    sub-double/2addr v2, v0

    .line 6
    iget p1, p0, Lcom/chartboost/sdk/impl/x;->e:I

    int-to-double v0, p1

    cmpl-double p1, v0, v2

    if-ltz p1, :cond_0

    .line 7
    iget-object p0, p0, Lcom/chartboost/sdk/impl/x;->c:Lcom/chartboost/sdk/impl/y;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lcom/chartboost/sdk/impl/y;->b()V

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/x;->a()V

    :cond_1
    :goto_0
    return-void
.end method

.method public static final b(Lcom/chartboost/sdk/impl/x;Landroid/media/MediaPlayer;II)Z
    .locals 0

    const-string/jumbo p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-virtual {p0, p2, p3}, Lcom/chartboost/sdk/impl/x;->c(II)V

    const/4 p0, 0x1

    return p0
.end method

.method public static final synthetic c(Lcom/chartboost/sdk/impl/x;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/chartboost/sdk/impl/x;->e:I

    return p0
.end method


# virtual methods
.method public final a()V
    .locals 4

    .line 56
    iget-boolean v0, p0, Lcom/chartboost/sdk/impl/x;->g:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/chartboost/sdk/impl/x;->i:Z

    if-eqz v0, :cond_2

    .line 57
    iget-wide v0, p0, Lcom/chartboost/sdk/impl/x;->n:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 58
    iget-object v0, p0, Lcom/chartboost/sdk/impl/x;->l:Ljava/io/RandomAccessFile;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v2

    :cond_0
    iput-wide v2, p0, Lcom/chartboost/sdk/impl/x;->n:J

    :cond_1
    const/4 v0, 0x1

    .line 60
    iput-boolean v0, p0, Lcom/chartboost/sdk/impl/x;->g:Z

    .line 61
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/x;->e()V

    .line 62
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/x;->c()V

    :cond_2
    return-void
.end method

.method public final a(I)V
    .locals 4

    .line 25
    iget-wide v0, p0, Lcom/chartboost/sdk/impl/x;->m:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    if-lez p1, :cond_0

    long-to-float v0, v0

    const v1, 0x49742400    # 1000000.0f

    div-float/2addr v0, v1

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float v1, v0, v1

    int-to-float p1, p1

    const v2, 0x476a6000    # 60000.0f

    div-float/2addr p1, v2

    const v2, 0x3bf5c28f

    mul-float/2addr p1, v2

    div-float/2addr v1, p1

    const/16 p1, 0x8

    int-to-float p1, p1

    mul-float/2addr v0, p1

    div-float/2addr v1, v0

    .line 55
    iput v1, p0, Lcom/chartboost/sdk/impl/x;->k:F

    :cond_0
    return-void
.end method

.method public final a(II)V
    .locals 6

    .line 63
    iget-object v0, p0, Lcom/chartboost/sdk/impl/x;->a:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz v0, :cond_1

    .line 69
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v0

    int-to-float v0, v0

    goto :goto_0

    :cond_1
    move v0, v1

    .line 70
    :goto_0
    iget-object v2, p0, Lcom/chartboost/sdk/impl/x;->a:Landroid/media/MediaPlayer;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v1

    int-to-float v1, v1

    :cond_2
    int-to-float v2, p1

    div-float v3, v2, v0

    int-to-float v4, p2

    div-float v5, v4, v1

    div-float/2addr v0, v1

    .line 75
    iget-object v1, p0, Lcom/chartboost/sdk/impl/x;->b:Landroid/view/SurfaceView;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/view/SurfaceView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_1
    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz v1, :cond_5

    cmpl-float v3, v3, v5

    if-lez v3, :cond_4

    mul-float/2addr v4, v0

    float-to-int p1, v4

    .line 78
    iput p1, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 79
    iput p2, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    goto :goto_2

    .line 81
    :cond_4
    iput p1, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    div-float/2addr v2, v0

    float-to-int p1, v2

    .line 82
    iput p1, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    :goto_2
    const/16 p1, 0x11

    .line 84
    iput p1, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 86
    :cond_5
    iget-object p1, p0, Lcom/chartboost/sdk/impl/x;->b:Landroid/view/SurfaceView;

    if-nez p1, :cond_6

    goto :goto_3

    :cond_6
    invoke-virtual {p1, v1}, Landroid/view/SurfaceView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_3
    return-void
.end method

.method public final a(Landroid/media/MediaPlayer;)V
    .locals 3

    const/4 v0, 0x0

    .line 17
    iput-boolean v0, p0, Lcom/chartboost/sdk/impl/x;->g:Z

    .line 18
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getDuration()I

    move-result p1

    .line 19
    iget-object v1, p0, Lcom/chartboost/sdk/impl/x;->b:Landroid/view/SurfaceView;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/SurfaceView;->getWidth()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/chartboost/sdk/impl/x;->b:Landroid/view/SurfaceView;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/view/SurfaceView;->getHeight()I

    move-result v0

    :cond_1
    invoke-virtual {p0, v1, v0}, Lcom/chartboost/sdk/impl/x;->a(II)V

    .line 20
    iget-object v0, p0, Lcom/chartboost/sdk/impl/x;->c:Lcom/chartboost/sdk/impl/y;

    if-eqz v0, :cond_2

    invoke-interface {v0, p1}, Lcom/chartboost/sdk/impl/y;->b(I)V

    :cond_2
    const/4 v0, 0x1

    .line 21
    iput-boolean v0, p0, Lcom/chartboost/sdk/impl/x;->h:Z

    .line 22
    invoke-virtual {p0, p1}, Lcom/chartboost/sdk/impl/x;->a(I)V

    .line 23
    iget-boolean p1, p0, Lcom/chartboost/sdk/impl/x;->i:Z

    if-eqz p1, :cond_3

    .line 24
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/x;->k()V

    :cond_3
    return-void
.end method

.method public final a(Ljava/io/RandomAccessFile;J)V
    .locals 1

    const-string v0, "accessFile"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/chartboost/sdk/impl/x;->a:Landroid/media/MediaPlayer;

    if-nez v0, :cond_1

    .line 4
    iget-object p1, p0, Lcom/chartboost/sdk/impl/x;->c:Lcom/chartboost/sdk/impl/y;

    if-eqz p1, :cond_0

    const-string p2, "Missing media player during startMediaPlayer"

    invoke-interface {p1, p2}, Lcom/chartboost/sdk/impl/y;->a(Ljava/lang/String;)V

    :cond_0
    return-void

    .line 7
    :cond_1
    iput-wide p2, p0, Lcom/chartboost/sdk/impl/x;->m:J

    .line 8
    iput-object p1, p0, Lcom/chartboost/sdk/impl/x;->l:Ljava/io/RandomAccessFile;

    .line 9
    iget-object p1, p0, Lcom/chartboost/sdk/impl/x;->f:Landroid/view/SurfaceHolder;

    if-eqz p1, :cond_2

    invoke-interface {p1, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    :cond_2
    return-void
.end method

.method public final a(Z)V
    .locals 1

    .line 12
    iget-boolean v0, p0, Lcom/chartboost/sdk/impl/x;->h:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/chartboost/sdk/impl/x;->i:Z

    if-nez v0, :cond_0

    .line 13
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/x;->l()V

    :cond_0
    const/4 v0, 0x1

    .line 15
    iput-boolean v0, p0, Lcom/chartboost/sdk/impl/x;->i:Z

    .line 16
    iput-boolean p1, p0, Lcom/chartboost/sdk/impl/x;->j:Z

    return-void
.end method

.method public final b()V
    .locals 6

    .line 12
    iget-object v0, p0, Lcom/chartboost/sdk/impl/x;->l:Ljava/io/RandomAccessFile;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x1

    .line 13
    :goto_0
    iget-wide v2, p0, Lcom/chartboost/sdk/impl/x;->n:J

    sub-long v2, v0, v2

    long-to-float v2, v2

    .line 14
    iget-wide v3, p0, Lcom/chartboost/sdk/impl/x;->m:J

    long-to-float v5, v3

    div-float/2addr v2, v5

    cmp-long v0, v0, v3

    const-wide/16 v3, 0x0

    if-nez v0, :cond_1

    .line 18
    iput-wide v3, p0, Lcom/chartboost/sdk/impl/x;->n:J

    .line 19
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/x;->n()V

    return-void

    .line 25
    :cond_1
    iget v0, p0, Lcom/chartboost/sdk/impl/x;->k:F

    cmpl-float v0, v2, v0

    if-lez v0, :cond_2

    .line 26
    iput-wide v3, p0, Lcom/chartboost/sdk/impl/x;->n:J

    .line 27
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/x;->n()V

    return-void

    .line 31
    :cond_2
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/x;->c()V

    return-void
.end method

.method public final b(II)V
    .locals 0

    .line 11
    invoke-virtual {p0, p2, p1}, Lcom/chartboost/sdk/impl/x;->a(II)V

    return-void
.end method

.method public final c()V
    .locals 4

    .line 6
    iget-object v0, p0, Lcom/chartboost/sdk/impl/x;->d:Landroid/os/Handler;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/x;->p:Ljava/lang/Runnable;

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final c(II)V
    .locals 2

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "error: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " extra: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 3
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "MediaPlayer error: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "AdsMediaPlayer"

    invoke-static {p2, p1}, Lcom/chartboost/sdk/impl/s3;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-boolean p1, p0, Lcom/chartboost/sdk/impl/x;->h:Z

    if-eqz p1, :cond_0

    .line 5
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/x;->a()V

    :cond_0
    return-void
.end method

.method public final d()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/chartboost/sdk/impl/x;->a:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    :cond_0
    return-void
.end method

.method public final e()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/chartboost/sdk/impl/x;->h:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/chartboost/sdk/impl/x;->i:Z

    if-eqz v0, :cond_2

    .line 2
    iget-object v0, p0, Lcom/chartboost/sdk/impl/x;->d:Landroid/os/Handler;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/x;->p:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/x;->g()V

    .line 4
    iget-object v0, p0, Lcom/chartboost/sdk/impl/x;->a:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/chartboost/sdk/impl/x;->a:Landroid/media/MediaPlayer;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    iput v0, p0, Lcom/chartboost/sdk/impl/x;->e:I

    .line 6
    iput-boolean v1, p0, Lcom/chartboost/sdk/impl/x;->i:Z

    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lcom/chartboost/sdk/impl/x;->j:Z

    :cond_2
    return-void
.end method

.method public final f()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/chartboost/sdk/impl/x;->a:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    :cond_0
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/chartboost/sdk/impl/x;->c:Lcom/chartboost/sdk/impl/y;

    .line 3
    iput-object v0, p0, Lcom/chartboost/sdk/impl/x;->a:Landroid/media/MediaPlayer;

    .line 4
    iput-object v0, p0, Lcom/chartboost/sdk/impl/x;->f:Landroid/view/SurfaceHolder;

    .line 5
    iput-object v0, p0, Lcom/chartboost/sdk/impl/x;->b:Landroid/view/SurfaceView;

    return-void
.end method

.method public final g()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/chartboost/sdk/impl/x;->d:Landroid/os/Handler;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/x;->q:Lcom/chartboost/sdk/impl/x$a;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final h()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/chartboost/sdk/impl/x;->d:Landroid/os/Handler;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/x;->q:Lcom/chartboost/sdk/impl/x$a;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final i()V
    .locals 4

    const-string v0, "AdsMediaPlayer"

    const/4 v1, 0x0

    .line 1
    :try_start_0
    iget-object v2, p0, Lcom/chartboost/sdk/impl/x;->l:Ljava/io/RandomAccessFile;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->getFD()Ljava/io/FileDescriptor;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 2
    iget-object v3, p0, Lcom/chartboost/sdk/impl/x;->a:Landroid/media/MediaPlayer;

    if-eqz v3, :cond_0

    invoke-virtual {v3, v2}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;)V

    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    if-nez v2, :cond_3

    .line 3
    :cond_1
    iget-object v2, p0, Lcom/chartboost/sdk/impl/x;->c:Lcom/chartboost/sdk/impl/y;

    if-eqz v2, :cond_2

    const-string v3, "Missing video asset"

    invoke-interface {v2, v3}, Lcom/chartboost/sdk/impl/y;->a(Ljava/lang/String;)V

    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_1

    :cond_2
    move-object v2, v1

    :cond_3
    :goto_1
    if-nez v2, :cond_5

    const-string v2, "MediaPlayer missing callback on error"

    .line 4
    invoke-static {v0, v2}, Lcom/chartboost/sdk/impl/s3;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v2

    .line 6
    iget-object v3, p0, Lcom/chartboost/sdk/impl/x;->c:Lcom/chartboost/sdk/impl/y;

    if-eqz v3, :cond_4

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v1}, Lcom/chartboost/sdk/impl/y;->a(Ljava/lang/String;)V

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :cond_4
    if-nez v1, :cond_5

    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "MediaPlayer missing callback on IOException: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 9
    invoke-static {v0, v1}, Lcom/chartboost/sdk/impl/s3;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_2
    return-void
.end method

.method public final j()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/chartboost/sdk/impl/x;->a:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/chartboost/sdk/impl/x$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/chartboost/sdk/impl/x$$ExternalSyntheticLambda0;-><init>(Lcom/chartboost/sdk/impl/x;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/chartboost/sdk/impl/x;->a:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    new-instance v1, Lcom/chartboost/sdk/impl/x$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/chartboost/sdk/impl/x$$ExternalSyntheticLambda1;-><init>(Lcom/chartboost/sdk/impl/x;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    .line 10
    :cond_1
    iget-object v0, p0, Lcom/chartboost/sdk/impl/x;->a:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_2

    new-instance v1, Lcom/chartboost/sdk/impl/x$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/chartboost/sdk/impl/x$$ExternalSyntheticLambda2;-><init>(Lcom/chartboost/sdk/impl/x;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 22
    :cond_2
    iget-object v0, p0, Lcom/chartboost/sdk/impl/x;->a:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_3

    new-instance v1, Lcom/chartboost/sdk/impl/x$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/chartboost/sdk/impl/x$$ExternalSyntheticLambda3;-><init>(Lcom/chartboost/sdk/impl/x;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    :cond_3
    return-void
.end method

.method public final k()V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/chartboost/sdk/impl/x;->a:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_2

    .line 2
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 7
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/x;->h()V

    .line 8
    iget-object v1, p0, Lcom/chartboost/sdk/impl/x;->c:Lcom/chartboost/sdk/impl/y;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/chartboost/sdk/impl/y;->a()V

    .line 10
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_1

    .line 11
    iget v1, p0, Lcom/chartboost/sdk/impl/x;->e:I

    int-to-long v1, v1

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/MediaPlayer;->seekTo(JI)V

    goto :goto_0

    .line 20
    :cond_1
    iget v1, p0, Lcom/chartboost/sdk/impl/x;->e:I

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->seekTo(I)V

    goto :goto_0

    .line 22
    :cond_2
    iget-object v0, p0, Lcom/chartboost/sdk/impl/x;->c:Lcom/chartboost/sdk/impl/y;

    if-eqz v0, :cond_3

    const-string v1, "Missing media player during startMediaPlayer"

    invoke-interface {v0, v1}, Lcom/chartboost/sdk/impl/y;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 25
    iget-object v1, p0, Lcom/chartboost/sdk/impl/x;->c:Lcom/chartboost/sdk/impl/y;

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/chartboost/sdk/impl/y;->a(Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public final l()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/chartboost/sdk/impl/x;->d:Landroid/os/Handler;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/x;->o:Lcom/chartboost/sdk/impl/x$c;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final m()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/chartboost/sdk/impl/x;->h:Z

    if-eqz v0, :cond_2

    .line 2
    iget-object v0, p0, Lcom/chartboost/sdk/impl/x;->d:Landroid/os/Handler;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/x;->p:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/chartboost/sdk/impl/x;->e:I

    .line 4
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/x;->g()V

    .line 5
    iget-object v1, p0, Lcom/chartboost/sdk/impl/x;->a:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->stop()V

    .line 6
    :cond_0
    iput-boolean v0, p0, Lcom/chartboost/sdk/impl/x;->i:Z

    .line 7
    iput-boolean v0, p0, Lcom/chartboost/sdk/impl/x;->j:Z

    .line 8
    iget-object v0, p0, Lcom/chartboost/sdk/impl/x;->l:Ljava/io/RandomAccessFile;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    :cond_1
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/chartboost/sdk/impl/x;->l:Ljava/io/RandomAccessFile;

    .line 10
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/x;->f()V

    :cond_2
    return-void
.end method

.method public final n()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/chartboost/sdk/impl/x;->d:Landroid/os/Handler;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/x;->p:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/chartboost/sdk/impl/x;->i:Z

    .line 3
    iget-object v0, p0, Lcom/chartboost/sdk/impl/x;->a:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/x;->i()V

    .line 5
    iget-object v0, p0, Lcom/chartboost/sdk/impl/x;->a:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepareAsync()V

    :cond_1
    return-void
.end method

.method public final o()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/chartboost/sdk/impl/x;->a:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    :cond_0
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    const-string p2, "holder"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 2

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-boolean v0, p0, Lcom/chartboost/sdk/impl/x;->j:Z

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/chartboost/sdk/impl/x;->a:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    :cond_0
    const/4 p1, 0x0

    .line 3
    invoke-virtual {p0, p1}, Lcom/chartboost/sdk/impl/x;->a(Z)V

    goto :goto_0

    .line 6
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/x;->j()V

    .line 7
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/x;->i()V

    .line 8
    iget-object v0, p0, Lcom/chartboost/sdk/impl/x;->a:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepareAsync()V

    .line 9
    :cond_2
    iget-object v0, p0, Lcom/chartboost/sdk/impl/x;->a:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_3

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SurfaceCreated exception: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AdsMediaPlayer"

    invoke-static {v0, p1}, Lcom/chartboost/sdk/impl/s3;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Lcom/chartboost/sdk/impl/x;->a:Landroid/media/MediaPlayer;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    :cond_0
    return-void
.end method
