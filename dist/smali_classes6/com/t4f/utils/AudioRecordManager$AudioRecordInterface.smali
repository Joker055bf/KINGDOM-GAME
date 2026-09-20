.class public interface abstract Lcom/t4f/utils/AudioRecordManager$AudioRecordInterface;
.super Ljava/lang/Object;
.source "AudioRecordManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/t4f/utils/AudioRecordManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "AudioRecordInterface"
.end annotation


# virtual methods
.method public abstract onRecordingFinished(ZILjava/lang/String;F)V
.end method

.method public abstract onVolumeChanged(Ljava/lang/String;)V
.end method
