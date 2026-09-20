.class public interface abstract Lcom/discord/org/webrtc/VideoEncoder$Callback;
.super Ljava/lang/Object;
.source "VideoEncoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/discord/org/webrtc/VideoEncoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation


# virtual methods
.method public abstract onEncodedFrame(Lcom/discord/org/webrtc/EncodedImage;Lcom/discord/org/webrtc/VideoEncoder$CodecSpecificInfo;)V
.end method
