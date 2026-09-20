.class public interface abstract Lcom/t4f/anim/view/IAnimView;
.super Ljava/lang/Object;
.source "IAnimView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/t4f/anim/view/IAnimView$StatusListener;,
        Lcom/t4f/anim/view/IAnimView$MediaType;
    }
.end annotation


# virtual methods
.method public abstract asView()Landroid/view/View;
.end method

.method public abstract forcePlay()V
.end method

.method public abstract getMediaType()Lcom/t4f/anim/view/IAnimView$MediaType;
.end method

.method public abstract getStatus()Lcom/t4f/anim/model/AnimStatus;
.end method

.method public abstract handleDestroy()V
.end method

.method public abstract handleDestroyAsync(Ljava/lang/Runnable;)V
.end method

.method public abstract handlePause()V
.end method

.method public abstract handleResume()V
.end method

.method public abstract play(Lcom/t4f/anim/source/MediaSource;)V
.end method

.method public abstract playFirstFrame(Lcom/t4f/anim/source/MediaSource;)V
.end method

.method public abstract prepare(Lcom/t4f/anim/source/MediaSource;)V
.end method

.method public abstract setStatusListener(Lcom/t4f/anim/view/IAnimView$StatusListener;)V
.end method
