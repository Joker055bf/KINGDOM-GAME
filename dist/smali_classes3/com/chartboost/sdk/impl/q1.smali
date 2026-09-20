.class public Lcom/chartboost/sdk/impl/q1;
.super Landroid/webkit/WebChromeClient;
.source "SourceFile"

# interfaces
.implements Lcom/chartboost/sdk/impl/i6$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chartboost/sdk/impl/q1$a;
    }
.end annotation


# instance fields
.field public final a:Landroid/view/View;

.field public final b:Landroid/view/ViewGroup;

.field public c:Z

.field public d:Landroid/widget/FrameLayout;

.field public e:Landroid/webkit/WebChromeClient$CustomViewCallback;

.field public f:Lcom/chartboost/sdk/impl/q1$a;

.field public final g:Lcom/chartboost/sdk/impl/p1;

.field public final h:Landroid/os/Handler;

.field public final i:Lcom/chartboost/sdk/impl/i6;

.field public final j:Lcom/chartboost/sdk/impl/u3;


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/view/ViewGroup;Lcom/chartboost/sdk/impl/p1;Landroid/os/Handler;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/chartboost/sdk/impl/q1;->a:Landroid/view/View;

    .line 3
    iput-object p2, p0, Lcom/chartboost/sdk/impl/q1;->b:Landroid/view/ViewGroup;

    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Lcom/chartboost/sdk/impl/q1;->c:Z

    .line 5
    iput-object p3, p0, Lcom/chartboost/sdk/impl/q1;->g:Lcom/chartboost/sdk/impl/p1;

    .line 6
    iput-object p4, p0, Lcom/chartboost/sdk/impl/q1;->h:Landroid/os/Handler;

    .line 7
    new-instance p1, Lcom/chartboost/sdk/impl/u3;

    invoke-direct {p1, p0, p3}, Lcom/chartboost/sdk/impl/u3;-><init>(Lcom/chartboost/sdk/impl/q1;Lcom/chartboost/sdk/impl/p1;)V

    iput-object p1, p0, Lcom/chartboost/sdk/impl/q1;->j:Lcom/chartboost/sdk/impl/u3;

    .line 8
    new-instance p1, Lcom/chartboost/sdk/impl/i6;

    invoke-direct {p1}, Lcom/chartboost/sdk/impl/i6;-><init>()V

    iput-object p1, p0, Lcom/chartboost/sdk/impl/q1;->i:Lcom/chartboost/sdk/impl/i6;

    return-void
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 3
    iget-object v0, p0, Lcom/chartboost/sdk/impl/q1;->j:Lcom/chartboost/sdk/impl/u3;

    invoke-virtual {v0, p1}, Lcom/chartboost/sdk/impl/u3;->a(Lorg/json/JSONObject;)V

    .line 5
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, -0x1

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string p1, "getMaxSize"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v1, 0x1b

    goto/16 :goto_0

    :sswitch_1
    const-string/jumbo p1, "tracking"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v1, 0x1a

    goto/16 :goto_0

    :sswitch_2
    const-string/jumbo p1, "warning"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v1, 0x19

    goto/16 :goto_0

    :sswitch_3
    const-string/jumbo p1, "totalVideoDuration"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v1, 0x18

    goto/16 :goto_0

    :sswitch_4
    const-string/jumbo p1, "videoReplay"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto/16 :goto_0

    :cond_4
    const/16 v1, 0x17

    goto/16 :goto_0

    :sswitch_5
    const-string/jumbo p1, "videoPaused"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto/16 :goto_0

    :cond_5
    const/16 v1, 0x16

    goto/16 :goto_0

    :sswitch_6
    const-string p1, "getOrientationProperties"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto/16 :goto_0

    :cond_6
    const/16 v1, 0x15

    goto/16 :goto_0

    :sswitch_7
    const-string p1, "rewardedVideoCompleted"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    goto/16 :goto_0

    :cond_7
    const/16 v1, 0x14

    goto/16 :goto_0

    :sswitch_8
    const-string p1, "getParameters"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    goto/16 :goto_0

    :cond_8
    const/16 v1, 0x13

    goto/16 :goto_0

    :sswitch_9
    const-string p1, "setOrientationProperties"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    goto/16 :goto_0

    :cond_9
    const/16 v1, 0x12

    goto/16 :goto_0

    :sswitch_a
    const-string p1, "error"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a

    goto/16 :goto_0

    :cond_a
    const/16 v1, 0x11

    goto/16 :goto_0

    :sswitch_b
    const-string p1, "debug"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b

    goto/16 :goto_0

    :cond_b
    const/16 v1, 0x10

    goto/16 :goto_0

    :sswitch_c
    const-string p1, "close"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_c

    goto/16 :goto_0

    :cond_c
    const/16 v1, 0xf

    goto/16 :goto_0

    :sswitch_d
    const-string p1, "click"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_d

    goto/16 :goto_0

    :cond_d
    const/16 v1, 0xe

    goto/16 :goto_0

    :sswitch_e
    const-string/jumbo p1, "show"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_e

    goto/16 :goto_0

    :cond_e
    const/16 v1, 0xd

    goto/16 :goto_0

    :sswitch_f
    const-string p1, "mute"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_f

    goto/16 :goto_0

    :cond_f
    const/16 v1, 0xc

    goto/16 :goto_0

    :sswitch_10
    const-string p1, "pauseVideo"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_10

    goto/16 :goto_0

    :cond_10
    const/16 v1, 0xb

    goto/16 :goto_0

    :sswitch_11
    const-string/jumbo p1, "videoPlaying"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_11

    goto/16 :goto_0

    :cond_11
    const/16 v1, 0xa

    goto/16 :goto_0

    :sswitch_12
    const-string p1, "getScreenSize"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_12

    goto/16 :goto_0

    :cond_12
    const/16 v1, 0x9

    goto/16 :goto_0

    :sswitch_13
    const-string/jumbo p1, "unmute"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_13

    goto/16 :goto_0

    :cond_13
    const/16 v1, 0x8

    goto/16 :goto_0

    :sswitch_14
    const-string p1, "reward"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_14

    goto :goto_0

    :cond_14
    const/4 v1, 0x7

    goto :goto_0

    :sswitch_15
    const-string/jumbo p1, "videoCompleted"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_15

    goto :goto_0

    :cond_15
    const/4 v1, 0x6

    goto :goto_0

    :sswitch_16
    const-string p1, "openUrl"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_16

    goto :goto_0

    :cond_16
    const/4 v1, 0x5

    goto :goto_0

    :sswitch_17
    const-string p1, "currentVideoDuration"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_17

    goto :goto_0

    :cond_17
    const/4 v1, 0x4

    goto :goto_0

    :sswitch_18
    const-string p1, "getCurrentPosition"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_18

    goto :goto_0

    :cond_18
    const/4 v1, 0x3

    goto :goto_0

    :sswitch_19
    const-string p1, "playVideo"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_19

    goto :goto_0

    :cond_19
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_1a
    const-string p1, "getDefaultPosition"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1a

    goto :goto_0

    :cond_1a
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_1b
    const-string p1, "closeVideo"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1b

    goto :goto_0

    :cond_1b
    move v1, v0

    :goto_0
    const-string p1, " callback triggered."

    const-string v2, "CBWebChromeClient"

    const-string v3, "JavaScript to native "

    packed-switch v1, :pswitch_data_0

    .line 139
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " callback not recognized."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "Function name not recognized."

    return-object p1

    .line 141
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    iget-object p1, p0, Lcom/chartboost/sdk/impl/q1;->g:Lcom/chartboost/sdk/impl/p1;

    invoke-virtual {p1}, Lcom/chartboost/sdk/impl/p1;->o()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 213
    :pswitch_1
    iget-object v0, p0, Lcom/chartboost/sdk/impl/q1;->h:Landroid/os/Handler;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/q1;->j:Lcom/chartboost/sdk/impl/u3;

    iget-object v1, v1, Lcom/chartboost/sdk/impl/u3;->l:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_3

    .line 214
    :pswitch_2
    const-class v0, Lcom/chartboost/sdk/impl/s1;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Javascript warning occurred"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    iget-object v0, p0, Lcom/chartboost/sdk/impl/q1;->h:Landroid/os/Handler;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/q1;->j:Lcom/chartboost/sdk/impl/u3;

    iget-object v1, v1, Lcom/chartboost/sdk/impl/u3;->q:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_3

    .line 216
    :pswitch_3
    iget-object v0, p0, Lcom/chartboost/sdk/impl/q1;->h:Landroid/os/Handler;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/q1;->j:Lcom/chartboost/sdk/impl/u3;

    iget-object v1, v1, Lcom/chartboost/sdk/impl/u3;->k:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_3

    .line 217
    :pswitch_4
    iget-object v0, p0, Lcom/chartboost/sdk/impl/q1;->h:Landroid/os/Handler;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/q1;->j:Lcom/chartboost/sdk/impl/u3;

    iget-object v1, v1, Lcom/chartboost/sdk/impl/u3;->p:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_3

    .line 218
    :pswitch_5
    iget-object v0, p0, Lcom/chartboost/sdk/impl/q1;->h:Landroid/os/Handler;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/q1;->j:Lcom/chartboost/sdk/impl/u3;

    iget-object v1, v1, Lcom/chartboost/sdk/impl/u3;->n:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_3

    .line 219
    :pswitch_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    iget-object p1, p0, Lcom/chartboost/sdk/impl/q1;->g:Lcom/chartboost/sdk/impl/p1;

    invoke-virtual {p1}, Lcom/chartboost/sdk/impl/p1;->p()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 294
    :pswitch_7
    iget-object v0, p0, Lcom/chartboost/sdk/impl/q1;->h:Landroid/os/Handler;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/q1;->j:Lcom/chartboost/sdk/impl/u3;

    iget-object v1, v1, Lcom/chartboost/sdk/impl/u3;->s:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_3

    .line 295
    :pswitch_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    iget-object p1, p0, Lcom/chartboost/sdk/impl/q1;->g:Lcom/chartboost/sdk/impl/p1;

    iget-object p1, p1, Lcom/chartboost/sdk/impl/p1;->C:Lcom/chartboost/sdk/internal/Model/a;

    if-eqz p1, :cond_1e

    .line 297
    iget-object p1, p1, Lcom/chartboost/sdk/internal/Model/a;->r:Lcom/chartboost/sdk/impl/k;

    if-eqz p1, :cond_1e

    new-array p2, v0, [Lcom/chartboost/sdk/impl/b1$a;

    .line 299
    invoke-static {p2}, Lcom/chartboost/sdk/impl/b1;->a([Lcom/chartboost/sdk/impl/b1$a;)Lorg/json/JSONObject;

    move-result-object p2

    .line 300
    invoke-virtual {p1}, Lcom/chartboost/sdk/impl/k;->n()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 301
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {p2, v2, v1}, Lcom/chartboost/sdk/impl/b1;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    .line 303
    :cond_1c
    invoke-virtual {p1}, Lcom/chartboost/sdk/impl/k;->d()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 304
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/chartboost/sdk/impl/k0;

    .line 305
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v1, Lcom/chartboost/sdk/impl/k0;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, v1, Lcom/chartboost/sdk/impl/k0;->b:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v0, v1}, Lcom/chartboost/sdk/impl/b1;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    .line 307
    :cond_1d
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1e
    const-string/jumbo p1, "{}"

    return-object p1

    .line 393
    :pswitch_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    iget-object v0, p0, Lcom/chartboost/sdk/impl/q1;->h:Landroid/os/Handler;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/q1;->j:Lcom/chartboost/sdk/impl/u3;

    iget-object v1, v1, Lcom/chartboost/sdk/impl/u3;->r:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_3

    .line 395
    :pswitch_a
    const-class v0, Lcom/chartboost/sdk/impl/s1;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Javascript Error occured"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    iget-object v0, p0, Lcom/chartboost/sdk/impl/q1;->h:Landroid/os/Handler;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/q1;->j:Lcom/chartboost/sdk/impl/u3;

    iget-object v1, v1, Lcom/chartboost/sdk/impl/u3;->h:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_3

    .line 405
    :pswitch_b
    iget-object v0, p0, Lcom/chartboost/sdk/impl/q1;->h:Landroid/os/Handler;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/q1;->j:Lcom/chartboost/sdk/impl/u3;

    iget-object v1, v1, Lcom/chartboost/sdk/impl/u3;->g:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_3

    .line 406
    :pswitch_c
    iget-object v0, p0, Lcom/chartboost/sdk/impl/q1;->h:Landroid/os/Handler;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/q1;->j:Lcom/chartboost/sdk/impl/u3;

    iget-object v1, v1, Lcom/chartboost/sdk/impl/u3;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_3

    .line 407
    :pswitch_d
    iget-object v0, p0, Lcom/chartboost/sdk/impl/q1;->h:Landroid/os/Handler;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/q1;->j:Lcom/chartboost/sdk/impl/u3;

    iget-object v1, v1, Lcom/chartboost/sdk/impl/u3;->d:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_3

    .line 440
    :pswitch_e
    iget-object v0, p0, Lcom/chartboost/sdk/impl/q1;->h:Landroid/os/Handler;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/q1;->j:Lcom/chartboost/sdk/impl/u3;

    iget-object v1, v1, Lcom/chartboost/sdk/impl/u3;->j:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_3

    .line 494
    :pswitch_f
    iget-object v0, p0, Lcom/chartboost/sdk/impl/q1;->h:Landroid/os/Handler;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/q1;->j:Lcom/chartboost/sdk/impl/u3;

    iget-object v1, v1, Lcom/chartboost/sdk/impl/u3;->x:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_3

    .line 495
    :pswitch_10
    iget-object v0, p0, Lcom/chartboost/sdk/impl/q1;->h:Landroid/os/Handler;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/q1;->j:Lcom/chartboost/sdk/impl/u3;

    iget-object v1, v1, Lcom/chartboost/sdk/impl/u3;->v:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_3

    .line 496
    :pswitch_11
    iget-object v0, p0, Lcom/chartboost/sdk/impl/q1;->h:Landroid/os/Handler;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/q1;->j:Lcom/chartboost/sdk/impl/u3;

    iget-object v1, v1, Lcom/chartboost/sdk/impl/u3;->o:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_3

    .line 497
    :pswitch_12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    iget-object p1, p0, Lcom/chartboost/sdk/impl/q1;->g:Lcom/chartboost/sdk/impl/p1;

    invoke-virtual {p1}, Lcom/chartboost/sdk/impl/p1;->q()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 604
    :pswitch_13
    iget-object v0, p0, Lcom/chartboost/sdk/impl/q1;->h:Landroid/os/Handler;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/q1;->j:Lcom/chartboost/sdk/impl/u3;

    iget-object v1, v1, Lcom/chartboost/sdk/impl/u3;->y:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_3

    .line 605
    :pswitch_14
    iget-object v0, p0, Lcom/chartboost/sdk/impl/q1;->h:Landroid/os/Handler;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/q1;->j:Lcom/chartboost/sdk/impl/u3;

    iget-object v1, v1, Lcom/chartboost/sdk/impl/u3;->t:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_3

    .line 606
    :pswitch_15
    iget-object v0, p0, Lcom/chartboost/sdk/impl/q1;->h:Landroid/os/Handler;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/q1;->j:Lcom/chartboost/sdk/impl/u3;

    iget-object v1, v1, Lcom/chartboost/sdk/impl/u3;->m:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_3

    .line 653
    :pswitch_16
    iget-object v0, p0, Lcom/chartboost/sdk/impl/q1;->h:Landroid/os/Handler;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/q1;->j:Lcom/chartboost/sdk/impl/u3;

    iget-object v1, v1, Lcom/chartboost/sdk/impl/u3;->i:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_3

    .line 654
    :pswitch_17
    iget-object v0, p0, Lcom/chartboost/sdk/impl/q1;->h:Landroid/os/Handler;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/q1;->j:Lcom/chartboost/sdk/impl/u3;

    iget-object v1, v1, Lcom/chartboost/sdk/impl/u3;->f:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_3

    .line 655
    :pswitch_18
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 656
    iget-object p1, p0, Lcom/chartboost/sdk/impl/q1;->g:Lcom/chartboost/sdk/impl/p1;

    invoke-virtual {p1}, Lcom/chartboost/sdk/impl/p1;->j()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 742
    :pswitch_19
    iget-object v0, p0, Lcom/chartboost/sdk/impl/q1;->h:Landroid/os/Handler;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/q1;->j:Lcom/chartboost/sdk/impl/u3;

    iget-object v1, v1, Lcom/chartboost/sdk/impl/u3;->u:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_3

    .line 743
    :pswitch_1a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 744
    iget-object p1, p0, Lcom/chartboost/sdk/impl/q1;->g:Lcom/chartboost/sdk/impl/p1;

    invoke-virtual {p1}, Lcom/chartboost/sdk/impl/p1;->k()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 834
    :pswitch_1b
    iget-object v0, p0, Lcom/chartboost/sdk/impl/q1;->h:Landroid/os/Handler;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/q1;->j:Lcom/chartboost/sdk/impl/u3;

    iget-object v1, v1, Lcom/chartboost/sdk/impl/u3;->w:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 849
    :goto_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "Native function successfully called."

    return-object p1

    :sswitch_data_0
    .sparse-switch
        -0x7b64be9d -> :sswitch_1b
        -0x77f32bac -> :sswitch_1a
        -0x706c8659 -> :sswitch_19
        -0x68b9fc74 -> :sswitch_18
        -0x5ca105ca -> :sswitch_17
        -0x4b4af53b -> :sswitch_16
        -0x40bd23f0 -> :sswitch_15
        -0x37b0b0d1 -> :sswitch_14
        -0x321793ce -> :sswitch_13
        -0x2aa0497d -> :sswitch_12
        -0x26309ccd -> :sswitch_11
        -0x353b7db -> :sswitch_10
        0x335219 -> :sswitch_f
        0x35dafd -> :sswitch_e
        0x5a5c588 -> :sswitch_d
        0x5a5ddf8 -> :sswitch_c
        0x5b09653 -> :sswitch_b
        0x5c4d208 -> :sswitch_a
        0x7f3dfe1 -> :sswitch_9
        0x99879e0 -> :sswitch_8
        0x20ccc3be -> :sswitch_7
        0x37e12d6d -> :sswitch_6
        0x38011189 -> :sswitch_5
        0x3ba0c042 -> :sswitch_4
        0x4089de4b -> :sswitch_3
        0x4305af9c -> :sswitch_2
        0x4bba1eb7 -> :sswitch_1
        0x701ce34f -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/chartboost/sdk/impl/q1;->i:Lcom/chartboost/sdk/impl/i6;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1, p0}, Lcom/chartboost/sdk/impl/i6;->a(Ljava/lang/String;Lcom/chartboost/sdk/impl/i6$a;)V

    :cond_0
    return-void
.end method

.method public a(Lorg/json/JSONObject;)V
    .locals 1

    const-string v0, "error"

    .line 851
    invoke-virtual {p0, p1, v0}, Lcom/chartboost/sdk/impl/q1;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method public onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->message()Ljava/lang/String;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Chartboost Webview:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " -- From line "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3
    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->lineNumber()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 4
    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->sourceId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "q1"

    .line 5
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/impl/q1;->a(Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method

.method public onHideCustomView()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/chartboost/sdk/impl/q1;->c:Z

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/chartboost/sdk/impl/q1;->b:Landroid/view/ViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 4
    iget-object v0, p0, Lcom/chartboost/sdk/impl/q1;->b:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/q1;->d:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 5
    iget-object v0, p0, Lcom/chartboost/sdk/impl/q1;->a:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 8
    iget-object v0, p0, Lcom/chartboost/sdk/impl/q1;->e:Landroid/webkit/WebChromeClient$CustomViewCallback;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v2, ".chromium."

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 9
    iget-object v0, p0, Lcom/chartboost/sdk/impl/q1;->e:Landroid/webkit/WebChromeClient$CustomViewCallback;

    invoke-interface {v0}, Landroid/webkit/WebChromeClient$CustomViewCallback;->onCustomViewHidden()V

    .line 13
    :cond_0
    iput-boolean v1, p0, Lcom/chartboost/sdk/impl/q1;->c:Z

    const/4 v0, 0x0

    .line 14
    iput-object v0, p0, Lcom/chartboost/sdk/impl/q1;->d:Landroid/widget/FrameLayout;

    .line 15
    iput-object v0, p0, Lcom/chartboost/sdk/impl/q1;->e:Landroid/webkit/WebChromeClient$CustomViewCallback;

    .line 18
    iget-object v0, p0, Lcom/chartboost/sdk/impl/q1;->f:Lcom/chartboost/sdk/impl/q1$a;

    if-eqz v0, :cond_1

    .line 19
    invoke-interface {v0, v1}, Lcom/chartboost/sdk/impl/q1$a;->a(Z)V

    :cond_1
    return-void
.end method

.method public onJsPrompt(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z
    .locals 0

    const/4 p1, 0x1

    .line 1
    :try_start_0
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2, p3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p3, "eventType"

    .line 2
    invoke-virtual {p2, p3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const-string p4, "eventArgs"

    .line 3
    invoke-virtual {p2, p4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    invoke-virtual {p0, p2, p3}, Lcom/chartboost/sdk/impl/q1;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 10
    invoke-virtual {p5, p2}, Landroid/webkit/JsPromptResult;->confirm(Ljava/lang/String;)V

    return p1

    :catch_0
    const-string p2, "CBWebChromeClient"

    const-string p3, "Exception caught parsing the function name from js to native"

    .line 11
    invoke-static {p2, p3}, Lcom/chartboost/sdk/impl/s3;->b(Ljava/lang/String;Ljava/lang/String;)V

    return p1
.end method

.method public onShowCustomView(Landroid/view/View;ILandroid/webkit/WebChromeClient$CustomViewCallback;)V
    .locals 0

    .line 18
    invoke-virtual {p0, p1, p3}, Lcom/chartboost/sdk/impl/q1;->onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V

    return-void
.end method

.method public onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V
    .locals 3

    .line 1
    instance-of v0, p1, Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    .line 3
    check-cast p1, Landroid/widget/FrameLayout;

    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lcom/chartboost/sdk/impl/q1;->c:Z

    .line 7
    iput-object p1, p0, Lcom/chartboost/sdk/impl/q1;->d:Landroid/widget/FrameLayout;

    .line 8
    iput-object p2, p0, Lcom/chartboost/sdk/impl/q1;->e:Landroid/webkit/WebChromeClient$CustomViewCallback;

    .line 11
    iget-object p1, p0, Lcom/chartboost/sdk/impl/q1;->a:Landroid/view/View;

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 12
    iget-object p1, p0, Lcom/chartboost/sdk/impl/q1;->b:Landroid/view/ViewGroup;

    iget-object p2, p0, Lcom/chartboost/sdk/impl/q1;->d:Landroid/widget/FrameLayout;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p1, p2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 13
    iget-object p1, p0, Lcom/chartboost/sdk/impl/q1;->b:Landroid/view/ViewGroup;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 16
    iget-object p1, p0, Lcom/chartboost/sdk/impl/q1;->f:Lcom/chartboost/sdk/impl/q1$a;

    if-eqz p1, :cond_0

    .line 17
    invoke-interface {p1, v0}, Lcom/chartboost/sdk/impl/q1$a;->a(Z)V

    :cond_0
    return-void
.end method
