.class final Lcom/applovin/exoplayer2/m/a/g;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:[Ljava/lang/String;

.field private static final b:[Ljava/lang/String;

.field private static final c:[F

.field private static final d:[F

.field private static final e:[F

.field private static final f:[F

.field private static final g:[F


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const-string/jumbo v0, "uniform mat4 uMvpMatrix;"

    const-string/jumbo v1, "uniform mat3 uTexMatrix;"

    const-string v2, "attribute vec4 aPosition;"

    const-string v3, "attribute vec2 aTexCoords;"

    const-string/jumbo v4, "varying vec2 vTexCoords;"

    const-string/jumbo v5, "void main() {"

    const-string v6, "  gl_Position = uMvpMatrix * aPosition;"

    const-string v7, "  vTexCoords = (uTexMatrix * vec3(aTexCoords, 1)).xy;"

    const-string/jumbo v8, "}"

    .line 47
    filled-new-array/range {v0 .. v8}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/applovin/exoplayer2/m/a/g;->a:[Ljava/lang/String;

    const-string v1, "#extension GL_OES_EGL_image_external : require"

    const-string v2, "precision mediump float;"

    const-string/jumbo v3, "uniform samplerExternalOES uTexture;"

    const-string/jumbo v4, "varying vec2 vTexCoords;"

    const-string/jumbo v5, "void main() {"

    const-string v6, "  gl_FragColor = texture2D(uTexture, vTexCoords);"

    const-string/jumbo v7, "}"

    .line 61
    filled-new-array/range {v1 .. v7}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/applovin/exoplayer2/m/a/g;->b:[Ljava/lang/String;

    const/16 v0, 0x9

    new-array v1, v0, [F

    .line 76
    fill-array-data v1, :array_0

    sput-object v1, Lcom/applovin/exoplayer2/m/a/g;->c:[F

    new-array v1, v0, [F

    .line 79
    fill-array-data v1, :array_1

    sput-object v1, Lcom/applovin/exoplayer2/m/a/g;->d:[F

    new-array v1, v0, [F

    .line 82
    fill-array-data v1, :array_2

    sput-object v1, Lcom/applovin/exoplayer2/m/a/g;->e:[F

    new-array v1, v0, [F

    .line 85
    fill-array-data v1, :array_3

    sput-object v1, Lcom/applovin/exoplayer2/m/a/g;->f:[F

    new-array v0, v0, [F

    .line 88
    fill-array-data v0, :array_4

    sput-object v0, Lcom/applovin/exoplayer2/m/a/g;->g:[F

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        -0x40800000    # -1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        -0x41000000    # -0.5f
        0x0
        0x0
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        -0x41000000    # -0.5f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_3
    .array-data 4
        0x3f000000    # 0.5f
        0x0
        0x0
        0x0
        -0x40800000    # -1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_4
    .array-data 4
        0x3f000000    # 0.5f
        0x0
        0x0
        0x0
        -0x40800000    # -1.0f
        0x0
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public static a(Lcom/applovin/exoplayer2/m/a/e;)Z
    .locals 4

    .line 38
    iget-object v0, p0, Lcom/applovin/exoplayer2/m/a/e;->a:Lcom/applovin/exoplayer2/m/a/e$a;

    .line 39
    iget-object p0, p0, Lcom/applovin/exoplayer2/m/a/e;->b:Lcom/applovin/exoplayer2/m/a/e$a;

    .line 40
    invoke-virtual {v0}, Lcom/applovin/exoplayer2/m/a/e$a;->a()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    .line 41
    invoke-virtual {v0, v2}, Lcom/applovin/exoplayer2/m/a/e$a;->a(I)Lcom/applovin/exoplayer2/m/a/e$b;

    move-result-object v0

    iget v0, v0, Lcom/applovin/exoplayer2/m/a/e$b;->a:I

    if-nez v0, :cond_0

    .line 42
    invoke-virtual {p0}, Lcom/applovin/exoplayer2/m/a/e$a;->a()I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 43
    invoke-virtual {p0, v2}, Lcom/applovin/exoplayer2/m/a/e$a;->a(I)Lcom/applovin/exoplayer2/m/a/e$b;

    move-result-object p0

    iget p0, p0, Lcom/applovin/exoplayer2/m/a/e$b;->a:I

    if-nez p0, :cond_0

    move v2, v3

    :cond_0
    return v2
.end method
