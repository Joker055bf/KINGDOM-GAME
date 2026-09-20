.class public interface abstract Lcom/discord/org/webrtc/EglBase;
.super Ljava/lang/Object;
.source "EglBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/discord/org/webrtc/EglBase$ConfigBuilder;,
        Lcom/discord/org/webrtc/EglBase$Context;,
        Lcom/discord/org/webrtc/EglBase$EglConnection;
    }
.end annotation


# static fields
.field public static final CONFIG_PIXEL_BUFFER:[I

.field public static final CONFIG_PIXEL_RGBA_BUFFER:[I

.field public static final CONFIG_PLAIN:[I

.field public static final CONFIG_RECORDABLE:[I

.field public static final CONFIG_RGBA:[I

.field public static final EGL_OPENGL_ES2_BIT:I = 0x4

.field public static final EGL_OPENGL_ES3_BIT:I = 0x40

.field public static final EGL_RECORDABLE_ANDROID:I = 0x3142

.field public static final lock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 73
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/discord/org/webrtc/EglBase;->lock:Ljava/lang/Object;

    .line 151
    invoke-static {}, Lcom/discord/org/webrtc/EglBase;->configBuilder()Lcom/discord/org/webrtc/EglBase$ConfigBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/discord/org/webrtc/EglBase$ConfigBuilder;->createConfigAttributes()[I

    move-result-object v0

    sput-object v0, Lcom/discord/org/webrtc/EglBase;->CONFIG_PLAIN:[I

    .line 153
    invoke-static {}, Lcom/discord/org/webrtc/EglBase;->configBuilder()Lcom/discord/org/webrtc/EglBase$ConfigBuilder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/discord/org/webrtc/EglBase$ConfigBuilder;->setHasAlphaChannel(Z)Lcom/discord/org/webrtc/EglBase$ConfigBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/discord/org/webrtc/EglBase$ConfigBuilder;->createConfigAttributes()[I

    move-result-object v0

    sput-object v0, Lcom/discord/org/webrtc/EglBase;->CONFIG_RGBA:[I

    .line 155
    invoke-static {}, Lcom/discord/org/webrtc/EglBase;->configBuilder()Lcom/discord/org/webrtc/EglBase$ConfigBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/discord/org/webrtc/EglBase$ConfigBuilder;->setSupportsPixelBuffer(Z)Lcom/discord/org/webrtc/EglBase$ConfigBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/discord/org/webrtc/EglBase$ConfigBuilder;->createConfigAttributes()[I

    move-result-object v0

    sput-object v0, Lcom/discord/org/webrtc/EglBase;->CONFIG_PIXEL_BUFFER:[I

    .line 156
    invoke-static {}, Lcom/discord/org/webrtc/EglBase;->configBuilder()Lcom/discord/org/webrtc/EglBase$ConfigBuilder;

    move-result-object v0

    .line 157
    invoke-virtual {v0, v1}, Lcom/discord/org/webrtc/EglBase$ConfigBuilder;->setHasAlphaChannel(Z)Lcom/discord/org/webrtc/EglBase$ConfigBuilder;

    move-result-object v0

    .line 158
    invoke-virtual {v0, v1}, Lcom/discord/org/webrtc/EglBase$ConfigBuilder;->setSupportsPixelBuffer(Z)Lcom/discord/org/webrtc/EglBase$ConfigBuilder;

    move-result-object v0

    .line 159
    invoke-virtual {v0}, Lcom/discord/org/webrtc/EglBase$ConfigBuilder;->createConfigAttributes()[I

    move-result-object v0

    sput-object v0, Lcom/discord/org/webrtc/EglBase;->CONFIG_PIXEL_RGBA_BUFFER:[I

    .line 161
    invoke-static {}, Lcom/discord/org/webrtc/EglBase;->configBuilder()Lcom/discord/org/webrtc/EglBase$ConfigBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/discord/org/webrtc/EglBase$ConfigBuilder;->setIsRecordable(Z)Lcom/discord/org/webrtc/EglBase$ConfigBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/discord/org/webrtc/EglBase$ConfigBuilder;->createConfigAttributes()[I

    move-result-object v0

    sput-object v0, Lcom/discord/org/webrtc/EglBase;->CONFIG_RECORDABLE:[I

    return-void
.end method

.method public static configBuilder()Lcom/discord/org/webrtc/EglBase$ConfigBuilder;
    .locals 1

    .line 85
    new-instance v0, Lcom/discord/org/webrtc/EglBase$ConfigBuilder;

    invoke-direct {v0}, Lcom/discord/org/webrtc/EglBase$ConfigBuilder;-><init>()V

    return-object v0
.end method

.method public static create()Lcom/discord/org/webrtc/EglBase;
    .locals 2

    const/4 v0, 0x0

    .line 218
    sget-object v1, Lcom/discord/org/webrtc/EglBase;->CONFIG_PLAIN:[I

    invoke-static {v0, v1}, Lcom/discord/org/webrtc/EglBase;->create(Lcom/discord/org/webrtc/EglBase$Context;[I)Lcom/discord/org/webrtc/EglBase;

    move-result-object v0

    return-object v0
.end method

.method public static create(Lcom/discord/org/webrtc/EglBase$Context;)Lcom/discord/org/webrtc/EglBase;
    .locals 1

    .line 226
    sget-object v0, Lcom/discord/org/webrtc/EglBase;->CONFIG_PLAIN:[I

    invoke-static {p0, v0}, Lcom/discord/org/webrtc/EglBase;->create(Lcom/discord/org/webrtc/EglBase$Context;[I)Lcom/discord/org/webrtc/EglBase;

    move-result-object p0

    return-object p0
.end method

.method public static create(Lcom/discord/org/webrtc/EglBase$Context;[I)Lcom/discord/org/webrtc/EglBase;
    .locals 1

    if-nez p0, :cond_0

    .line 204
    invoke-static {p1}, Lcom/discord/org/webrtc/EglBase;->createEgl14([I)Lcom/discord/org/webrtc/EglBase14;

    move-result-object p0

    return-object p0

    .line 205
    :cond_0
    instance-of v0, p0, Lcom/discord/org/webrtc/EglBase14$Context;

    if-eqz v0, :cond_1

    .line 206
    check-cast p0, Lcom/discord/org/webrtc/EglBase14$Context;

    invoke-static {p0, p1}, Lcom/discord/org/webrtc/EglBase;->createEgl14(Lcom/discord/org/webrtc/EglBase14$Context;[I)Lcom/discord/org/webrtc/EglBase14;

    move-result-object p0

    return-object p0

    .line 207
    :cond_1
    instance-of v0, p0, Lcom/discord/org/webrtc/EglBase10$Context;

    if-eqz v0, :cond_2

    .line 208
    check-cast p0, Lcom/discord/org/webrtc/EglBase10$Context;

    invoke-static {p0, p1}, Lcom/discord/org/webrtc/EglBase;->createEgl10(Lcom/discord/org/webrtc/EglBase10$Context;[I)Lcom/discord/org/webrtc/EglBase10;

    move-result-object p0

    return-object p0

    .line 210
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Unrecognized Context"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static create(Lcom/discord/org/webrtc/EglBase$EglConnection;)Lcom/discord/org/webrtc/EglBase;
    .locals 1

    if-nez p0, :cond_0

    .line 189
    invoke-static {}, Lcom/discord/org/webrtc/EglBase;->create()Lcom/discord/org/webrtc/EglBase;

    move-result-object p0

    return-object p0

    .line 190
    :cond_0
    instance-of v0, p0, Lcom/discord/org/webrtc/EglBase14Impl$EglConnection;

    if-eqz v0, :cond_1

    .line 191
    new-instance v0, Lcom/discord/org/webrtc/EglBase14Impl;

    check-cast p0, Lcom/discord/org/webrtc/EglBase14Impl$EglConnection;

    invoke-direct {v0, p0}, Lcom/discord/org/webrtc/EglBase14Impl;-><init>(Lcom/discord/org/webrtc/EglBase14Impl$EglConnection;)V

    return-object v0

    .line 192
    :cond_1
    instance-of v0, p0, Lcom/discord/org/webrtc/EglBase10Impl$EglConnection;

    if-eqz v0, :cond_2

    .line 193
    new-instance v0, Lcom/discord/org/webrtc/EglBase10Impl;

    check-cast p0, Lcom/discord/org/webrtc/EglBase10Impl$EglConnection;

    invoke-direct {v0, p0}, Lcom/discord/org/webrtc/EglBase10Impl;-><init>(Lcom/discord/org/webrtc/EglBase10Impl$EglConnection;)V

    return-object v0

    .line 195
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unrecognized EglConnection"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static createEgl10(Lcom/discord/org/webrtc/EglBase10$Context;[I)Lcom/discord/org/webrtc/EglBase10;
    .locals 1

    .line 239
    new-instance v0, Lcom/discord/org/webrtc/EglBase10Impl;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 240
    :cond_0
    invoke-interface {p0}, Lcom/discord/org/webrtc/EglBase10$Context;->getRawContext()Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object p0

    :goto_0
    invoke-direct {v0, p0, p1}, Lcom/discord/org/webrtc/EglBase10Impl;-><init>(Ljavax/microedition/khronos/egl/EGLContext;[I)V

    return-object v0
.end method

.method public static createEgl10(Ljavax/microedition/khronos/egl/EGLContext;[I)Lcom/discord/org/webrtc/EglBase10;
    .locals 1

    .line 249
    new-instance v0, Lcom/discord/org/webrtc/EglBase10Impl;

    invoke-direct {v0, p0, p1}, Lcom/discord/org/webrtc/EglBase10Impl;-><init>(Ljavax/microedition/khronos/egl/EGLContext;[I)V

    return-object v0
.end method

.method public static createEgl10([I)Lcom/discord/org/webrtc/EglBase10;
    .locals 2

    .line 231
    new-instance v0, Lcom/discord/org/webrtc/EglBase10Impl;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lcom/discord/org/webrtc/EglBase10Impl;-><init>(Ljavax/microedition/khronos/egl/EGLContext;[I)V

    return-object v0
.end method

.method public static createEgl14(Landroid/opengl/EGLContext;[I)Lcom/discord/org/webrtc/EglBase14;
    .locals 1

    .line 272
    new-instance v0, Lcom/discord/org/webrtc/EglBase14Impl;

    invoke-direct {v0, p0, p1}, Lcom/discord/org/webrtc/EglBase14Impl;-><init>(Landroid/opengl/EGLContext;[I)V

    return-object v0
.end method

.method public static createEgl14(Lcom/discord/org/webrtc/EglBase14$Context;[I)Lcom/discord/org/webrtc/EglBase14;
    .locals 1

    .line 262
    new-instance v0, Lcom/discord/org/webrtc/EglBase14Impl;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 263
    :cond_0
    invoke-interface {p0}, Lcom/discord/org/webrtc/EglBase14$Context;->getRawContext()Landroid/opengl/EGLContext;

    move-result-object p0

    :goto_0
    invoke-direct {v0, p0, p1}, Lcom/discord/org/webrtc/EglBase14Impl;-><init>(Landroid/opengl/EGLContext;[I)V

    return-object v0
.end method

.method public static createEgl14([I)Lcom/discord/org/webrtc/EglBase14;
    .locals 2

    .line 254
    new-instance v0, Lcom/discord/org/webrtc/EglBase14Impl;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lcom/discord/org/webrtc/EglBase14Impl;-><init>(Landroid/opengl/EGLContext;[I)V

    return-object v0
.end method

.method public static getOpenGlesVersionFromConfig([I)I
    .locals 4

    const/4 v0, 0x0

    .line 164
    :goto_0
    array-length v1, p0

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-ge v0, v1, :cond_3

    .line 165
    aget v1, p0, v0

    const/16 v3, 0x3040

    if-ne v1, v3, :cond_2

    add-int/2addr v0, v2

    .line 166
    aget p0, p0, v0

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/16 v0, 0x40

    if-eq p0, v0, :cond_0

    return v2

    :cond_0
    const/4 p0, 0x3

    return p0

    :cond_1
    const/4 p0, 0x2

    return p0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return v2
.end method


# virtual methods
.method public abstract createDummyPbufferSurface()V
.end method

.method public abstract createPbufferSurface(II)V
.end method

.method public abstract createSurface(Landroid/graphics/SurfaceTexture;)V
.end method

.method public abstract createSurface(Landroid/view/Surface;)V
.end method

.method public abstract detachCurrent()V
.end method

.method public abstract getEglBaseContext()Lcom/discord/org/webrtc/EglBase$Context;
.end method

.method public abstract hasSurface()Z
.end method

.method public abstract makeCurrent()V
.end method

.method public abstract release()V
.end method

.method public abstract releaseSurface()V
.end method

.method public abstract surfaceHeight()I
.end method

.method public abstract surfaceWidth()I
.end method

.method public abstract swapBuffers()V
.end method

.method public abstract swapBuffers(J)V
.end method
