.class public interface abstract Lcom/discord/org/webrtc/EglBase10$EglConnection;
.super Ljava/lang/Object;
.source "EglBase10.java"

# interfaces
.implements Lcom/discord/org/webrtc/EglBase$EglConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/discord/org/webrtc/EglBase10;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "EglConnection"
.end annotation


# virtual methods
.method public abstract getConfig()Ljavax/microedition/khronos/egl/EGLConfig;
.end method

.method public abstract getContext()Ljavax/microedition/khronos/egl/EGLContext;
.end method

.method public abstract getDisplay()Ljavax/microedition/khronos/egl/EGLDisplay;
.end method

.method public abstract getEgl()Ljavax/microedition/khronos/egl/EGL10;
.end method
