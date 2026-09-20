.class Lcom/discord/org/webrtc/EglBase14Impl;
.super Ljava/lang/Object;
.source "EglBase14Impl.java"

# interfaces
.implements Lcom/discord/org/webrtc/EglBase14;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/discord/org/webrtc/EglBase14Impl$EglConnection;,
        Lcom/discord/org/webrtc/EglBase14Impl$Context;
    }
.end annotation


# static fields
.field private static final EGL_NO_CONNECTION:Lcom/discord/org/webrtc/EglBase14Impl$EglConnection;

.field private static final TAG:Ljava/lang/String; = "EglBase14Impl"


# instance fields
.field private eglConnection:Lcom/discord/org/webrtc/EglBase14Impl$EglConnection;

.field private eglSurface:Landroid/opengl/EGLSurface;


# direct methods
.method static bridge synthetic -$$Nest$smcreateEglContext(Landroid/opengl/EGLContext;Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;I)Landroid/opengl/EGLContext;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/discord/org/webrtc/EglBase14Impl;->createEglContext(Landroid/opengl/EGLContext;Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;I)Landroid/opengl/EGLContext;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$smgetEglConfig(Landroid/opengl/EGLDisplay;[I)Landroid/opengl/EGLConfig;
    .locals 0

    invoke-static {p0, p1}, Lcom/discord/org/webrtc/EglBase14Impl;->getEglConfig(Landroid/opengl/EGLDisplay;[I)Landroid/opengl/EGLConfig;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$smgetEglDisplay()Landroid/opengl/EGLDisplay;
    .locals 1

    invoke-static {}, Lcom/discord/org/webrtc/EglBase14Impl;->getEglDisplay()Landroid/opengl/EGLDisplay;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 31
    new-instance v0, Lcom/discord/org/webrtc/EglBase14Impl$EglConnection;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/discord/org/webrtc/EglBase14Impl$EglConnection;-><init>(Lcom/discord/org/webrtc/EglBase14Impl$EglConnection-IA;)V

    sput-object v0, Lcom/discord/org/webrtc/EglBase14Impl;->EGL_NO_CONNECTION:Lcom/discord/org/webrtc/EglBase14Impl$EglConnection;

    return-void
.end method

.method public constructor <init>(Landroid/opengl/EGLContext;[I)V
    .locals 1

    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    iput-object v0, p0, Lcom/discord/org/webrtc/EglBase14Impl;->eglSurface:Landroid/opengl/EGLSurface;

    .line 142
    new-instance v0, Lcom/discord/org/webrtc/EglBase14Impl$EglConnection;

    invoke-direct {v0, p1, p2}, Lcom/discord/org/webrtc/EglBase14Impl$EglConnection;-><init>(Landroid/opengl/EGLContext;[I)V

    iput-object v0, p0, Lcom/discord/org/webrtc/EglBase14Impl;->eglConnection:Lcom/discord/org/webrtc/EglBase14Impl$EglConnection;

    return-void
.end method

.method public constructor <init>(Lcom/discord/org/webrtc/EglBase14Impl$EglConnection;)V
    .locals 1

    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    iput-object v0, p0, Lcom/discord/org/webrtc/EglBase14Impl;->eglSurface:Landroid/opengl/EGLSurface;

    .line 147
    iput-object p1, p0, Lcom/discord/org/webrtc/EglBase14Impl;->eglConnection:Lcom/discord/org/webrtc/EglBase14Impl$EglConnection;

    .line 148
    invoke-virtual {p1}, Lcom/discord/org/webrtc/EglBase14Impl$EglConnection;->retain()V

    return-void
.end method

.method private checkIsNotReleased()V
    .locals 2

    .line 235
    iget-object v0, p0, Lcom/discord/org/webrtc/EglBase14Impl;->eglConnection:Lcom/discord/org/webrtc/EglBase14Impl$EglConnection;

    sget-object v1, Lcom/discord/org/webrtc/EglBase14Impl;->EGL_NO_CONNECTION:Lcom/discord/org/webrtc/EglBase14Impl$EglConnection;

    if-eq v0, v1, :cond_0

    return-void

    .line 236
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "This object has been released"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static createEglContext(Landroid/opengl/EGLContext;Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;I)Landroid/opengl/EGLContext;
    .locals 3

    if-eqz p0, :cond_1

    .line 325
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    if-eq p0, v0, :cond_0

    goto :goto_0

    .line 326
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Invalid sharedContext"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    const/4 v0, 0x3

    new-array v0, v0, [I

    const/16 v1, 0x3098

    const/4 v2, 0x0

    aput v1, v0, v2

    const/4 v1, 0x1

    aput p3, v0, v1

    const/4 p3, 0x2

    const/16 v1, 0x3038

    aput v1, v0, p3

    if-nez p0, :cond_2

    .line 329
    sget-object p0, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    .line 331
    :cond_2
    sget-object p3, Lcom/discord/org/webrtc/EglBase;->lock:Ljava/lang/Object;

    monitor-enter p3

    .line 332
    :try_start_0
    invoke-static {p1, p2, p0, v0, v2}, Landroid/opengl/EGL14;->eglCreateContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Landroid/opengl/EGLContext;[II)Landroid/opengl/EGLContext;

    move-result-object p0

    .line 333
    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 334
    sget-object p1, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    if-eq p0, p1, :cond_3

    return-object p0

    .line 335
    :cond_3
    new-instance p0, Landroid/opengl/GLException;

    invoke-static {}, Landroid/opengl/EGL14;->eglGetError()I

    move-result p1

    .line 336
    invoke-static {}, Landroid/opengl/EGL14;->eglGetError()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "Failed to create EGL context: 0x"

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Landroid/opengl/GLException;-><init>(ILjava/lang/String;)V

    throw p0

    :catchall_0
    move-exception p0

    .line 333
    :try_start_1
    monitor-exit p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private createSurfaceInternal(Ljava/lang/Object;)V
    .locals 4

    .line 165
    instance-of v0, p1, Landroid/view/Surface;

    if-nez v0, :cond_1

    instance-of v0, p1, Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 166
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Input must be either a Surface or SurfaceTexture"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 168
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/discord/org/webrtc/EglBase14Impl;->checkIsNotReleased()V

    .line 169
    iget-object v0, p0, Lcom/discord/org/webrtc/EglBase14Impl;->eglSurface:Landroid/opengl/EGLSurface;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    if-ne v0, v1, :cond_3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/16 v1, 0x3038

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 173
    iget-object v1, p0, Lcom/discord/org/webrtc/EglBase14Impl;->eglConnection:Lcom/discord/org/webrtc/EglBase14Impl$EglConnection;

    .line 174
    invoke-virtual {v1}, Lcom/discord/org/webrtc/EglBase14Impl$EglConnection;->getDisplay()Landroid/opengl/EGLDisplay;

    move-result-object v1

    iget-object v3, p0, Lcom/discord/org/webrtc/EglBase14Impl;->eglConnection:Lcom/discord/org/webrtc/EglBase14Impl$EglConnection;

    invoke-virtual {v3}, Lcom/discord/org/webrtc/EglBase14Impl$EglConnection;->getConfig()Landroid/opengl/EGLConfig;

    move-result-object v3

    .line 173
    invoke-static {v1, v3, p1, v0, v2}, Landroid/opengl/EGL14;->eglCreateWindowSurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Ljava/lang/Object;[II)Landroid/opengl/EGLSurface;

    move-result-object p1

    iput-object p1, p0, Lcom/discord/org/webrtc/EglBase14Impl;->eglSurface:Landroid/opengl/EGLSurface;

    .line 175
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    if-eq p1, v0, :cond_2

    return-void

    .line 176
    :cond_2
    new-instance p1, Landroid/opengl/GLException;

    invoke-static {}, Landroid/opengl/EGL14;->eglGetError()I

    move-result v0

    .line 177
    invoke-static {}, Landroid/opengl/EGL14;->eglGetError()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to create window surface: 0x"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Landroid/opengl/GLException;-><init>(ILjava/lang/String;)V

    throw p1

    .line 170
    :cond_3
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Already has an EGLSurface"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static getEglConfig(Landroid/opengl/EGLDisplay;[I)Landroid/opengl/EGLConfig;
    .locals 10

    const/4 v0, 0x1

    new-array v9, v0, [Landroid/opengl/EGLConfig;

    new-array v0, v0, [I

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v8, 0x0

    const/4 v6, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object v4, v9

    move-object v7, v0

    .line 307
    invoke-static/range {v1 .. v8}, Landroid/opengl/EGL14;->eglChooseConfig(Landroid/opengl/EGLDisplay;[II[Landroid/opengl/EGLConfig;II[II)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x0

    aget p1, v0, p0

    if-lez p1, :cond_1

    aget-object p0, v9, p0

    if-eqz p0, :cond_0

    return-object p0

    .line 317
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "eglChooseConfig returned null"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 313
    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Unable to find any matching EGL config"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 309
    :cond_2
    new-instance p0, Landroid/opengl/GLException;

    invoke-static {}, Landroid/opengl/EGL14;->eglGetError()I

    move-result p1

    .line 310
    invoke-static {}, Landroid/opengl/EGL14;->eglGetError()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "eglChooseConfig failed: 0x"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/opengl/GLException;-><init>(ILjava/lang/String;)V

    throw p0
.end method

.method private static getEglDisplay()Landroid/opengl/EGLDisplay;
    .locals 5

    const/4 v0, 0x0

    .line 290
    invoke-static {v0}, Landroid/opengl/EGL14;->eglGetDisplay(I)Landroid/opengl/EGLDisplay;

    move-result-object v1

    .line 291
    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    if-eq v1, v2, :cond_1

    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x1

    .line 296
    invoke-static {v1, v2, v0, v2, v3}, Landroid/opengl/EGL14;->eglInitialize(Landroid/opengl/EGLDisplay;[II[II)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object v1

    .line 297
    :cond_0
    new-instance v0, Landroid/opengl/GLException;

    invoke-static {}, Landroid/opengl/EGL14;->eglGetError()I

    move-result v1

    .line 298
    invoke-static {}, Landroid/opengl/EGL14;->eglGetError()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Unable to initialize EGL14: 0x"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/opengl/GLException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 292
    :cond_1
    new-instance v0, Landroid/opengl/GLException;

    invoke-static {}, Landroid/opengl/EGL14;->eglGetError()I

    move-result v1

    .line 293
    invoke-static {}, Landroid/opengl/EGL14;->eglGetError()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Unable to get EGL14 display: 0x"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/opengl/GLException;-><init>(ILjava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public createDummyPbufferSurface()V
    .locals 1

    const/4 v0, 0x1

    .line 183
    invoke-virtual {p0, v0, v0}, Lcom/discord/org/webrtc/EglBase14Impl;->createPbufferSurface(II)V

    return-void
.end method

.method public createPbufferSurface(II)V
    .locals 5

    .line 188
    invoke-direct {p0}, Lcom/discord/org/webrtc/EglBase14Impl;->checkIsNotReleased()V

    .line 189
    iget-object v0, p0, Lcom/discord/org/webrtc/EglBase14Impl;->eglSurface:Landroid/opengl/EGLSurface;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    if-ne v0, v1, :cond_1

    const/4 v0, 0x5

    new-array v0, v0, [I

    const/16 v1, 0x3057

    const/4 v2, 0x0

    aput v1, v0, v2

    const/4 v1, 0x1

    aput p1, v0, v1

    const/4 v1, 0x2

    const/16 v3, 0x3056

    aput v3, v0, v1

    const/4 v1, 0x3

    aput p2, v0, v1

    const/4 v1, 0x4

    const/16 v3, 0x3038

    aput v3, v0, v1

    .line 193
    iget-object v1, p0, Lcom/discord/org/webrtc/EglBase14Impl;->eglConnection:Lcom/discord/org/webrtc/EglBase14Impl$EglConnection;

    .line 194
    invoke-virtual {v1}, Lcom/discord/org/webrtc/EglBase14Impl$EglConnection;->getDisplay()Landroid/opengl/EGLDisplay;

    move-result-object v1

    iget-object v3, p0, Lcom/discord/org/webrtc/EglBase14Impl;->eglConnection:Lcom/discord/org/webrtc/EglBase14Impl$EglConnection;

    invoke-virtual {v3}, Lcom/discord/org/webrtc/EglBase14Impl$EglConnection;->getConfig()Landroid/opengl/EGLConfig;

    move-result-object v3

    .line 193
    invoke-static {v1, v3, v0, v2}, Landroid/opengl/EGL14;->eglCreatePbufferSurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;[II)Landroid/opengl/EGLSurface;

    move-result-object v0

    iput-object v0, p0, Lcom/discord/org/webrtc/EglBase14Impl;->eglSurface:Landroid/opengl/EGLSurface;

    .line 195
    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    if-eq v0, v1, :cond_0

    return-void

    .line 196
    :cond_0
    new-instance v0, Landroid/opengl/GLException;

    invoke-static {}, Landroid/opengl/EGL14;->eglGetError()I

    move-result v1

    .line 198
    invoke-static {}, Landroid/opengl/EGL14;->eglGetError()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Failed to create pixel buffer surface with size "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string/jumbo v3, "x"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ": 0x"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Landroid/opengl/GLException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 190
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Already has an EGLSurface"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public createSurface(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    .line 160
    invoke-direct {p0, p1}, Lcom/discord/org/webrtc/EglBase14Impl;->createSurfaceInternal(Ljava/lang/Object;)V

    return-void
.end method

.method public createSurface(Landroid/view/Surface;)V
    .locals 0

    .line 154
    invoke-direct {p0, p1}, Lcom/discord/org/webrtc/EglBase14Impl;->createSurfaceInternal(Ljava/lang/Object;)V

    return-void
.end method

.method public detachCurrent()V
    .locals 1

    .line 260
    iget-object v0, p0, Lcom/discord/org/webrtc/EglBase14Impl;->eglConnection:Lcom/discord/org/webrtc/EglBase14Impl$EglConnection;

    invoke-virtual {v0}, Lcom/discord/org/webrtc/EglBase14Impl$EglConnection;->detachCurrent()V

    return-void
.end method

.method public bridge synthetic getEglBaseContext()Lcom/discord/org/webrtc/EglBase$Context;
    .locals 1

    .line 28
    invoke-virtual {p0}, Lcom/discord/org/webrtc/EglBase14Impl;->getEglBaseContext()Lcom/discord/org/webrtc/EglBase14Impl$Context;

    move-result-object v0

    return-object v0
.end method

.method public getEglBaseContext()Lcom/discord/org/webrtc/EglBase14Impl$Context;
    .locals 2

    .line 204
    new-instance v0, Lcom/discord/org/webrtc/EglBase14Impl$Context;

    iget-object v1, p0, Lcom/discord/org/webrtc/EglBase14Impl;->eglConnection:Lcom/discord/org/webrtc/EglBase14Impl$EglConnection;

    invoke-virtual {v1}, Lcom/discord/org/webrtc/EglBase14Impl$EglConnection;->getContext()Landroid/opengl/EGLContext;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/discord/org/webrtc/EglBase14Impl$Context;-><init>(Landroid/opengl/EGLContext;)V

    return-object v0
.end method

.method public hasSurface()Z
    .locals 2

    .line 209
    iget-object v0, p0, Lcom/discord/org/webrtc/EglBase14Impl;->eglSurface:Landroid/opengl/EGLSurface;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public makeCurrent()V
    .locals 2

    .line 250
    invoke-direct {p0}, Lcom/discord/org/webrtc/EglBase14Impl;->checkIsNotReleased()V

    .line 251
    iget-object v0, p0, Lcom/discord/org/webrtc/EglBase14Impl;->eglSurface:Landroid/opengl/EGLSurface;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    if-eq v0, v1, :cond_0

    .line 254
    iget-object v0, p0, Lcom/discord/org/webrtc/EglBase14Impl;->eglConnection:Lcom/discord/org/webrtc/EglBase14Impl$EglConnection;

    iget-object v1, p0, Lcom/discord/org/webrtc/EglBase14Impl;->eglSurface:Landroid/opengl/EGLSurface;

    invoke-virtual {v0, v1}, Lcom/discord/org/webrtc/EglBase14Impl$EglConnection;->makeCurrent(Landroid/opengl/EGLSurface;)V

    return-void

    .line 252
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "No EGLSurface - can\'t make current"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public release()V
    .locals 1

    .line 242
    invoke-direct {p0}, Lcom/discord/org/webrtc/EglBase14Impl;->checkIsNotReleased()V

    .line 243
    invoke-virtual {p0}, Lcom/discord/org/webrtc/EglBase14Impl;->releaseSurface()V

    .line 244
    iget-object v0, p0, Lcom/discord/org/webrtc/EglBase14Impl;->eglConnection:Lcom/discord/org/webrtc/EglBase14Impl$EglConnection;

    invoke-virtual {v0}, Lcom/discord/org/webrtc/EglBase14Impl$EglConnection;->release()V

    .line 245
    sget-object v0, Lcom/discord/org/webrtc/EglBase14Impl;->EGL_NO_CONNECTION:Lcom/discord/org/webrtc/EglBase14Impl$EglConnection;

    iput-object v0, p0, Lcom/discord/org/webrtc/EglBase14Impl;->eglConnection:Lcom/discord/org/webrtc/EglBase14Impl$EglConnection;

    return-void
.end method

.method public releaseSurface()V
    .locals 2

    .line 228
    iget-object v0, p0, Lcom/discord/org/webrtc/EglBase14Impl;->eglSurface:Landroid/opengl/EGLSurface;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    if-eq v0, v1, :cond_0

    .line 229
    iget-object v0, p0, Lcom/discord/org/webrtc/EglBase14Impl;->eglConnection:Lcom/discord/org/webrtc/EglBase14Impl$EglConnection;

    invoke-virtual {v0}, Lcom/discord/org/webrtc/EglBase14Impl$EglConnection;->getDisplay()Landroid/opengl/EGLDisplay;

    move-result-object v0

    iget-object v1, p0, Lcom/discord/org/webrtc/EglBase14Impl;->eglSurface:Landroid/opengl/EGLSurface;

    invoke-static {v0, v1}, Landroid/opengl/EGL14;->eglDestroySurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    .line 230
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    iput-object v0, p0, Lcom/discord/org/webrtc/EglBase14Impl;->eglSurface:Landroid/opengl/EGLSurface;

    :cond_0
    return-void
.end method

.method public surfaceHeight()I
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [I

    .line 222
    iget-object v1, p0, Lcom/discord/org/webrtc/EglBase14Impl;->eglConnection:Lcom/discord/org/webrtc/EglBase14Impl$EglConnection;

    invoke-virtual {v1}, Lcom/discord/org/webrtc/EglBase14Impl$EglConnection;->getDisplay()Landroid/opengl/EGLDisplay;

    move-result-object v1

    iget-object v2, p0, Lcom/discord/org/webrtc/EglBase14Impl;->eglSurface:Landroid/opengl/EGLSurface;

    const/16 v3, 0x3056

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v0, v4}, Landroid/opengl/EGL14;->eglQuerySurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;I[II)Z

    aget v0, v0, v4

    return v0
.end method

.method public surfaceWidth()I
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [I

    .line 215
    iget-object v1, p0, Lcom/discord/org/webrtc/EglBase14Impl;->eglConnection:Lcom/discord/org/webrtc/EglBase14Impl$EglConnection;

    invoke-virtual {v1}, Lcom/discord/org/webrtc/EglBase14Impl$EglConnection;->getDisplay()Landroid/opengl/EGLDisplay;

    move-result-object v1

    iget-object v2, p0, Lcom/discord/org/webrtc/EglBase14Impl;->eglSurface:Landroid/opengl/EGLSurface;

    const/16 v3, 0x3057

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v0, v4}, Landroid/opengl/EGL14;->eglQuerySurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;I[II)Z

    aget v0, v0, v4

    return v0
.end method

.method public swapBuffers()V
    .locals 3

    .line 265
    invoke-direct {p0}, Lcom/discord/org/webrtc/EglBase14Impl;->checkIsNotReleased()V

    .line 266
    iget-object v0, p0, Lcom/discord/org/webrtc/EglBase14Impl;->eglSurface:Landroid/opengl/EGLSurface;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    if-eq v0, v1, :cond_0

    .line 269
    sget-object v0, Lcom/discord/org/webrtc/EglBase;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 270
    :try_start_0
    iget-object v1, p0, Lcom/discord/org/webrtc/EglBase14Impl;->eglConnection:Lcom/discord/org/webrtc/EglBase14Impl$EglConnection;

    invoke-virtual {v1}, Lcom/discord/org/webrtc/EglBase14Impl$EglConnection;->getDisplay()Landroid/opengl/EGLDisplay;

    move-result-object v1

    iget-object v2, p0, Lcom/discord/org/webrtc/EglBase14Impl;->eglSurface:Landroid/opengl/EGLSurface;

    invoke-static {v1, v2}, Landroid/opengl/EGL14;->eglSwapBuffers(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    .line 271
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 267
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "No EGLSurface - can\'t swap buffers"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public swapBuffers(J)V
    .locals 3

    .line 276
    invoke-direct {p0}, Lcom/discord/org/webrtc/EglBase14Impl;->checkIsNotReleased()V

    .line 277
    iget-object v0, p0, Lcom/discord/org/webrtc/EglBase14Impl;->eglSurface:Landroid/opengl/EGLSurface;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    if-eq v0, v1, :cond_0

    .line 280
    sget-object v0, Lcom/discord/org/webrtc/EglBase;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 283
    :try_start_0
    iget-object v1, p0, Lcom/discord/org/webrtc/EglBase14Impl;->eglConnection:Lcom/discord/org/webrtc/EglBase14Impl$EglConnection;

    invoke-virtual {v1}, Lcom/discord/org/webrtc/EglBase14Impl$EglConnection;->getDisplay()Landroid/opengl/EGLDisplay;

    move-result-object v1

    iget-object v2, p0, Lcom/discord/org/webrtc/EglBase14Impl;->eglSurface:Landroid/opengl/EGLSurface;

    invoke-static {v1, v2, p1, p2}, Landroid/opengl/EGLExt;->eglPresentationTimeANDROID(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;J)Z

    .line 284
    iget-object p1, p0, Lcom/discord/org/webrtc/EglBase14Impl;->eglConnection:Lcom/discord/org/webrtc/EglBase14Impl$EglConnection;

    invoke-virtual {p1}, Lcom/discord/org/webrtc/EglBase14Impl$EglConnection;->getDisplay()Landroid/opengl/EGLDisplay;

    move-result-object p1

    iget-object p2, p0, Lcom/discord/org/webrtc/EglBase14Impl;->eglSurface:Landroid/opengl/EGLSurface;

    invoke-static {p1, p2}, Landroid/opengl/EGL14;->eglSwapBuffers(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    .line 285
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 278
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "No EGLSurface - can\'t swap buffers"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
