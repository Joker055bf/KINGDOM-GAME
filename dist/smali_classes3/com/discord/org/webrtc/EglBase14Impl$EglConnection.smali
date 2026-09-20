.class public Lcom/discord/org/webrtc/EglBase14Impl$EglConnection;
.super Ljava/lang/Object;
.source "EglBase14Impl.java"

# interfaces
.implements Lcom/discord/org/webrtc/EglBase14$EglConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/discord/org/webrtc/EglBase14Impl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EglConnection"
.end annotation


# instance fields
.field private currentSurface:Landroid/opengl/EGLSurface;

.field private final eglConfig:Landroid/opengl/EGLConfig;

.field private final eglContext:Landroid/opengl/EGLContext;

.field private final eglDisplay:Landroid/opengl/EGLDisplay;

.field private final refCountDelegate:Lcom/discord/org/webrtc/RefCountDelegate;


# direct methods
.method public static synthetic $r8$lambda$s3qqOuGLXq4d9IRoCR2BSxWRnTE(Lcom/discord/org/webrtc/EglBase14Impl$EglConnection;)V
    .locals 0

    invoke-direct {p0}, Lcom/discord/org/webrtc/EglBase14Impl$EglConnection;->lambda$new$0()V

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    iput-object v0, p0, Lcom/discord/org/webrtc/EglBase14Impl$EglConnection;->currentSurface:Landroid/opengl/EGLSurface;

    .line 83
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    iput-object v0, p0, Lcom/discord/org/webrtc/EglBase14Impl$EglConnection;->eglContext:Landroid/opengl/EGLContext;

    .line 84
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    iput-object v0, p0, Lcom/discord/org/webrtc/EglBase14Impl$EglConnection;->eglDisplay:Landroid/opengl/EGLDisplay;

    const/4 v0, 0x0

    .line 85
    iput-object v0, p0, Lcom/discord/org/webrtc/EglBase14Impl$EglConnection;->eglConfig:Landroid/opengl/EGLConfig;

    .line 86
    new-instance v0, Lcom/discord/org/webrtc/RefCountDelegate;

    new-instance v1, Lcom/discord/org/webrtc/EglBase14Impl$EglConnection$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/discord/org/webrtc/EglBase14Impl$EglConnection$$ExternalSyntheticLambda1;-><init>()V

    invoke-direct {v0, v1}, Lcom/discord/org/webrtc/RefCountDelegate;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/discord/org/webrtc/EglBase14Impl$EglConnection;->refCountDelegate:Lcom/discord/org/webrtc/RefCountDelegate;

    return-void
.end method

.method public constructor <init>(Landroid/opengl/EGLContext;[I)V
    .locals 4

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    iput-object v0, p0, Lcom/discord/org/webrtc/EglBase14Impl$EglConnection;->currentSurface:Landroid/opengl/EGLSurface;

    .line 62
    invoke-static {}, Lcom/discord/org/webrtc/EglBase14Impl;->-$$Nest$smgetEglDisplay()Landroid/opengl/EGLDisplay;

    move-result-object v0

    iput-object v0, p0, Lcom/discord/org/webrtc/EglBase14Impl$EglConnection;->eglDisplay:Landroid/opengl/EGLDisplay;

    .line 63
    invoke-static {v0, p2}, Lcom/discord/org/webrtc/EglBase14Impl;->-$$Nest$smgetEglConfig(Landroid/opengl/EGLDisplay;[I)Landroid/opengl/EGLConfig;

    move-result-object v1

    iput-object v1, p0, Lcom/discord/org/webrtc/EglBase14Impl$EglConnection;->eglConfig:Landroid/opengl/EGLConfig;

    .line 64
    invoke-static {p2}, Lcom/discord/org/webrtc/EglBase;->getOpenGlesVersionFromConfig([I)I

    move-result p2

    .line 65
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Using OpenGL ES version "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "EglBase14Impl"

    invoke-static {v3, v2}, Lcom/discord/org/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    invoke-static {p1, v0, v1, p2}, Lcom/discord/org/webrtc/EglBase14Impl;->-$$Nest$smcreateEglContext(Landroid/opengl/EGLContext;Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;I)Landroid/opengl/EGLContext;

    move-result-object p1

    iput-object p1, p0, Lcom/discord/org/webrtc/EglBase14Impl$EglConnection;->eglContext:Landroid/opengl/EGLContext;

    .line 69
    new-instance p1, Lcom/discord/org/webrtc/RefCountDelegate;

    new-instance p2, Lcom/discord/org/webrtc/EglBase14Impl$EglConnection$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/discord/org/webrtc/EglBase14Impl$EglConnection$$ExternalSyntheticLambda0;-><init>(Lcom/discord/org/webrtc/EglBase14Impl$EglConnection;)V

    invoke-direct {p1, p2}, Lcom/discord/org/webrtc/RefCountDelegate;-><init>(Ljava/lang/Runnable;)V

    iput-object p1, p0, Lcom/discord/org/webrtc/EglBase14Impl$EglConnection;->refCountDelegate:Lcom/discord/org/webrtc/RefCountDelegate;

    return-void
.end method

.method synthetic constructor <init>(Lcom/discord/org/webrtc/EglBase14Impl$EglConnection-IA;)V
    .locals 0

    invoke-direct {p0}, Lcom/discord/org/webrtc/EglBase14Impl$EglConnection;-><init>()V

    return-void
.end method

.method private synthetic lambda$new$0()V
    .locals 5

    .line 70
    sget-object v0, Lcom/discord/org/webrtc/EglBase;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 71
    :try_start_0
    iget-object v1, p0, Lcom/discord/org/webrtc/EglBase14Impl$EglConnection;->eglDisplay:Landroid/opengl/EGLDisplay;

    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    sget-object v3, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    sget-object v4, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    invoke-static {v1, v2, v3, v4}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    .line 73
    iget-object v1, p0, Lcom/discord/org/webrtc/EglBase14Impl$EglConnection;->eglDisplay:Landroid/opengl/EGLDisplay;

    iget-object v2, p0, Lcom/discord/org/webrtc/EglBase14Impl$EglConnection;->eglContext:Landroid/opengl/EGLContext;

    invoke-static {v1, v2}, Landroid/opengl/EGL14;->eglDestroyContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLContext;)Z

    .line 74
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    invoke-static {}, Landroid/opengl/EGL14;->eglReleaseThread()Z

    .line 76
    iget-object v0, p0, Lcom/discord/org/webrtc/EglBase14Impl$EglConnection;->eglDisplay:Landroid/opengl/EGLDisplay;

    invoke-static {v0}, Landroid/opengl/EGL14;->eglTerminate(Landroid/opengl/EGLDisplay;)Z

    .line 77
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    iput-object v0, p0, Lcom/discord/org/webrtc/EglBase14Impl$EglConnection;->currentSurface:Landroid/opengl/EGLSurface;

    return-void

    :catchall_0
    move-exception v1

    .line 74
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method static synthetic lambda$new$1()V
    .locals 0

    return-void
.end method


# virtual methods
.method public detachCurrent()V
    .locals 6

    const-string v0, "eglDetachCurrent failed: 0x"

    .line 129
    sget-object v1, Lcom/discord/org/webrtc/EglBase;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 130
    :try_start_0
    iget-object v2, p0, Lcom/discord/org/webrtc/EglBase14Impl$EglConnection;->eglDisplay:Landroid/opengl/EGLDisplay;

    sget-object v3, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    sget-object v4, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    sget-object v5, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    invoke-static {v2, v3, v4, v5}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 135
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 136
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    iput-object v0, p0, Lcom/discord/org/webrtc/EglBase14Impl$EglConnection;->currentSurface:Landroid/opengl/EGLSurface;

    return-void

    .line 132
    :cond_0
    :try_start_1
    new-instance v2, Landroid/opengl/GLException;

    invoke-static {}, Landroid/opengl/EGL14;->eglGetError()I

    move-result v3

    .line 133
    invoke-static {}, Landroid/opengl/EGL14;->eglGetError()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Landroid/opengl/GLException;-><init>(ILjava/lang/String;)V

    throw v2

    :catchall_0
    move-exception v0

    .line 135
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getConfig()Landroid/opengl/EGLConfig;
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/discord/org/webrtc/EglBase14Impl$EglConnection;->eglConfig:Landroid/opengl/EGLConfig;

    return-object v0
.end method

.method public getContext()Landroid/opengl/EGLContext;
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/discord/org/webrtc/EglBase14Impl$EglConnection;->eglContext:Landroid/opengl/EGLContext;

    return-object v0
.end method

.method public getDisplay()Landroid/opengl/EGLDisplay;
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/discord/org/webrtc/EglBase14Impl$EglConnection;->eglDisplay:Landroid/opengl/EGLDisplay;

    return-object v0
.end method

.method public makeCurrent(Landroid/opengl/EGLSurface;)V
    .locals 5

    const-string v0, "eglMakeCurrent failed: 0x"

    .line 115
    invoke-static {}, Landroid/opengl/EGL14;->eglGetCurrentContext()Landroid/opengl/EGLContext;

    move-result-object v1

    iget-object v2, p0, Lcom/discord/org/webrtc/EglBase14Impl$EglConnection;->eglContext:Landroid/opengl/EGLContext;

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/discord/org/webrtc/EglBase14Impl$EglConnection;->currentSurface:Landroid/opengl/EGLSurface;

    if-ne v1, p1, :cond_0

    return-void

    .line 119
    :cond_0
    sget-object v1, Lcom/discord/org/webrtc/EglBase;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 120
    :try_start_0
    iget-object v2, p0, Lcom/discord/org/webrtc/EglBase14Impl$EglConnection;->eglDisplay:Landroid/opengl/EGLDisplay;

    iget-object v3, p0, Lcom/discord/org/webrtc/EglBase14Impl$EglConnection;->eglContext:Landroid/opengl/EGLContext;

    invoke-static {v2, p1, p1, v3}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 124
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 125
    iput-object p1, p0, Lcom/discord/org/webrtc/EglBase14Impl$EglConnection;->currentSurface:Landroid/opengl/EGLSurface;

    return-void

    .line 121
    :cond_1
    :try_start_1
    new-instance p1, Landroid/opengl/GLException;

    invoke-static {}, Landroid/opengl/EGL14;->eglGetError()I

    move-result v2

    .line 122
    invoke-static {}, Landroid/opengl/EGL14;->eglGetError()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v2, v0}, Landroid/opengl/GLException;-><init>(ILjava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    .line 124
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public release()V
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/discord/org/webrtc/EglBase14Impl$EglConnection;->refCountDelegate:Lcom/discord/org/webrtc/RefCountDelegate;

    invoke-virtual {v0}, Lcom/discord/org/webrtc/RefCountDelegate;->release()V

    return-void
.end method

.method public retain()V
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/discord/org/webrtc/EglBase14Impl$EglConnection;->refCountDelegate:Lcom/discord/org/webrtc/RefCountDelegate;

    invoke-virtual {v0}, Lcom/discord/org/webrtc/RefCountDelegate;->retain()V

    return-void
.end method
