.class public Lcom/discord/org/webrtc/EglBase10Impl$EglConnection;
.super Ljava/lang/Object;
.source "EglBase10Impl.java"

# interfaces
.implements Lcom/discord/org/webrtc/EglBase10$EglConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/discord/org/webrtc/EglBase10Impl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EglConnection"
.end annotation


# instance fields
.field private currentSurface:Ljavax/microedition/khronos/egl/EGLSurface;

.field private final egl:Ljavax/microedition/khronos/egl/EGL10;

.field private final eglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

.field private final eglContext:Ljavax/microedition/khronos/egl/EGLContext;

.field private final eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

.field private final refCountDelegate:Lcom/discord/org/webrtc/RefCountDelegate;


# direct methods
.method public static synthetic $r8$lambda$bEzXbZAbOP8pJB2ZbBZk5yz69zY(Lcom/discord/org/webrtc/EglBase10Impl$EglConnection;)V
    .locals 0

    invoke-direct {p0}, Lcom/discord/org/webrtc/EglBase10Impl$EglConnection;->lambda$new$0()V

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    sget-object v0, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    iput-object v0, p0, Lcom/discord/org/webrtc/EglBase10Impl$EglConnection;->currentSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 121
    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    move-result-object v0

    check-cast v0, Ljavax/microedition/khronos/egl/EGL10;

    iput-object v0, p0, Lcom/discord/org/webrtc/EglBase10Impl$EglConnection;->egl:Ljavax/microedition/khronos/egl/EGL10;

    .line 122
    sget-object v0, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    iput-object v0, p0, Lcom/discord/org/webrtc/EglBase10Impl$EglConnection;->eglContext:Ljavax/microedition/khronos/egl/EGLContext;

    .line 123
    sget-object v0, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_DISPLAY:Ljavax/microedition/khronos/egl/EGLDisplay;

    iput-object v0, p0, Lcom/discord/org/webrtc/EglBase10Impl$EglConnection;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    const/4 v0, 0x0

    .line 124
    iput-object v0, p0, Lcom/discord/org/webrtc/EglBase10Impl$EglConnection;->eglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    .line 125
    new-instance v0, Lcom/discord/org/webrtc/RefCountDelegate;

    new-instance v1, Lcom/discord/org/webrtc/EglBase10Impl$EglConnection$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/discord/org/webrtc/EglBase10Impl$EglConnection$$ExternalSyntheticLambda1;-><init>()V

    invoke-direct {v0, v1}, Lcom/discord/org/webrtc/RefCountDelegate;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/discord/org/webrtc/EglBase10Impl$EglConnection;->refCountDelegate:Lcom/discord/org/webrtc/RefCountDelegate;

    return-void
.end method

.method synthetic constructor <init>(Lcom/discord/org/webrtc/EglBase10Impl$EglConnection-IA;)V
    .locals 0

    invoke-direct {p0}, Lcom/discord/org/webrtc/EglBase10Impl$EglConnection;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljavax/microedition/khronos/egl/EGLContext;[I)V
    .locals 5

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    sget-object v0, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    iput-object v0, p0, Lcom/discord/org/webrtc/EglBase10Impl$EglConnection;->currentSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 100
    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    move-result-object v0

    check-cast v0, Ljavax/microedition/khronos/egl/EGL10;

    iput-object v0, p0, Lcom/discord/org/webrtc/EglBase10Impl$EglConnection;->egl:Ljavax/microedition/khronos/egl/EGL10;

    .line 101
    invoke-static {v0}, Lcom/discord/org/webrtc/EglBase10Impl;->-$$Nest$smgetEglDisplay(Ljavax/microedition/khronos/egl/EGL10;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v1

    iput-object v1, p0, Lcom/discord/org/webrtc/EglBase10Impl$EglConnection;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 102
    invoke-static {v0, v1, p2}, Lcom/discord/org/webrtc/EglBase10Impl;->-$$Nest$smgetEglConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;[I)Ljavax/microedition/khronos/egl/EGLConfig;

    move-result-object v2

    iput-object v2, p0, Lcom/discord/org/webrtc/EglBase10Impl$EglConnection;->eglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    .line 103
    invoke-static {p2}, Lcom/discord/org/webrtc/EglBase;->getOpenGlesVersionFromConfig([I)I

    move-result p2

    .line 104
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Using OpenGL ES version "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "EglBase10Impl"

    invoke-static {v4, v3}, Lcom/discord/org/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    invoke-static {v0, p1, v1, v2, p2}, Lcom/discord/org/webrtc/EglBase10Impl;->-$$Nest$smcreateEglContext(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLContext;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object p1

    iput-object p1, p0, Lcom/discord/org/webrtc/EglBase10Impl$EglConnection;->eglContext:Ljavax/microedition/khronos/egl/EGLContext;

    .line 108
    new-instance p1, Lcom/discord/org/webrtc/RefCountDelegate;

    new-instance p2, Lcom/discord/org/webrtc/EglBase10Impl$EglConnection$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/discord/org/webrtc/EglBase10Impl$EglConnection$$ExternalSyntheticLambda0;-><init>(Lcom/discord/org/webrtc/EglBase10Impl$EglConnection;)V

    invoke-direct {p1, p2}, Lcom/discord/org/webrtc/RefCountDelegate;-><init>(Ljava/lang/Runnable;)V

    iput-object p1, p0, Lcom/discord/org/webrtc/EglBase10Impl$EglConnection;->refCountDelegate:Lcom/discord/org/webrtc/RefCountDelegate;

    return-void
.end method

.method private synthetic lambda$new$0()V
    .locals 6

    .line 109
    sget-object v0, Lcom/discord/org/webrtc/EglBase;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 110
    :try_start_0
    iget-object v1, p0, Lcom/discord/org/webrtc/EglBase10Impl$EglConnection;->egl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/discord/org/webrtc/EglBase10Impl$EglConnection;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v4, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v5, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v1, v2, v3, v4, v5}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 112
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 113
    iget-object v0, p0, Lcom/discord/org/webrtc/EglBase10Impl$EglConnection;->egl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/discord/org/webrtc/EglBase10Impl$EglConnection;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lcom/discord/org/webrtc/EglBase10Impl$EglConnection;->eglContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroyContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 114
    iget-object v0, p0, Lcom/discord/org/webrtc/EglBase10Impl$EglConnection;->egl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/discord/org/webrtc/EglBase10Impl$EglConnection;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglTerminate(Ljavax/microedition/khronos/egl/EGLDisplay;)Z

    .line 115
    sget-object v0, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    iput-object v0, p0, Lcom/discord/org/webrtc/EglBase10Impl$EglConnection;->currentSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    return-void

    :catchall_0
    move-exception v1

    .line 112
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
    .locals 7

    const-string v0, "eglDetachCurrent failed: 0x"

    .line 173
    sget-object v1, Lcom/discord/org/webrtc/EglBase;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 174
    :try_start_0
    iget-object v2, p0, Lcom/discord/org/webrtc/EglBase10Impl$EglConnection;->egl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v3, p0, Lcom/discord/org/webrtc/EglBase10Impl$EglConnection;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v4, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v5, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v6, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v2, v3, v4, v5, v6}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 179
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 180
    sget-object v0, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    iput-object v0, p0, Lcom/discord/org/webrtc/EglBase10Impl$EglConnection;->currentSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    return-void

    .line 176
    :cond_0
    :try_start_1
    new-instance v2, Landroid/opengl/GLException;

    iget-object v3, p0, Lcom/discord/org/webrtc/EglBase10Impl$EglConnection;->egl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v3}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v3

    iget-object v4, p0, Lcom/discord/org/webrtc/EglBase10Impl$EglConnection;->egl:Ljavax/microedition/khronos/egl/EGL10;

    .line 177
    invoke-interface {v4}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

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

    .line 179
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getConfig()Ljavax/microedition/khronos/egl/EGLConfig;
    .locals 1

    .line 155
    iget-object v0, p0, Lcom/discord/org/webrtc/EglBase10Impl$EglConnection;->eglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    return-object v0
.end method

.method public getContext()Ljavax/microedition/khronos/egl/EGLContext;
    .locals 1

    .line 145
    iget-object v0, p0, Lcom/discord/org/webrtc/EglBase10Impl$EglConnection;->eglContext:Ljavax/microedition/khronos/egl/EGLContext;

    return-object v0
.end method

.method public getDisplay()Ljavax/microedition/khronos/egl/EGLDisplay;
    .locals 1

    .line 150
    iget-object v0, p0, Lcom/discord/org/webrtc/EglBase10Impl$EglConnection;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    return-object v0
.end method

.method public getEgl()Ljavax/microedition/khronos/egl/EGL10;
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/discord/org/webrtc/EglBase10Impl$EglConnection;->egl:Ljavax/microedition/khronos/egl/EGL10;

    return-object v0
.end method

.method public makeCurrent(Ljavax/microedition/khronos/egl/EGLSurface;)V
    .locals 5

    const-string v0, "eglMakeCurrent failed: 0x"

    .line 159
    iget-object v1, p0, Lcom/discord/org/webrtc/EglBase10Impl$EglConnection;->egl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetCurrentContext()Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v1

    iget-object v2, p0, Lcom/discord/org/webrtc/EglBase10Impl$EglConnection;->eglContext:Ljavax/microedition/khronos/egl/EGLContext;

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/discord/org/webrtc/EglBase10Impl$EglConnection;->currentSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    if-ne v1, p1, :cond_0

    return-void

    .line 163
    :cond_0
    sget-object v1, Lcom/discord/org/webrtc/EglBase;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 164
    :try_start_0
    iget-object v2, p0, Lcom/discord/org/webrtc/EglBase10Impl$EglConnection;->egl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v3, p0, Lcom/discord/org/webrtc/EglBase10Impl$EglConnection;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v4, p0, Lcom/discord/org/webrtc/EglBase10Impl$EglConnection;->eglContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v2, v3, p1, p1, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 168
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 169
    iput-object p1, p0, Lcom/discord/org/webrtc/EglBase10Impl$EglConnection;->currentSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    return-void

    .line 165
    :cond_1
    :try_start_1
    new-instance p1, Landroid/opengl/GLException;

    iget-object v2, p0, Lcom/discord/org/webrtc/EglBase10Impl$EglConnection;->egl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v2}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v2

    iget-object v3, p0, Lcom/discord/org/webrtc/EglBase10Impl$EglConnection;->egl:Ljavax/microedition/khronos/egl/EGL10;

    .line 166
    invoke-interface {v3}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

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

    .line 168
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public release()V
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/discord/org/webrtc/EglBase10Impl$EglConnection;->refCountDelegate:Lcom/discord/org/webrtc/RefCountDelegate;

    invoke-virtual {v0}, Lcom/discord/org/webrtc/RefCountDelegate;->release()V

    return-void
.end method

.method public retain()V
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/discord/org/webrtc/EglBase10Impl$EglConnection;->refCountDelegate:Lcom/discord/org/webrtc/RefCountDelegate;

    invoke-virtual {v0}, Lcom/discord/org/webrtc/RefCountDelegate;->retain()V

    return-void
.end method
