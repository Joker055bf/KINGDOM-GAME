.class Lcom/discord/org/webrtc/GlGenericDrawer;
.super Ljava/lang/Object;
.source "GlGenericDrawer.java"

# interfaces
.implements Lcom/discord/org/webrtc/RendererCommon$GlDrawer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/discord/org/webrtc/GlGenericDrawer$ShaderType;,
        Lcom/discord/org/webrtc/GlGenericDrawer$ShaderCallbacks;
    }
.end annotation


# static fields
.field private static final DEFAULT_VERTEX_SHADER_STRING:Ljava/lang/String; = "varying vec2 tc;\nattribute vec4 in_pos;\nattribute vec4 in_tc;\nuniform mat4 tex_mat;\nvoid main() {\n  gl_Position = in_pos;\n  tc = (tex_mat * in_tc).xy;\n}\n"

.field private static final FULL_RECTANGLE_BUFFER:Ljava/nio/FloatBuffer;

.field private static final FULL_RECTANGLE_TEXTURE_BUFFER:Ljava/nio/FloatBuffer;

.field private static final INPUT_TEXTURE_COORDINATE_NAME:Ljava/lang/String; = "in_tc"

.field private static final INPUT_VERTEX_COORDINATE_NAME:Ljava/lang/String; = "in_pos"

.field private static final TEXTURE_MATRIX_NAME:Ljava/lang/String; = "tex_mat"


# instance fields
.field private currentShader:Lcom/discord/org/webrtc/GlShader;

.field private currentShaderType:Lcom/discord/org/webrtc/GlGenericDrawer$ShaderType;

.field private final genericFragmentSource:Ljava/lang/String;

.field private inPosLocation:I

.field private inTcLocation:I

.field private final shaderCallbacks:Lcom/discord/org/webrtc/GlGenericDrawer$ShaderCallbacks;

.field private texMatrixLocation:I

.field private final vertexShader:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x8

    new-array v1, v0, [F

    .line 75
    fill-array-data v1, :array_0

    invoke-static {v1}, Lcom/discord/org/webrtc/GlUtil;->createFloatBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object v1

    sput-object v1, Lcom/discord/org/webrtc/GlGenericDrawer;->FULL_RECTANGLE_BUFFER:Ljava/nio/FloatBuffer;

    new-array v0, v0, [F

    .line 83
    fill-array-data v0, :array_1

    .line 84
    invoke-static {v0}, Lcom/discord/org/webrtc/GlUtil;->createFloatBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    sput-object v0, Lcom/discord/org/webrtc/GlGenericDrawer;->FULL_RECTANGLE_TEXTURE_BUFFER:Ljava/nio/FloatBuffer;

    return-void

    nop

    :array_0
    .array-data 4
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/discord/org/webrtc/GlGenericDrawer$ShaderCallbacks;)V
    .locals 1

    const-string/jumbo v0, "varying vec2 tc;\nattribute vec4 in_pos;\nattribute vec4 in_tc;\nuniform mat4 tex_mat;\nvoid main() {\n  gl_Position = in_pos;\n  tc = (tex_mat * in_tc).xy;\n}\n"

    .line 136
    invoke-direct {p0, v0, p1, p2}, Lcom/discord/org/webrtc/GlGenericDrawer;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/discord/org/webrtc/GlGenericDrawer$ShaderCallbacks;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/discord/org/webrtc/GlGenericDrawer$ShaderCallbacks;)V
    .locals 0

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 141
    iput-object p1, p0, Lcom/discord/org/webrtc/GlGenericDrawer;->vertexShader:Ljava/lang/String;

    .line 142
    iput-object p2, p0, Lcom/discord/org/webrtc/GlGenericDrawer;->genericFragmentSource:Ljava/lang/String;

    .line 143
    iput-object p3, p0, Lcom/discord/org/webrtc/GlGenericDrawer;->shaderCallbacks:Lcom/discord/org/webrtc/GlGenericDrawer$ShaderCallbacks;

    return-void
.end method

.method static createFragmentShaderString(Ljava/lang/String;Lcom/discord/org/webrtc/GlGenericDrawer$ShaderType;)Ljava/lang/String;
    .locals 2

    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 93
    sget-object v1, Lcom/discord/org/webrtc/GlGenericDrawer$ShaderType;->OES:Lcom/discord/org/webrtc/GlGenericDrawer$ShaderType;

    if-ne p1, v1, :cond_0

    const-string v1, "#extension GL_OES_EGL_image_external : require\n"

    .line 94
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const-string v1, "precision mediump float;\nvarying vec2 tc;\n"

    .line 96
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    sget-object v1, Lcom/discord/org/webrtc/GlGenericDrawer$ShaderType;->YUV:Lcom/discord/org/webrtc/GlGenericDrawer$ShaderType;

    if-ne p1, v1, :cond_1

    const-string/jumbo p1, "uniform sampler2D y_tex;\nuniform sampler2D u_tex;\nuniform sampler2D v_tex;\nvec4 sample(vec2 p) {\n  float y = texture2D(y_tex, p).r * 1.16438;\n  float u = texture2D(u_tex, p).r;\n  float v = texture2D(v_tex, p).r;\n  return vec4(y + 1.59603 * v - 0.874202,\n    y - 0.391762 * u - 0.812968 * v + 0.531668,\n    y + 2.01723 * u - 1.08563, 1);\n}\n"

    .line 100
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 116
    :cond_1
    sget-object v1, Lcom/discord/org/webrtc/GlGenericDrawer$ShaderType;->OES:Lcom/discord/org/webrtc/GlGenericDrawer$ShaderType;

    if-ne p1, v1, :cond_2

    const-string p1, "samplerExternalOES"

    goto :goto_0

    :cond_2
    const-string p1, "sampler2D"

    :goto_0
    const-string/jumbo v1, "uniform "

    .line 117
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " tex;\n"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "sample("

    const-string/jumbo v1, "texture2D(tex, "

    .line 120
    invoke-virtual {p0, p1, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private prepareShader(Lcom/discord/org/webrtc/GlGenericDrawer$ShaderType;[FIIII)V
    .locals 13

    move-object v0, p0

    move-object v1, p1

    .line 217
    iget-object v2, v0, Lcom/discord/org/webrtc/GlGenericDrawer;->currentShaderType:Lcom/discord/org/webrtc/GlGenericDrawer$ShaderType;

    invoke-virtual {p1, v2}, Lcom/discord/org/webrtc/GlGenericDrawer$ShaderType;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    .line 219
    iget-object v1, v0, Lcom/discord/org/webrtc/GlGenericDrawer;->currentShader:Lcom/discord/org/webrtc/GlShader;

    move-object v6, v1

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    .line 222
    iput-object v2, v0, Lcom/discord/org/webrtc/GlGenericDrawer;->currentShaderType:Lcom/discord/org/webrtc/GlGenericDrawer$ShaderType;

    .line 223
    iget-object v5, v0, Lcom/discord/org/webrtc/GlGenericDrawer;->currentShader:Lcom/discord/org/webrtc/GlShader;

    if-eqz v5, :cond_1

    .line 224
    invoke-virtual {v5}, Lcom/discord/org/webrtc/GlShader;->release()V

    .line 225
    iput-object v2, v0, Lcom/discord/org/webrtc/GlGenericDrawer;->currentShader:Lcom/discord/org/webrtc/GlShader;

    .line 228
    :cond_1
    invoke-virtual {p0, p1}, Lcom/discord/org/webrtc/GlGenericDrawer;->createShader(Lcom/discord/org/webrtc/GlGenericDrawer$ShaderType;)Lcom/discord/org/webrtc/GlShader;

    move-result-object v2

    .line 229
    iput-object v1, v0, Lcom/discord/org/webrtc/GlGenericDrawer;->currentShaderType:Lcom/discord/org/webrtc/GlGenericDrawer$ShaderType;

    .line 230
    iput-object v2, v0, Lcom/discord/org/webrtc/GlGenericDrawer;->currentShader:Lcom/discord/org/webrtc/GlShader;

    .line 232
    invoke-virtual {v2}, Lcom/discord/org/webrtc/GlShader;->useProgram()V

    .line 234
    sget-object v5, Lcom/discord/org/webrtc/GlGenericDrawer$ShaderType;->YUV:Lcom/discord/org/webrtc/GlGenericDrawer$ShaderType;

    if-ne v1, v5, :cond_2

    const-string/jumbo v1, "y_tex"

    .line 235
    invoke-virtual {v2, v1}, Lcom/discord/org/webrtc/GlShader;->getUniformLocation(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1, v4}, Landroid/opengl/GLES20;->glUniform1i(II)V

    const-string/jumbo v1, "u_tex"

    .line 236
    invoke-virtual {v2, v1}, Lcom/discord/org/webrtc/GlShader;->getUniformLocation(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1, v3}, Landroid/opengl/GLES20;->glUniform1i(II)V

    const-string/jumbo v1, "v_tex"

    .line 237
    invoke-virtual {v2, v1}, Lcom/discord/org/webrtc/GlShader;->getUniformLocation(Ljava/lang/String;)I

    move-result v1

    const/4 v5, 0x2

    invoke-static {v1, v5}, Landroid/opengl/GLES20;->glUniform1i(II)V

    goto :goto_0

    :cond_2
    const-string/jumbo v1, "tex"

    .line 239
    invoke-virtual {v2, v1}, Lcom/discord/org/webrtc/GlShader;->getUniformLocation(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1, v4}, Landroid/opengl/GLES20;->glUniform1i(II)V

    :goto_0
    const-string v1, "Create shader"

    .line 242
    invoke-static {v1}, Lcom/discord/org/webrtc/GlUtil;->checkNoGLES2Error(Ljava/lang/String;)V

    .line 243
    iget-object v1, v0, Lcom/discord/org/webrtc/GlGenericDrawer;->shaderCallbacks:Lcom/discord/org/webrtc/GlGenericDrawer$ShaderCallbacks;

    invoke-interface {v1, v2}, Lcom/discord/org/webrtc/GlGenericDrawer$ShaderCallbacks;->onNewShader(Lcom/discord/org/webrtc/GlShader;)V

    const-string/jumbo v1, "tex_mat"

    .line 244
    invoke-virtual {v2, v1}, Lcom/discord/org/webrtc/GlShader;->getUniformLocation(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/discord/org/webrtc/GlGenericDrawer;->texMatrixLocation:I

    const-string v1, "in_pos"

    .line 245
    invoke-virtual {v2, v1}, Lcom/discord/org/webrtc/GlShader;->getAttribLocation(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/discord/org/webrtc/GlGenericDrawer;->inPosLocation:I

    const-string v1, "in_tc"

    .line 246
    invoke-virtual {v2, v1}, Lcom/discord/org/webrtc/GlShader;->getAttribLocation(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/discord/org/webrtc/GlGenericDrawer;->inTcLocation:I

    move-object v6, v2

    .line 249
    :goto_1
    invoke-virtual {v6}, Lcom/discord/org/webrtc/GlShader;->useProgram()V

    .line 252
    iget v1, v0, Lcom/discord/org/webrtc/GlGenericDrawer;->inPosLocation:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 253
    iget v7, v0, Lcom/discord/org/webrtc/GlGenericDrawer;->inPosLocation:I

    const/4 v8, 0x2

    const/16 v9, 0x1406

    const/4 v10, 0x0

    const/4 v11, 0x0

    sget-object v12, Lcom/discord/org/webrtc/GlGenericDrawer;->FULL_RECTANGLE_BUFFER:Ljava/nio/FloatBuffer;

    invoke-static/range {v7 .. v12}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 258
    iget v1, v0, Lcom/discord/org/webrtc/GlGenericDrawer;->inTcLocation:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 259
    iget v7, v0, Lcom/discord/org/webrtc/GlGenericDrawer;->inTcLocation:I

    sget-object v12, Lcom/discord/org/webrtc/GlGenericDrawer;->FULL_RECTANGLE_TEXTURE_BUFFER:Ljava/nio/FloatBuffer;

    invoke-static/range {v7 .. v12}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 264
    iget v1, v0, Lcom/discord/org/webrtc/GlGenericDrawer;->texMatrixLocation:I

    move-object v2, p2

    invoke-static {v1, v3, v4, p2, v4}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 268
    iget-object v5, v0, Lcom/discord/org/webrtc/GlGenericDrawer;->shaderCallbacks:Lcom/discord/org/webrtc/GlGenericDrawer$ShaderCallbacks;

    move-object v7, p2

    move/from16 v8, p3

    move/from16 v9, p4

    move/from16 v10, p5

    move/from16 v11, p6

    invoke-interface/range {v5 .. v11}, Lcom/discord/org/webrtc/GlGenericDrawer$ShaderCallbacks;->onPrepareShader(Lcom/discord/org/webrtc/GlShader;[FIIII)V

    const-string v1, "Prepare shader"

    .line 270
    invoke-static {v1}, Lcom/discord/org/webrtc/GlUtil;->checkNoGLES2Error(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method createShader(Lcom/discord/org/webrtc/GlGenericDrawer$ShaderType;)Lcom/discord/org/webrtc/GlShader;
    .locals 3

    .line 148
    new-instance v0, Lcom/discord/org/webrtc/GlShader;

    iget-object v1, p0, Lcom/discord/org/webrtc/GlGenericDrawer;->vertexShader:Ljava/lang/String;

    iget-object v2, p0, Lcom/discord/org/webrtc/GlGenericDrawer;->genericFragmentSource:Ljava/lang/String;

    .line 149
    invoke-static {v2, p1}, Lcom/discord/org/webrtc/GlGenericDrawer;->createFragmentShaderString(Ljava/lang/String;Lcom/discord/org/webrtc/GlGenericDrawer$ShaderType;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/discord/org/webrtc/GlShader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public drawOes(I[FIIIIII)V
    .locals 7

    .line 159
    sget-object v1, Lcom/discord/org/webrtc/GlGenericDrawer$ShaderType;->OES:Lcom/discord/org/webrtc/GlGenericDrawer$ShaderType;

    move-object v0, p0

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p7

    move v6, p8

    invoke-direct/range {v0 .. v6}, Lcom/discord/org/webrtc/GlGenericDrawer;->prepareShader(Lcom/discord/org/webrtc/GlGenericDrawer$ShaderType;[FIIII)V

    const p2, 0x84c0

    .line 162
    invoke-static {p2}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    const p2, 0x8d65

    .line 163
    invoke-static {p2, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 165
    invoke-static {p5, p6, p7, p8}, Landroid/opengl/GLES20;->glViewport(IIII)V

    const/4 p1, 0x4

    const/4 p3, 0x5

    const/4 p4, 0x0

    .line 166
    invoke-static {p3, p4, p1}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 168
    invoke-static {p2, p4}, Landroid/opengl/GLES20;->glBindTexture(II)V

    return-void
.end method

.method public drawRgb(I[FIIIIII)V
    .locals 7

    .line 178
    sget-object v1, Lcom/discord/org/webrtc/GlGenericDrawer$ShaderType;->RGB:Lcom/discord/org/webrtc/GlGenericDrawer$ShaderType;

    move-object v0, p0

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p7

    move v6, p8

    invoke-direct/range {v0 .. v6}, Lcom/discord/org/webrtc/GlGenericDrawer;->prepareShader(Lcom/discord/org/webrtc/GlGenericDrawer$ShaderType;[FIIII)V

    const p2, 0x84c0

    .line 181
    invoke-static {p2}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    const/16 p2, 0xde1

    .line 182
    invoke-static {p2, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 184
    invoke-static {p5, p6, p7, p8}, Landroid/opengl/GLES20;->glViewport(IIII)V

    const/4 p1, 0x4

    const/4 p3, 0x5

    const/4 p4, 0x0

    .line 185
    invoke-static {p3, p4, p1}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 187
    invoke-static {p2, p4}, Landroid/opengl/GLES20;->glBindTexture(II)V

    return-void
.end method

.method public drawYuv([I[FIIIIII)V
    .locals 7

    .line 197
    sget-object v1, Lcom/discord/org/webrtc/GlGenericDrawer$ShaderType;->YUV:Lcom/discord/org/webrtc/GlGenericDrawer$ShaderType;

    move-object v0, p0

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p7

    move v6, p8

    invoke-direct/range {v0 .. v6}, Lcom/discord/org/webrtc/GlGenericDrawer;->prepareShader(Lcom/discord/org/webrtc/GlGenericDrawer$ShaderType;[FIIII)V

    const/4 p2, 0x0

    move p3, p2

    :goto_0
    const/16 p4, 0xde1

    const v0, 0x84c0

    const/4 v1, 0x3

    if-ge p3, v1, :cond_0

    add-int/2addr v0, p3

    .line 201
    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 202
    aget v0, p1, p3

    invoke-static {p4, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    .line 205
    :cond_0
    invoke-static {p5, p6, p7, p8}, Landroid/opengl/GLES20;->glViewport(IIII)V

    const/4 p1, 0x5

    const/4 p3, 0x4

    .line 206
    invoke-static {p1, p2, p3}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    move p1, p2

    :goto_1
    if-ge p1, v1, :cond_1

    add-int p3, p1, v0

    .line 209
    invoke-static {p3}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 210
    invoke-static {p4, p2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public release()V
    .locals 1

    .line 278
    iget-object v0, p0, Lcom/discord/org/webrtc/GlGenericDrawer;->currentShader:Lcom/discord/org/webrtc/GlShader;

    if-eqz v0, :cond_0

    .line 279
    invoke-virtual {v0}, Lcom/discord/org/webrtc/GlShader;->release()V

    const/4 v0, 0x0

    .line 280
    iput-object v0, p0, Lcom/discord/org/webrtc/GlGenericDrawer;->currentShader:Lcom/discord/org/webrtc/GlShader;

    .line 281
    iput-object v0, p0, Lcom/discord/org/webrtc/GlGenericDrawer;->currentShaderType:Lcom/discord/org/webrtc/GlGenericDrawer$ShaderType;

    :cond_0
    return-void
.end method
