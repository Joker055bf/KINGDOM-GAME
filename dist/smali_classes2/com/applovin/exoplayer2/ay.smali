.class final Lcom/applovin/exoplayer2/ay;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/applovin/exoplayer2/ay$b;,
        Lcom/applovin/exoplayer2/ay$a;
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Landroid/os/Handler;

.field private final c:Lcom/applovin/exoplayer2/ay$a;

.field private final d:Landroid/media/AudioManager;

.field private e:Lcom/applovin/exoplayer2/ay$b;

.field private f:I

.field private g:I

.field private h:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/applovin/exoplayer2/ay$a;)V
    .locals 1

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/applovin/exoplayer2/ay;->a:Landroid/content/Context;

    .line 64
    iput-object p2, p0, Lcom/applovin/exoplayer2/ay;->b:Landroid/os/Handler;

    .line 65
    iput-object p3, p0, Lcom/applovin/exoplayer2/ay;->c:Lcom/applovin/exoplayer2/ay$a;

    const-string p2, "audio"

    .line 68
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/media/AudioManager;

    .line 67
    invoke-static {p2}, Lcom/applovin/exoplayer2/l/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/media/AudioManager;

    iput-object p2, p0, Lcom/applovin/exoplayer2/ay;->d:Landroid/media/AudioManager;

    const/4 p3, 0x3

    .line 70
    iput p3, p0, Lcom/applovin/exoplayer2/ay;->f:I

    .line 71
    invoke-static {p2, p3}, Lcom/applovin/exoplayer2/ay;->a(Landroid/media/AudioManager;I)I

    move-result p3

    iput p3, p0, Lcom/applovin/exoplayer2/ay;->g:I

    .line 72
    iget p3, p0, Lcom/applovin/exoplayer2/ay;->f:I

    invoke-static {p2, p3}, Lcom/applovin/exoplayer2/ay;->b(Landroid/media/AudioManager;I)Z

    move-result p2

    iput-boolean p2, p0, Lcom/applovin/exoplayer2/ay;->h:Z

    .line 74
    new-instance p2, Lcom/applovin/exoplayer2/ay$b;

    const/4 p3, 0x0

    invoke-direct {p2, p0, p3}, Lcom/applovin/exoplayer2/ay$b;-><init>(Lcom/applovin/exoplayer2/ay;Lcom/applovin/exoplayer2/ay$1;)V

    .line 75
    new-instance p3, Landroid/content/IntentFilter;

    const-string v0, "android.media.VOLUME_CHANGED_ACTION"

    invoke-direct {p3, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 77
    :try_start_0
    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 78
    iput-object p2, p0, Lcom/applovin/exoplayer2/ay;->e:Lcom/applovin/exoplayer2/ay$b;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "StreamVolumeManager"

    const-string p3, "Error registering stream volume receiver"

    .line 80
    invoke-static {p2, p3, p1}, Lcom/applovin/exoplayer2/l/q;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private static a(Landroid/media/AudioManager;I)I
    .locals 3

    .line 194
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception v0

    .line 196
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Could not retrieve stream volume for stream type "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "StreamVolumeManager"

    invoke-static {v2, v1, v0}, Lcom/applovin/exoplayer2/l/q;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 197
    invoke-virtual {p0, p1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result p0

    return p0
.end method

.method static synthetic a(Lcom/applovin/exoplayer2/ay;)Landroid/os/Handler;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/applovin/exoplayer2/ay;->b:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic b(Lcom/applovin/exoplayer2/ay;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/applovin/exoplayer2/ay;->d()V

    return-void
.end method

.method private static b(Landroid/media/AudioManager;I)Z
    .locals 2

    .line 203
    sget v0, Lcom/applovin/exoplayer2/l/ai;->a:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 204
    invoke-virtual {p0, p1}, Landroid/media/AudioManager;->isStreamMute(I)Z

    move-result p0

    return p0

    .line 206
    :cond_0
    invoke-static {p0, p1}, Lcom/applovin/exoplayer2/ay;->a(Landroid/media/AudioManager;I)I

    move-result p0

    if-nez p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private d()V
    .locals 3

    .line 181
    iget-object v0, p0, Lcom/applovin/exoplayer2/ay;->d:Landroid/media/AudioManager;

    iget v1, p0, Lcom/applovin/exoplayer2/ay;->f:I

    invoke-static {v0, v1}, Lcom/applovin/exoplayer2/ay;->a(Landroid/media/AudioManager;I)I

    move-result v0

    .line 182
    iget-object v1, p0, Lcom/applovin/exoplayer2/ay;->d:Landroid/media/AudioManager;

    iget v2, p0, Lcom/applovin/exoplayer2/ay;->f:I

    invoke-static {v1, v2}, Lcom/applovin/exoplayer2/ay;->b(Landroid/media/AudioManager;I)Z

    move-result v1

    .line 183
    iget v2, p0, Lcom/applovin/exoplayer2/ay;->g:I

    if-ne v2, v0, :cond_0

    iget-boolean v2, p0, Lcom/applovin/exoplayer2/ay;->h:Z

    if-eq v2, v1, :cond_1

    .line 184
    :cond_0
    iput v0, p0, Lcom/applovin/exoplayer2/ay;->g:I

    .line 185
    iput-boolean v1, p0, Lcom/applovin/exoplayer2/ay;->h:Z

    .line 186
    iget-object v2, p0, Lcom/applovin/exoplayer2/ay;->c:Lcom/applovin/exoplayer2/ay$a;

    invoke-interface {v2, v0, v1}, Lcom/applovin/exoplayer2/ay$a;->a(IZ)V

    :cond_1
    return-void
.end method


# virtual methods
.method public a()I
    .locals 2

    .line 100
    sget v0, Lcom/applovin/exoplayer2/l/ai;->a:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/applovin/exoplayer2/ay;->d:Landroid/media/AudioManager;

    iget v1, p0, Lcom/applovin/exoplayer2/ay;->f:I

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamMinVolume(I)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public a(I)V
    .locals 1

    .line 86
    iget v0, p0, Lcom/applovin/exoplayer2/ay;->f:I

    if-ne v0, p1, :cond_0

    return-void

    .line 89
    :cond_0
    iput p1, p0, Lcom/applovin/exoplayer2/ay;->f:I

    .line 91
    invoke-direct {p0}, Lcom/applovin/exoplayer2/ay;->d()V

    .line 92
    iget-object v0, p0, Lcom/applovin/exoplayer2/ay;->c:Lcom/applovin/exoplayer2/ay$a;

    invoke-interface {v0, p1}, Lcom/applovin/exoplayer2/ay$a;->f(I)V

    return-void
.end method

.method public b()I
    .locals 2

    .line 108
    iget-object v0, p0, Lcom/applovin/exoplayer2/ay;->d:Landroid/media/AudioManager;

    iget v1, p0, Lcom/applovin/exoplayer2/ay;->f:I

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    return v0
.end method

.method public c()V
    .locals 3

    .line 170
    iget-object v0, p0, Lcom/applovin/exoplayer2/ay;->e:Lcom/applovin/exoplayer2/ay$b;

    if-eqz v0, :cond_0

    .line 172
    :try_start_0
    iget-object v1, p0, Lcom/applovin/exoplayer2/ay;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "StreamVolumeManager"

    const-string v2, "Error unregistering stream volume receiver"

    .line 174
    invoke-static {v1, v2, v0}, Lcom/applovin/exoplayer2/l/q;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    const/4 v0, 0x0

    .line 176
    iput-object v0, p0, Lcom/applovin/exoplayer2/ay;->e:Lcom/applovin/exoplayer2/ay$b;

    :cond_0
    return-void
.end method
