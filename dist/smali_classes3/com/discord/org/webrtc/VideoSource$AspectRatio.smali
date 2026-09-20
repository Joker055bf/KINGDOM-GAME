.class public Lcom/discord/org/webrtc/VideoSource$AspectRatio;
.super Ljava/lang/Object;
.source "VideoSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/discord/org/webrtc/VideoSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AspectRatio"
.end annotation


# static fields
.field public static final UNDEFINED:Lcom/discord/org/webrtc/VideoSource$AspectRatio;


# instance fields
.field public final height:I

.field public final width:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 21
    new-instance v0, Lcom/discord/org/webrtc/VideoSource$AspectRatio;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lcom/discord/org/webrtc/VideoSource$AspectRatio;-><init>(II)V

    sput-object v0, Lcom/discord/org/webrtc/VideoSource$AspectRatio;->UNDEFINED:Lcom/discord/org/webrtc/VideoSource$AspectRatio;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput p1, p0, Lcom/discord/org/webrtc/VideoSource$AspectRatio;->width:I

    .line 28
    iput p2, p0, Lcom/discord/org/webrtc/VideoSource$AspectRatio;->height:I

    return-void
.end method
