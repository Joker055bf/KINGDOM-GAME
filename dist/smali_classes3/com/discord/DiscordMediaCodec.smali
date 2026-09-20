.class public Lcom/discord/DiscordMediaCodec;
.super Ljava/lang/Object;
.source "DiscordMediaCodec.java"


# static fields
.field static final KNOWN_BAD_ENCODER_MODELS:[Ljava/lang/String;

.field static final KNOWN_HARDWARE_ENCODER_PREFIXES:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const-string v0, "omx.qcom."

    const-string v1, "omx.exynos."

    const-string v2, "omx.intel."

    const-string v3, "omx.nvidia."

    const-string v4, "omx.mtk."

    const-string v5, "omx.hisi."

    const-string v6, "omx.img.topaz."

    .line 9
    filled-new-array/range {v0 .. v6}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/discord/DiscordMediaCodec;->KNOWN_HARDWARE_ENCODER_PREFIXES:[Ljava/lang/String;

    const-string v0, "nexus 4"

    const-string v1, "nexus 7"

    const-string v2, "samsung-sgh-i337"

    .line 25
    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/discord/DiscordMediaCodec;->KNOWN_BAD_ENCODER_MODELS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static isHardwareAccelerated_API29(Landroid/media/MediaCodecInfo;)Z
    .locals 0

    .line 55
    invoke-virtual {p0}, Landroid/media/MediaCodecInfo;->isHardwareAccelerated()Z

    move-result p0

    return p0
.end method

.method public static supportsHardwareEncoding(Landroid/media/MediaCodecInfo;)Z
    .locals 6

    .line 32
    sget-object v0, Lcom/discord/DiscordMediaCodec;->KNOWN_BAD_ENCODER_MODELS:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 33
    sget-object v5, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    return v2

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 38
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_2

    .line 39
    invoke-static {p0}, Lcom/discord/DiscordMediaCodec;->isHardwareAccelerated_API29(Landroid/media/MediaCodecInfo;)Z

    move-result p0

    return p0

    .line 42
    :cond_2
    invoke-virtual {p0}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object p0

    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    .line 44
    sget-object v0, Lcom/discord/DiscordMediaCodec;->KNOWN_HARDWARE_ENCODER_PREFIXES:[Ljava/lang/String;

    array-length v1, v0

    move v3, v2

    :goto_1
    if-ge v3, v1, :cond_4

    aget-object v4, v0, v3

    .line 45
    invoke-virtual {p0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 p0, 0x1

    return p0

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    return v2
.end method
