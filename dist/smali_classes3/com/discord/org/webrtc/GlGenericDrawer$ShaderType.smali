.class public final enum Lcom/discord/org/webrtc/GlGenericDrawer$ShaderType;
.super Ljava/lang/Enum;
.source "GlGenericDrawer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/discord/org/webrtc/GlGenericDrawer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ShaderType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/discord/org/webrtc/GlGenericDrawer$ShaderType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/discord/org/webrtc/GlGenericDrawer$ShaderType;

.field public static final enum OES:Lcom/discord/org/webrtc/GlGenericDrawer$ShaderType;

.field public static final enum RGB:Lcom/discord/org/webrtc/GlGenericDrawer$ShaderType;

.field public static final enum YUV:Lcom/discord/org/webrtc/GlGenericDrawer$ShaderType;


# direct methods
.method private static synthetic $values()[Lcom/discord/org/webrtc/GlGenericDrawer$ShaderType;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/discord/org/webrtc/GlGenericDrawer$ShaderType;

    const/4 v1, 0x0

    .line 39
    sget-object v2, Lcom/discord/org/webrtc/GlGenericDrawer$ShaderType;->OES:Lcom/discord/org/webrtc/GlGenericDrawer$ShaderType;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/discord/org/webrtc/GlGenericDrawer$ShaderType;->RGB:Lcom/discord/org/webrtc/GlGenericDrawer$ShaderType;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/discord/org/webrtc/GlGenericDrawer$ShaderType;->YUV:Lcom/discord/org/webrtc/GlGenericDrawer$ShaderType;

    aput-object v2, v0, v1

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 39
    new-instance v0, Lcom/discord/org/webrtc/GlGenericDrawer$ShaderType;

    const-string v1, "OES"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/discord/org/webrtc/GlGenericDrawer$ShaderType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/discord/org/webrtc/GlGenericDrawer$ShaderType;->OES:Lcom/discord/org/webrtc/GlGenericDrawer$ShaderType;

    new-instance v0, Lcom/discord/org/webrtc/GlGenericDrawer$ShaderType;

    const-string v1, "RGB"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/discord/org/webrtc/GlGenericDrawer$ShaderType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/discord/org/webrtc/GlGenericDrawer$ShaderType;->RGB:Lcom/discord/org/webrtc/GlGenericDrawer$ShaderType;

    new-instance v0, Lcom/discord/org/webrtc/GlGenericDrawer$ShaderType;

    const-string v1, "YUV"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/discord/org/webrtc/GlGenericDrawer$ShaderType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/discord/org/webrtc/GlGenericDrawer$ShaderType;->YUV:Lcom/discord/org/webrtc/GlGenericDrawer$ShaderType;

    invoke-static {}, Lcom/discord/org/webrtc/GlGenericDrawer$ShaderType;->$values()[Lcom/discord/org/webrtc/GlGenericDrawer$ShaderType;

    move-result-object v0

    sput-object v0, Lcom/discord/org/webrtc/GlGenericDrawer$ShaderType;->$VALUES:[Lcom/discord/org/webrtc/GlGenericDrawer$ShaderType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 39
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/discord/org/webrtc/GlGenericDrawer$ShaderType;
    .locals 1

    .line 39
    const-class v0, Lcom/discord/org/webrtc/GlGenericDrawer$ShaderType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/discord/org/webrtc/GlGenericDrawer$ShaderType;

    return-object p0
.end method

.method public static values()[Lcom/discord/org/webrtc/GlGenericDrawer$ShaderType;
    .locals 1

    .line 39
    sget-object v0, Lcom/discord/org/webrtc/GlGenericDrawer$ShaderType;->$VALUES:[Lcom/discord/org/webrtc/GlGenericDrawer$ShaderType;

    invoke-virtual {v0}, [Lcom/discord/org/webrtc/GlGenericDrawer$ShaderType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/discord/org/webrtc/GlGenericDrawer$ShaderType;

    return-object v0
.end method
