.class public final enum Lcom/t4f/anim/source/MediaSource$SourceType;
.super Ljava/lang/Enum;
.source "MediaSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/t4f/anim/source/MediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SourceType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/t4f/anim/source/MediaSource$SourceType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/t4f/anim/source/MediaSource$SourceType;

.field public static final enum ASSET:Lcom/t4f/anim/source/MediaSource$SourceType;

.field public static final enum EXTERNAL_FILES:Lcom/t4f/anim/source/MediaSource$SourceType;

.field public static final enum FILE:Lcom/t4f/anim/source/MediaSource$SourceType;

.field public static final enum RAW:Lcom/t4f/anim/source/MediaSource$SourceType;


# direct methods
.method private static synthetic $values()[Lcom/t4f/anim/source/MediaSource$SourceType;
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/t4f/anim/source/MediaSource$SourceType;

    const/4 v1, 0x0

    .line 20
    sget-object v2, Lcom/t4f/anim/source/MediaSource$SourceType;->ASSET:Lcom/t4f/anim/source/MediaSource$SourceType;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/t4f/anim/source/MediaSource$SourceType;->RAW:Lcom/t4f/anim/source/MediaSource$SourceType;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/t4f/anim/source/MediaSource$SourceType;->FILE:Lcom/t4f/anim/source/MediaSource$SourceType;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/t4f/anim/source/MediaSource$SourceType;->EXTERNAL_FILES:Lcom/t4f/anim/source/MediaSource$SourceType;

    aput-object v2, v0, v1

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 21
    new-instance v0, Lcom/t4f/anim/source/MediaSource$SourceType;

    const-string v1, "ASSET"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/t4f/anim/source/MediaSource$SourceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/t4f/anim/source/MediaSource$SourceType;->ASSET:Lcom/t4f/anim/source/MediaSource$SourceType;

    .line 22
    new-instance v0, Lcom/t4f/anim/source/MediaSource$SourceType;

    const-string v1, "RAW"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/t4f/anim/source/MediaSource$SourceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/t4f/anim/source/MediaSource$SourceType;->RAW:Lcom/t4f/anim/source/MediaSource$SourceType;

    .line 23
    new-instance v0, Lcom/t4f/anim/source/MediaSource$SourceType;

    const-string v1, "FILE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/t4f/anim/source/MediaSource$SourceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/t4f/anim/source/MediaSource$SourceType;->FILE:Lcom/t4f/anim/source/MediaSource$SourceType;

    .line 24
    new-instance v0, Lcom/t4f/anim/source/MediaSource$SourceType;

    const-string v1, "EXTERNAL_FILES"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/t4f/anim/source/MediaSource$SourceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/t4f/anim/source/MediaSource$SourceType;->EXTERNAL_FILES:Lcom/t4f/anim/source/MediaSource$SourceType;

    .line 20
    invoke-static {}, Lcom/t4f/anim/source/MediaSource$SourceType;->$values()[Lcom/t4f/anim/source/MediaSource$SourceType;

    move-result-object v0

    sput-object v0, Lcom/t4f/anim/source/MediaSource$SourceType;->$VALUES:[Lcom/t4f/anim/source/MediaSource$SourceType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 20
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/t4f/anim/source/MediaSource$SourceType;
    .locals 1

    .line 20
    const-class v0, Lcom/t4f/anim/source/MediaSource$SourceType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/t4f/anim/source/MediaSource$SourceType;

    return-object p0
.end method

.method public static values()[Lcom/t4f/anim/source/MediaSource$SourceType;
    .locals 1

    .line 20
    sget-object v0, Lcom/t4f/anim/source/MediaSource$SourceType;->$VALUES:[Lcom/t4f/anim/source/MediaSource$SourceType;

    invoke-virtual {v0}, [Lcom/t4f/anim/source/MediaSource$SourceType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/t4f/anim/source/MediaSource$SourceType;

    return-object v0
.end method
