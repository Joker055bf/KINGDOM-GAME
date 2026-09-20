.class public final Lcom/discord/org/webrtc/YuvConverter;
.super Ljava/lang/Object;
.source "YuvConverter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/discord/org/webrtc/YuvConverter$ShaderCallbacks;
    }
.end annotation


# static fields
.field private static final FRAGMENT_SHADER:Ljava/lang/String; = "uniform vec2 xUnit;\nuniform vec4 coeffs;\n\nvoid main() {\n  gl_FragColor.r = coeffs.a + dot(coeffs.rgb,\n      sample(tc - 1.5 * xUnit).rgb);\n  gl_FragColor.g = coeffs.a + dot(coeffs.rgb,\n      sample(tc - 0.5 * xUnit).rgb);\n  gl_FragColor.b = coeffs.a + dot(coeffs.rgb,\n      sample(tc + 0.5 * xUnit).rgb);\n  gl_FragColor.a = coeffs.a + dot(coeffs.rgb,\n      sample(tc + 1.5 * xUnit).rgb);\n}\n"

.field private static final TAG:Ljava/lang/String; = "YuvConverter"


# instance fields
.field private final drawer:Lcom/discord/org/webrtc/GlGenericDrawer;

.field private final i420TextureFrameBuffer:Lcom/discord/org/webrtc/GlTextureFrameBuffer;

.field private final shaderCallbacks:Lcom/discord/org/webrtc/YuvConverter$ShaderCallbacks;

.field private final threadChecker:Lcom/discord/org/webrtc/ThreadUtils$ThreadChecker;

.field private final videoFrameDrawer:Lcom/discord/org/webrtc/VideoFrameDrawer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 118
    new-instance v0, Lcom/discord/org/webrtc/VideoFrameDrawer;

    invoke-direct {v0}, Lcom/discord/org/webrtc/VideoFrameDrawer;-><init>()V

    invoke-direct {p0, v0}, Lcom/discord/org/webrtc/YuvConverter;-><init>(Lcom/discord/org/webrtc/VideoFrameDrawer;)V

    return-void
.end method

.method public constructor <init>(Lcom/discord/org/webrtc/VideoFrameDrawer;)V
    .locals 4

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    new-instance v0, Lcom/discord/org/webrtc/ThreadUtils$ThreadChecker;

    invoke-direct {v0}, Lcom/discord/org/webrtc/ThreadUtils$ThreadChecker;-><init>()V

    iput-object v0, p0, Lcom/discord/org/webrtc/YuvConverter;->threadChecker:Lcom/discord/org/webrtc/ThreadUtils$ThreadChecker;

    .line 108
    new-instance v1, Lcom/discord/org/webrtc/GlTextureFrameBuffer;

    const/16 v2, 0x1908

    invoke-direct {v1, v2}, Lcom/discord/org/webrtc/GlTextureFrameBuffer;-><init>(I)V

    iput-object v1, p0, Lcom/discord/org/webrtc/YuvConverter;->i420TextureFrameBuffer:Lcom/discord/org/webrtc/GlTextureFrameBuffer;

    .line 110
    new-instance v1, Lcom/discord/org/webrtc/YuvConverter$ShaderCallbacks;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/discord/org/webrtc/YuvConverter$ShaderCallbacks;-><init>(Lcom/discord/org/webrtc/YuvConverter$ShaderCallbacks-IA;)V

    iput-object v1, p0, Lcom/discord/org/webrtc/YuvConverter;->shaderCallbacks:Lcom/discord/org/webrtc/YuvConverter$ShaderCallbacks;

    .line 111
    new-instance v2, Lcom/discord/org/webrtc/GlGenericDrawer;

    const-string/jumbo v3, "uniform vec2 xUnit;\nuniform vec4 coeffs;\n\nvoid main() {\n  gl_FragColor.r = coeffs.a + dot(coeffs.rgb,\n      sample(tc - 1.5 * xUnit).rgb);\n  gl_FragColor.g = coeffs.a + dot(coeffs.rgb,\n      sample(tc - 0.5 * xUnit).rgb);\n  gl_FragColor.b = coeffs.a + dot(coeffs.rgb,\n      sample(tc + 0.5 * xUnit).rgb);\n  gl_FragColor.a = coeffs.a + dot(coeffs.rgb,\n      sample(tc + 1.5 * xUnit).rgb);\n}\n"

    invoke-direct {v2, v3, v1}, Lcom/discord/org/webrtc/GlGenericDrawer;-><init>(Ljava/lang/String;Lcom/discord/org/webrtc/GlGenericDrawer$ShaderCallbacks;)V

    iput-object v2, p0, Lcom/discord/org/webrtc/YuvConverter;->drawer:Lcom/discord/org/webrtc/GlGenericDrawer;

    .line 122
    iput-object p1, p0, Lcom/discord/org/webrtc/YuvConverter;->videoFrameDrawer:Lcom/discord/org/webrtc/VideoFrameDrawer;

    .line 123
    invoke-virtual {v0}, Lcom/discord/org/webrtc/ThreadUtils$ThreadChecker;->detachThread()V

    return-void
.end method

.method private convertInternal(Lcom/discord/org/webrtc/VideoFrame$TextureBuffer;)Lcom/discord/org/webrtc/VideoFrame$I420Buffer;
    .locals 18

    move-object/from16 v0, p0

    .line 138
    iget-object v1, v0, Lcom/discord/org/webrtc/YuvConverter;->videoFrameDrawer:Lcom/discord/org/webrtc/VideoFrameDrawer;

    .line 139
    invoke-interface/range {p1 .. p1}, Lcom/discord/org/webrtc/VideoFrame$TextureBuffer;->getWidth()I

    move-result v2

    invoke-interface/range {p1 .. p1}, Lcom/discord/org/webrtc/VideoFrame$TextureBuffer;->getHeight()I

    move-result v3

    move-object/from16 v4, p1

    .line 138
    invoke-virtual {v1, v4, v2, v3}, Lcom/discord/org/webrtc/VideoFrameDrawer;->prepareBufferForViewportSize(Lcom/discord/org/webrtc/VideoFrame$Buffer;II)Lcom/discord/org/webrtc/VideoFrame$Buffer;

    move-result-object v1

    check-cast v1, Lcom/discord/org/webrtc/VideoFrame$TextureBuffer;

    .line 169
    invoke-interface {v1}, Lcom/discord/org/webrtc/VideoFrame$TextureBuffer;->getWidth()I

    move-result v11

    .line 170
    invoke-interface {v1}, Lcom/discord/org/webrtc/VideoFrame$TextureBuffer;->getHeight()I

    move-result v12

    add-int/lit8 v2, v11, 0x7

    .line 171
    div-int/lit8 v2, v2, 0x8

    mul-int/lit8 v13, v2, 0x8

    add-int/lit8 v2, v12, 0x1

    .line 172
    div-int/lit8 v14, v2, 0x2

    add-int v2, v12, v14

    mul-int v3, v13, v2

    .line 175
    invoke-static {v3}, Lcom/discord/org/webrtc/JniCommon;->nativeAllocateByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v15

    .line 178
    div-int/lit8 v10, v13, 0x4

    .line 181
    new-instance v9, Landroid/graphics/Matrix;

    invoke-direct {v9}, Landroid/graphics/Matrix;-><init>()V

    const/high16 v3, 0x3f000000    # 0.5f

    .line 182
    invoke-virtual {v9, v3, v3}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, -0x40800000    # -1.0f

    .line 183
    invoke-virtual {v9, v3, v4}, Landroid/graphics/Matrix;->preScale(FF)Z

    const/high16 v3, -0x41000000    # -0.5f

    .line 184
    invoke-virtual {v9, v3, v3}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 186
    iget-object v3, v0, Lcom/discord/org/webrtc/YuvConverter;->i420TextureFrameBuffer:Lcom/discord/org/webrtc/GlTextureFrameBuffer;

    invoke-virtual {v3, v10, v2}, Lcom/discord/org/webrtc/GlTextureFrameBuffer;->setSize(II)V

    .line 189
    iget-object v2, v0, Lcom/discord/org/webrtc/YuvConverter;->i420TextureFrameBuffer:Lcom/discord/org/webrtc/GlTextureFrameBuffer;

    invoke-virtual {v2}, Lcom/discord/org/webrtc/GlTextureFrameBuffer;->getFrameBufferId()I

    move-result v2

    const v8, 0x8d40

    invoke-static {v8, v2}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    const-string v2, "glBindFramebuffer"

    .line 190
    invoke-static {v2}, Lcom/discord/org/webrtc/GlUtil;->checkNoGLES2Error(Ljava/lang/String;)V

    .line 193
    iget-object v2, v0, Lcom/discord/org/webrtc/YuvConverter;->shaderCallbacks:Lcom/discord/org/webrtc/YuvConverter$ShaderCallbacks;

    invoke-virtual {v2}, Lcom/discord/org/webrtc/YuvConverter$ShaderCallbacks;->setPlaneY()V

    .line 194
    iget-object v2, v0, Lcom/discord/org/webrtc/YuvConverter;->drawer:Lcom/discord/org/webrtc/GlGenericDrawer;

    const/4 v7, 0x0

    const/16 v16, 0x0

    move-object v3, v1

    move-object v4, v9

    move v5, v11

    move v6, v12

    move/from16 v8, v16

    move-object/from16 v16, v9

    move v9, v10

    move/from16 v17, v10

    move v10, v12

    invoke-static/range {v2 .. v10}, Lcom/discord/org/webrtc/VideoFrameDrawer;->drawTexture(Lcom/discord/org/webrtc/RendererCommon$GlDrawer;Lcom/discord/org/webrtc/VideoFrame$TextureBuffer;Landroid/graphics/Matrix;IIIIII)V

    .line 199
    iget-object v2, v0, Lcom/discord/org/webrtc/YuvConverter;->shaderCallbacks:Lcom/discord/org/webrtc/YuvConverter$ShaderCallbacks;

    invoke-virtual {v2}, Lcom/discord/org/webrtc/YuvConverter$ShaderCallbacks;->setPlaneU()V

    .line 200
    iget-object v2, v0, Lcom/discord/org/webrtc/YuvConverter;->drawer:Lcom/discord/org/webrtc/GlGenericDrawer;

    div-int/lit8 v17, v17, 0x2

    move-object/from16 v4, v16

    move v8, v12

    move/from16 v9, v17

    move v10, v14

    invoke-static/range {v2 .. v10}, Lcom/discord/org/webrtc/VideoFrameDrawer;->drawTexture(Lcom/discord/org/webrtc/RendererCommon$GlDrawer;Lcom/discord/org/webrtc/VideoFrame$TextureBuffer;Landroid/graphics/Matrix;IIIIII)V

    .line 205
    iget-object v2, v0, Lcom/discord/org/webrtc/YuvConverter;->shaderCallbacks:Lcom/discord/org/webrtc/YuvConverter$ShaderCallbacks;

    invoke-virtual {v2}, Lcom/discord/org/webrtc/YuvConverter$ShaderCallbacks;->setPlaneV()V

    .line 206
    iget-object v2, v0, Lcom/discord/org/webrtc/YuvConverter;->drawer:Lcom/discord/org/webrtc/GlGenericDrawer;

    move/from16 v7, v17

    invoke-static/range {v2 .. v10}, Lcom/discord/org/webrtc/VideoFrameDrawer;->drawTexture(Lcom/discord/org/webrtc/RendererCommon$GlDrawer;Lcom/discord/org/webrtc/VideoFrame$TextureBuffer;Landroid/graphics/Matrix;IIIIII)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 210
    iget-object v2, v0, Lcom/discord/org/webrtc/YuvConverter;->i420TextureFrameBuffer:Lcom/discord/org/webrtc/GlTextureFrameBuffer;

    invoke-virtual {v2}, Lcom/discord/org/webrtc/GlTextureFrameBuffer;->getWidth()I

    move-result v6

    iget-object v2, v0, Lcom/discord/org/webrtc/YuvConverter;->i420TextureFrameBuffer:Lcom/discord/org/webrtc/GlTextureFrameBuffer;

    invoke-virtual {v2}, Lcom/discord/org/webrtc/GlTextureFrameBuffer;->getHeight()I

    move-result v7

    const/16 v8, 0x1908

    const/16 v9, 0x1401

    move-object v10, v15

    invoke-static/range {v4 .. v10}, Landroid/opengl/GLES20;->glReadPixels(IIIIIILjava/nio/Buffer;)V

    const-string v2, "YuvConverter.convert"

    .line 213
    invoke-static {v2}, Lcom/discord/org/webrtc/GlUtil;->checkNoGLES2Error(Ljava/lang/String;)V

    const/4 v2, 0x0

    const v3, 0x8d40

    .line 216
    invoke-static {v3, v2}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    mul-int v3, v13, v12

    add-int/2addr v3, v2

    .line 222
    div-int/lit8 v4, v13, 0x2

    add-int v5, v3, v4

    .line 224
    invoke-virtual {v15, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v2

    check-cast v2, Ljava/nio/ByteBuffer;

    .line 225
    invoke-virtual {v15, v3}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    move-result-object v2

    check-cast v2, Ljava/nio/ByteBuffer;

    .line 226
    invoke-virtual {v15}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 228
    invoke-virtual {v15, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v2

    check-cast v2, Ljava/nio/ByteBuffer;

    add-int/lit8 v14, v14, -0x1

    mul-int/2addr v14, v13

    add-int/2addr v14, v4

    add-int/2addr v3, v14

    .line 231
    invoke-virtual {v15, v3}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    move-result-object v2

    check-cast v2, Ljava/nio/ByteBuffer;

    .line 232
    invoke-virtual {v15}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v7

    .line 234
    invoke-virtual {v15, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v2

    check-cast v2, Ljava/nio/ByteBuffer;

    add-int/2addr v5, v14

    .line 235
    invoke-virtual {v15, v5}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    move-result-object v2

    check-cast v2, Ljava/nio/ByteBuffer;

    .line 236
    invoke-virtual {v15}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v8

    .line 238
    invoke-interface {v1}, Lcom/discord/org/webrtc/VideoFrame$TextureBuffer;->release()V

    .line 240
    new-instance v10, Lcom/discord/org/webrtc/YuvConverter$$ExternalSyntheticLambda0;

    invoke-direct {v10, v15}, Lcom/discord/org/webrtc/YuvConverter$$ExternalSyntheticLambda0;-><init>(Ljava/nio/ByteBuffer;)V

    move v2, v11

    move v3, v12

    move-object v4, v6

    move v5, v13

    move-object v6, v7

    move v7, v13

    move v9, v13

    invoke-static/range {v2 .. v10}, Lcom/discord/org/webrtc/JavaI420Buffer;->wrap(IILjava/nio/ByteBuffer;ILjava/nio/ByteBuffer;ILjava/nio/ByteBuffer;ILjava/lang/Runnable;)Lcom/discord/org/webrtc/JavaI420Buffer;

    move-result-object v1

    return-object v1
.end method

.method static synthetic lambda$convertInternal$0(Ljava/nio/ByteBuffer;)V
    .locals 0

    .line 241
    invoke-static {p0}, Lcom/discord/org/webrtc/JniCommon;->nativeFreeByteBuffer(Ljava/nio/ByteBuffer;)V

    return-void
.end method


# virtual methods
.method public convert(Lcom/discord/org/webrtc/VideoFrame$TextureBuffer;)Lcom/discord/org/webrtc/VideoFrame$I420Buffer;
    .locals 2

    .line 130
    :try_start_0
    invoke-direct {p0, p1}, Lcom/discord/org/webrtc/YuvConverter;->convertInternal(Lcom/discord/org/webrtc/VideoFrame$TextureBuffer;)Lcom/discord/org/webrtc/VideoFrame$I420Buffer;

    move-result-object p1
    :try_end_0
    .catch Landroid/opengl/GLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    const-string v0, "YuvConverter"

    const-string v1, "Failed to convert TextureBuffer"

    .line 132
    invoke-static {v0, v1, p1}, Lcom/discord/org/webrtc/Logging;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public release()V
    .locals 1

    .line 245
    iget-object v0, p0, Lcom/discord/org/webrtc/YuvConverter;->threadChecker:Lcom/discord/org/webrtc/ThreadUtils$ThreadChecker;

    invoke-virtual {v0}, Lcom/discord/org/webrtc/ThreadUtils$ThreadChecker;->checkIsOnValidThread()V

    .line 246
    iget-object v0, p0, Lcom/discord/org/webrtc/YuvConverter;->drawer:Lcom/discord/org/webrtc/GlGenericDrawer;

    invoke-virtual {v0}, Lcom/discord/org/webrtc/GlGenericDrawer;->release()V

    .line 247
    iget-object v0, p0, Lcom/discord/org/webrtc/YuvConverter;->i420TextureFrameBuffer:Lcom/discord/org/webrtc/GlTextureFrameBuffer;

    invoke-virtual {v0}, Lcom/discord/org/webrtc/GlTextureFrameBuffer;->release()V

    .line 248
    iget-object v0, p0, Lcom/discord/org/webrtc/YuvConverter;->videoFrameDrawer:Lcom/discord/org/webrtc/VideoFrameDrawer;

    invoke-virtual {v0}, Lcom/discord/org/webrtc/VideoFrameDrawer;->release()V

    .line 250
    iget-object v0, p0, Lcom/discord/org/webrtc/YuvConverter;->threadChecker:Lcom/discord/org/webrtc/ThreadUtils$ThreadChecker;

    invoke-virtual {v0}, Lcom/discord/org/webrtc/ThreadUtils$ThreadChecker;->detachThread()V

    return-void
.end method
